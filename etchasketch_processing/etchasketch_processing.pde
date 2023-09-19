float oldMouseX;
float oldMouseY;

void setup() {
  noCursor();
  fullScreen();
  background(200);
  oldMouseX = mouseX;
  oldMouseY = mouseY;
}

void draw() {
  stroke(10);
  line(mouseX, mouseY, oldMouseX, oldMouseY);
  oldMouseX = mouseX;
  oldMouseY = mouseY;
}

void keyPressed() {
  
  //Will override file if saving at same frame number.
  if (key=='s' || key=='S') saveFrame("EtchASketch"+"_##.png");
  
  
  
  // E for earthquake. Fade by drawing a rect with low alpha.
  if (key=='e' || key=='E') {
    fill(200, 20); 
    noStroke();
    rect(0, 0, width, height);
  }
}
