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

#define iFUZZ         3
#define iFUZZ_GAIN    A0
#define iDIST         2
#define iDIST_GAIN    A1
#define iCLIP_UP      18
#define iCLIP_DOWN    19
#define iBOOST        20
#define iBOOST_VOLUME A2
#define iVC1_GAIN     A3
#define iVC2          21
#define iVC2_GAIN     A4
#define iVC_VOLUME    A5

#define iUP           11
#define iDOWN         10
#define iSAVE         13
#define iCANCEL       12

// debounce delay
#define DEBOUNCE_DELAY 100    // in ms

// ---------------------------------------------------------
// MIDI
#define MIDI_INPUT_PORT Serial2

// ---------------------------------------------------------
// output

// NOTE: the pins associated to analog outputs (i.e. gains and volumes) are referred
//       to the digipot (AD5206) and NOT to the Arduino

#define oFUZZ         32
#define oFUZZ_GAIN    0
#define oDIST         35
#define oDIST_GAIN    1
#define oCLIP_UP      36
#define oCLIP_DOWN    37
#define oBOOST        33
#define oBOOST_VOLUME 2
#define oVC1_GAIN     3
#define oVC2          34
#define oVC2_GAIN     4
#define oVC_VOLUME    5

// ---------------------------------------------------------
// digipot
#define DP_SLAVE_SELECT 9

// ---------------------------------------------------------
// EEPROM
#define PATCHDIM   7      // this is the size in the EEPROM of a single patch, in bytes
#define NPATCHES 200      // actually the maximum number of patches that can be stored in Mega2560 EEPROM
                          // is over 500, the fact that is set to 200 is because you won't normally use more
                          // than 200 patches in your bank (and that are a lot). Anyway, it can be increased
#define LASTPATCH  (PATCHDIM*NPATCHES + 1)

// ---------------------------------------------------------
// LCD
#define LCD_RS      26
#define LCD_ENABLE  27
#define LCD_D4      28
#define LCD_D5      29
#define LCD_D6      30
#define LCD_D7      31

#endif
