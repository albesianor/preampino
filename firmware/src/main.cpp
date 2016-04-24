/*
PREAMPino firmware
Roberto Albesiano - roberto.albesiano@gmail.com

The idea is that the board is always in the state used to be called "manual mode"
At the same time it listens at the Serial2 port (Serial1 is occupied by an External Interrupt) for MIDI signals:
if one of those arrives, the board performs the operation (that is, it changes the patch).
As for the "slave mode", it hasn't been designed yet. The idea is that the board could listen to Serial signals as
well: if there is a Signal it goes into "slave mode" and checks whether the signal is a computer connection or not.
*/


// ------------------------------------------------------------------------

// Facility to determine which pin was the last interrupted (EnableInterrupt library)
#define EI_ARDUINO_INTERRUPTED_PIN

// Includes
#include <Arduino.h>
#include <LiquidCrystal.h>
#include <MIDI.h>

#include <EnableInterrupt.h>

#include <settings.h>
#include <Device.h>

// variables definition
Device d;
uint32_t last_interrupt_time = 0;
byte analogValue = 0;

MIDI_CREATE_INSTANCE(HardwareSerial, MIDI_INPUT_PORT, MIDI);

// ------------------------------------------------------------------------
// interrupt handlers
// these are for save/cancel/up/down interrupts (pin change interrupts)

void up_h()
{
  uint32_t interrupt_time = millis();

  if (interrupt_time - last_interrupt_time > DEBOUNCE_DELAY) {
        d.setAddress(d.getAddress()+1);
        d.load();
  }

  last_interrupt_time = interrupt_time;
}

void down_h()
{
  uint32_t interrupt_time = millis();

  if (interrupt_time - last_interrupt_time > DEBOUNCE_DELAY) {
        d.setAddress(d.getAddress()-1);
        d.load();
  }

  last_interrupt_time = interrupt_time;
}

void save_h()
{
  uint32_t interrupt_time = millis();

  // TODO

  last_interrupt_time = interrupt_time;
}

void cancel_h()
{
  uint32_t interrupt_time = millis();

  // TODO

  last_interrupt_time = interrupt_time;
}

// the followings are for external interrupts
void fuzz_h()
{
  uint32_t interrupt_time = millis();

  if (interrupt_time - last_interrupt_time > DEBOUNCE_DELAY)
    d.setFuzz(!d.getFuzz());

  last_interrupt_time = interrupt_time;
}

void dist_h()
{
  uint32_t interrupt_time = millis();

  if (interrupt_time - last_interrupt_time > DEBOUNCE_DELAY)
    d.setDist(!d.getDist());

  last_interrupt_time = interrupt_time;
}

void clipUp_h()
{
  uint32_t interrupt_time = millis();

  if (interrupt_time - last_interrupt_time > DEBOUNCE_DELAY)
    d.setClipUp(!d.getClipUp());

  last_interrupt_time = interrupt_time;
}

void clipDown_h()
{
  uint32_t interrupt_time = millis();

  if (interrupt_time - last_interrupt_time > DEBOUNCE_DELAY)
    d.setClipDown(!d.getClipDown());

  last_interrupt_time = interrupt_time;
}

void boost_h()
{
  uint32_t interrupt_time = millis();

  if (interrupt_time - last_interrupt_time > DEBOUNCE_DELAY)
    d.setBoost(!d.getBoost());

  last_interrupt_time = interrupt_time;
}

void vc2_h()
{
  uint32_t interrupt_time = millis();

  if (interrupt_time - last_interrupt_time > DEBOUNCE_DELAY)
    d.setVC2(!d.getVC2());

  last_interrupt_time = interrupt_time;
}

// ------------------------------------------------------------------------
// MIDI handlers
void programChange_h(byte channel, byte number)
{
  d.setAddress(number);
  d.load(); // calls load function with address number
}

// ------------------------------------------------------------------------
// start and stop interrupt facilities
void startInterrupts()
{
  enableInterrupt(iFUZZ, fuzz_h, LOW);
  enableInterrupt(iDIST, dist_h, LOW);
  enableInterrupt(iCLIP_UP, clipUp_h, LOW);
  enableInterrupt(iCLIP_DOWN, clipDown_h, LOW);
  enableInterrupt(iBOOST, boost_h, LOW);
  enableInterrupt(iVC2, vc2_h, LOW);
  enableInterrupt(iUP, up_h, CHANGE);
  enableInterrupt(iDOWN, down_h, CHANGE);
  enableInterrupt(iSAVE, save_h, CHANGE);
  enableInterrupt(iCANCEL, cancel_h, CHANGE);
}

void stopInterrupts()
{
  disableInterrupt(iFUZZ);
  disableInterrupt(iDIST);
  disableInterrupt(iCLIP_UP);
  disableInterrupt(iCLIP_DOWN);
  disableInterrupt(iBOOST);
  disableInterrupt(iVC2);
  disableInterrupt(iUP);
  disableInterrupt(iDOWN);
  disableInterrupt(iSAVE);
  disableInterrupt(iCANCEL);
}

// ------------------------------------------------------------------------
// setup
void setup()
{
  // register input pins
  pinMode(iFUZZ, INPUT_PULLUP);
  pinMode(iDIST, INPUT_PULLUP);
  pinMode(iCLIP_UP, INPUT_PULLUP);
  pinMode(iCLIP_DOWN, INPUT_PULLUP);
  pinMode(iBOOST, INPUT_PULLUP);
  pinMode(iVC2, INPUT_PULLUP);
  pinMode(iUP, INPUT_PULLUP);
  pinMode(iDOWN, INPUT_PULLUP);
  pinMode(iSAVE, INPUT_PULLUP);
  pinMode(iCANCEL, INPUT_PULLUP);

  // start interrupt callback functions
  startInterrupts();

  // MIDI
  MIDI.setHandleProgramChange(programChange_h);
  MIDI.begin(MIDI_CHANNEL_OMNI);

}

// ------------------------------------------------------------------------
// loop
void loop()
{
  // fuzz gain
  analogValue = map(analogRead(iFUZZ_GAIN), 0, 1023, 0, 255);
  if(analogValue != d.getFuzzGain()) d.setFuzzGain(analogValue);

  // dist gain
  analogValue = map(analogRead(iDIST_GAIN), 0, 1023, 0, 255);
  if(analogValue != d.getDistGain()) d.setDistGain(analogValue);

  // boost volume
  analogValue = map(analogRead(iBOOST_VOLUME), 0, 1023, 0, 255);
  if(analogValue != d.getBoostVolume()) d.setBoostVolume(analogValue);

  // first valvecaster gain
  analogValue = map(analogRead(iVC1_GAIN), 0, 1023, 0, 255);
  if(analogValue != d.getVC1Gain()) d.setVC1Gain(analogValue);

  // second valvecaster gain
  analogValue = map(analogRead(iVC2_GAIN), 0, 1023, 0, 255);
  if(analogValue != d.getVC2Gain()) d.setVC2Gain(analogValue);

  // valvecaster overall volume
  analogValue = map(analogRead(iVC_VOLUME), 0, 1023, 0, 255);
  if(analogValue != d.getVCVolume()) d.setVCVolume(analogValue);

  // delay to avoid microcontroller overclocking
  delay(100);
}
