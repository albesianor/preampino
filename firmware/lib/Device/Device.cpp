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

// helper function to write to digipot via SPI
void digitalPotWrite(int address, int value) {
  // take the SS pin low to select the chip:
  digitalWrite(DP_SLAVE_SELECT, LOW);
  //  send in the address and value via SPI:
  SPI.transfer(address);
  SPI.transfer(value);
  // take the SS pin high to de-select the chip:
  digitalWrite(DP_SLAVE_SELECT, HIGH);
}

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

void Device::setFuzz(boolean value) {
  digitalWrite(oFUZZ, value);
  _fuzz = value;
}

void Device::setDist(boolean value) {
  digitalWrite(oDIST, value);
  _dist = value;
}
