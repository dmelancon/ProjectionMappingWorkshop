import processing.video.*;
import codeanticode.syphon.*;
SyphonServer server;
Movie mov;
void setup() {
  size(400, 400, P2D);
  server = new SyphonServer(this, "Processing Syphon.2");
  background(255);
  mov = new Movie(this, "Dunks.mov");
  mov.loop();
}
void draw(){
  image(mov, -50, -50);
  server.sendScreen();
}

void movieEvent(Movie m) {
  m.read();
}
