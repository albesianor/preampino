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
void digitalPotWrite(int address, int value) {
  // take the SS pin low to select the chip:
  digitalWrite(DP_SLAVE_SELECT, LOW);
  //  send in the address and value via SPI:
  SPI.transfer(address);
  SPI.transfer(value);
  // take the SS pin high to de-select the chip:
  digitalWrite(DP_SLAVE_SELECT, HIGH);
}

// ---------------------------------------------------------
// power operator helper function
int power(int base, int exp)
{
    int result = 1;
    while(exp) {
        result *= base;
        exp--;
    }
    return result;
}

// bool array to byte converter
byte bool2byte(boolean* input, int dim = 6) {
  byte output = 0;
  for(int i = 0; i < dim; i++)
      output += input[i] * power(2,i);
  return output;
}

// byte to bool array converter
boolean* byte2bool(byte input, int dim = 6) {
  boolean* output = new boolean[dim];
  for(int i = 0; i < dim; i++){
    output[i] = input % 2;
    input = (input - output[i])/2;
  }
  return output;
}

#endif
