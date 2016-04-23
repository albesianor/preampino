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
#include <utils.h>

class Device
{
public:
  Device();

  void setFuzz(boolean value);
  void setFuzzGain(byte value);
  void setDist(boolean value);
  void setClipUp(boolean value);
  void setClipDown(boolean value);
  void setDistGain(byte value);
  void setBoost(boolean value);
  void setBoostVolume(byte value);
  void setVC1Gain(byte value);
  void setVC2(boolean value);
  void setVC2Gain(byte value);
  void setVCVolume(byte value);

  // NOTE: the address is written in EEPROM memory LASTPATCH only when save() or load() methods are called
  void setAddress(byte newaddress) { _address = newaddress % NPATCHES; }

  boolean getFuzz()     const  { return _fuzz;         }
  byte getFuzzGain()    const  { return _fuzz_gain;    }
  boolean getDist()     const  { return _dist;         }
  boolean getClipUp()   const  { return _clip_up;      }
  boolean getClipDown() const  { return _clip_down;    }
  byte getDistGain()    const  { return _dist_gain;    }
  boolean getBoost()    const  { return _boost;        }
  byte getBoostVolume() const  { return _boost_volume; }
  byte getVC1Gain()     const  { return _vc1_gain;     }
  boolean getVC2()      const  { return _vc2;          }
  byte getVC2Gain()     const  { return _vc2_gain;     }
  byte getVCVolume()    const  { return _vc_volume;    }
  int getAddress()      const  { return _address;      }

  void save();
  void load();

private:
  byte _address; // address of the patch

  byte _fuzz_gain, _dist_gain, _boost_volume, _vc1_gain, _vc2_gain, _vc_volume;
  boolean _fuzz, _dist, _clip_up, _clip_down, _boost, _vc2;
};

#endif
