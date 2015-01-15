
import codeanticode.syphon.*;
SyphonServer server;
PImage img;

void setup() {
  size(640, 360, P3D);
  server = new SyphonServer(this, "Processing Syphon");
  img = loadImage("moonwalk.jpg");  
  server = new SyphonServer(this, "Processing Syphon");
}

void draw() { 
  background(255);
  image(img, 0, 0);  // Display at full opacity
  server.sendScreen();
}

