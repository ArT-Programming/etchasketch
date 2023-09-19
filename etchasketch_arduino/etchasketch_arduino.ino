#include <AEAT6012.h>
#include "Mouse.h"



Encoder enc1(3,2,4);//Encoder(int dataPin,int clockPin,int chipSelect);
Encoder enc2(3,2,5);//Encoder(int dataPin,int clockPin,int chipSelect);
int oldxVal;
int oldyVal;


void setup() {
	Serial.begin(115200);
  Mouse.begin();
}

void loop() {
  int xval =enc1.getAbsolute();
  int yval =enc2.getAbsolute();
  int diffx = xval-oldxVal;
  int diffy = yval-oldyVal;
  Mouse.move(diffx,diffy,0);
  oldxVal = xval;
oldyVal = yval;

   //Serial.println
 } 
