/*
PREAMPino firmware - utils.h
Roberto Albesiano - roberto.albesiano@gmail.com

Utils
*/

#ifndef PREAMPINO_UTILS
#define PREAMPINO_UTILS

#include <Arduino.h>
#include <SPI.h>

#include <settings.h>

// ---------------------------------------------------------
// helper function to write to digipot via SPI
inline void digitalPotWrite(int address, int value) {
  // take the SS pin low to select the chip:
  digitalWrite(DP_SLAVE_SELECT, LOW);
  //  send in the address and value via SPI:
  SPI.transfer(address);
  SPI.transfer(value);
  // take the SS pin high to de-select the chip:
  digitalWrite(DP_SLAVE_SELECT, HIGH);
}

// ---------------------------------------------------------
// bool array to byte converter
inline int bool2byte(bool* input, int dim = 6) {

  unsigned int output = 0;

  // bitwise conversion (see http://http://playground.arduino.cc/Code/BitMath)
  for(int i = 0; i < dim; i++) {
    // if input[i] is true, toggles output i-th byte (actually,
    // as output is initially 0, it sets its i-th byte to true)
    if(input[i]) output = output ^ (1<<i);
  }

  return output;

}

// byte to bool array converter
inline bool* byte2bool(unsigned int input, int dim = 6) {

  bool* output = new bool[dim];

  // bitwise conversion (see http://http://playground.arduino.cc/Code/BitMath)
  // sets output[i] to i-th byte
  for(int i = 0; i < dim; i++) output[i] = input & (1<<i);

  return output;

}

#endif
