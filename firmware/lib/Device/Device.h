/*
PREAMPino firmware - Device.h
Roberto Albesiano - roberto.albesiano@gmail.com

Device class interface
This class represents the output: it changes the behaviour of the analog part commuting switches and setting
digipots values, keeps track of the status, saves and loads it to and from EEPROM
*/

#ifndef PREAMPINO_DEVICE_INTERFACE
#define PREAMPINO_DEVICE_INTERFACE

#include <Arduino.h>
#include <SPI.h>
#include <EEPROM.h>

#include <settings.h>

enum AnalogPar{ fuzz_gain, dist_gain, boost_vol, vc1_gain, vc2_gain, vc_vol };
enum DigitalPar{ fuzz, dist, clip_up, clip_down, boost, vc2 };

class Device
{
public:
  void setAnalog(AnalogPar type, byte value);
  void setDigital(DigitalPar type, boolean value);
  byte getAnalog(AnalogPar type);
  boolean getDigital(DigitalPar type);

  void save();
  void save(byte address);
  void load(byte address);

private:
  byte _address;

  byte _fuzz_gain, _dist_gain, _boost_vol, _vc1_gain, _vc2_gain, _vc_vol;
  boolean _fuzz, _dist, _clip_up, _clip_down, _boost, _vc2;
};

#endif
