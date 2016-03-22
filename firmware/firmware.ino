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
#include <EnableInterrupt.h>
#include <LiquidCrystal.h>
#include <EEPROM.h>
#include <SPI.h>

#include "Byte2Bool.h"


// ------------------------------------------------------------------------
// data structures
struct State
{
  // EEPROM position
  byte address;

  // "knobs state"
  boolean fuzz;
  byte fuzzGain;
  boolean dist;
  boolean clipUp;
  boolean clipDown;
  byte distGain;
  boolean boost;
  byte boostVolume;
  byte vc1Gain;
  boolean vc2;
  byte vc2Gain;
  byte vcVolume;
};


// ------------------------------------------------------------------------
// variable declarations

// status variable
volatile State status;

// Byte2Bool variable (see Byte2Bool.h)
Byte2Bool converter(6);


// ------------------------------------------------------------------------
// interrupt handlers
// this is for save/cancel/up/down interrupts
void util_h()
{
  switch(arduinoInterruptedPin) {
    case IN_save:
      break;
    case IN_cancel:
      break;
    case IN_up:
      status.address++;
      break;
    case IN_down:
      status.address--;
  }
}

// the followings are for external interrupts
void fuzz_h()
{
  status.fuzz = !status.fuzz;
}

void dist_h()
{
  status.dist = !status.dist;
}

void clipUp_h()
{
  status.clipUp = !status.clipUp;
}

void clipDown_h()
{
  status.clipDown = !status.clipDown;
}

void boost_h()
{
  status.boost = !status.vc2;
}

void vc2_h()
{
  status.vc2 = !status.vc2;
}


// ------------------------------------------------------------------------
// setup function
