import codeanticode.syphon.*;
SyphonServer server;

Walker w;
int currentTime;
int prevTime = 0;
void setup() {
  size(400,400,P2D);
    server = new SyphonServer(this, "Processing Syphon.4");

  smooth();
   background(255);
   w = new Walker();
}

void draw() {
  w.walk();
  w.render();
  server.sendScreen();
  reset(10000);
}

void reset(int time){
   currentTime = millis();
   if (prevTime+time <= currentTime){
     background(255);
     w = new Walker();
     prevTime = currentTime;
     println(currentTime);
   }
}
