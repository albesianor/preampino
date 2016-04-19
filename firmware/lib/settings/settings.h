/*
PREAMPino firmware - settings.h
Roberto Albesiano - roberto.albesiano@gmail.com

Settings
This header file contains the settings regarding pins configuration
*/

#ifndef PREAMPINO_SETTINGS
#define PREAMPINO_SETTINGS

// ---------------------------------------------------------
// input

#define iFUZZ         0
#define iFUZZ_GAIN    0
#define iDIST         0
#define iDIST_GAIN    0
#define iCLIP_UP      0
#define iCLIP_DOWN    0
#define iBOOST        0
#define iBOOST_VOLUME 0
#define iVC1_GAIN     0
#define iVC2          0
#define iVC2_GAIN     0
#define iVC_VOLUME    0

#define UP            0
#define DOWN          0
#define SAVE          0
#define CANCEL        0

// ---------------------------------------------------------
// output

// NOTE: the pins associated to analog outputs (i.e. gains and volumes) are referred
//       to the digipot (AD5206) and NOT to the Arduino

#define oFUZZ         0
#define oFUZZ_GAIN    0
#define oDIST         0
#define oDIST_GAIN    0
#define oCLIP_UP      0
#define oCLIP_DOWN    0
#define oBOOST        0
#define oBOOST_VOLUME 0
#define oVC1_GAIN     0
#define oVC2          0
#define oVC2_GAIN     0
#define oVC_VOLUME    0

// ---------------------------------------------------------
// digipot
#define DP_SLAVE_SELECT 10

// ---------------------------------------------------------
// EEPROM
#define LASTPATCH  0
#define DATADIM   10      // this is the size in the EEPROM of a single patch, in bytes

// ---------------------------------------------------------
// LCD
// TODO

#endif
