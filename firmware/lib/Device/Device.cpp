/*
PREAMPino firmware - Device.cpp
Roberto Albesiano - roberto.albesiano@gmail.com

Device class implementation
This class represents the output: it changes the behaviour of the analog part commuting switches and setting
digipots values, keeps track of the status, saves and loads it to and from EEPROM
*/

#include "Device.h"

#include <Arduino.h>
#include <EEPROM.h>
#include <SPI.h>

#include <settings.h>
#include <utils.h>

// ---------------------------------------------------------
// Constructor

Device::Device() {
  pinMode(DP_SLAVE_SELECT, OUTPUT);
  SPI.begin();

  pinMode(oFUZZ, OUTPUT);
  pinMode(oDIST, OUTPUT);
  pinMode(oCLIP_UP, OUTPUT);
  pinMode(oCLIP_DOWN, OUTPUT);
  pinMode(oBOOST, OUTPUT);
  pinMode(oVC2, OUTPUT);

  _address = EEPROM.read(LASTPATCH);
  load();
}

// ---------------------------------------------------------
// set functions

void Device::setFuzz(boolean value) {
  digitalWrite(oFUZZ, value);
  _fuzz = value;
  return;
}

void Device::setDist(boolean value) {
  digitalWrite(oDIST, value);
  _dist = value;
  return;
}

void Device::setClipUp(boolean value) {
  digitalWrite(oCLIP_UP, value);
  _clip_up = value;
  return;
}

void Device::setClipDown(boolean value) {
  digitalWrite(oCLIP_DOWN, value);
  _clip_down = value;
  return;
}

void Device::setBoost(boolean value) {
  digitalWrite(oBOOST, value);
  _boost = value;
  return;
}

void Device::setVC2(boolean value) {
  digitalWrite(oVC2, value);
  _vc2 = value;
  return;
}

void Device::setFuzzGain(byte value) {
  digitalPotWrite(oFUZZ_GAIN, value);
  _fuzz_gain = value;
  return;
}

void Device::setDistGain(byte value) {
  digitalPotWrite(oDIST_GAIN, value);
  _dist_gain = value;
  return;
}

void Device::setBoostVolume(byte value) {
  digitalPotWrite(oBOOST_VOLUME, value);
  _boost_volume = value;
  return;
}

void Device::setVC1Gain(byte value) {
  digitalPotWrite(oVC1_GAIN, value);
  _vc1_gain = value;
  return;
}

void Device::setVC2Gain(byte value) {
  digitalPotWrite(oVC2_GAIN, value);
  _vc2_gain = value;
  return;
}

void Device::setVCVolume(byte value) {
  digitalPotWrite(oVC_VOLUME, value);
  _vc_volume = value;
  return;
}

// ---------------------------------------------------------
// load() and save() functions
void Device::load() {

  int mem_index = _address*PATCHDIM;

  setFuzzGain(EEPROM.read(mem_index));
  setDistGain(EEPROM.read(mem_index+1));
  setBoostVolume(EEPROM.read(mem_index+2));
  setVC1Gain(EEPROM.read(mem_index+3));
  setVC2Gain(EEPROM.read(mem_index+4));
  setVCVolume(EEPROM.read(mem_index+5));

  boolean* boolarray = byte2bool(EEPROM.read(mem_index+6), 6);
  setFuzz(boolarray[0]);
  setDist(boolarray[1]);
  setClipUp(boolarray[2]);
  setClipDown(boolarray[3]);
  setBoost(boolarray[4]);
  setVC2(boolarray[5]);
  delete [] boolarray;

  EEPROM.write(LASTPATCH, _address);

  return;

}

void Device::save() {

  int mem_index = _address*PATCHDIM;

  EEPROM.write(mem_index, _fuzz_gain);
  EEPROM.write(mem_index+1, _dist_gain);
  EEPROM.write(mem_index+2, _boost_volume);
  EEPROM.write(mem_index+3, _vc1_gain);
  EEPROM.write(mem_index+4, _vc2_gain);
  EEPROM.write(mem_index+5, _vc_volume);

  boolean boolarray [6] = {_fuzz, _dist, _clip_up, _clip_down, _boost, _vc2};
  EEPROM.write(mem_index+6, bool2byte(boolarray, 6));

  EEPROM.write(LASTPATCH, _address);

  return;

}
