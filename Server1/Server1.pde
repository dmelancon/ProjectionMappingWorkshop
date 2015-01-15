
import codeanticode.syphon.*;
SyphonServer server;

int y = 1;
int j =1;

void setup(){
  size(400,400,P2D); 
   server = new SyphonServer(this, "Processing Syphon.1");

}

void draw(){
   background(0);
   translate(width/2,height/2);
  pushMatrix();
    rotate(radians(frameCount));
    translate(-width/2,-height/2);
    for (int x = -1200; x<width+1200; x+=100){
      fill(255);
      rectMode(CENTER);
      rect(x+5,width/2,y,height+4400);
     }
   popMatrix();
     if (y>96){
       y=96;
       j*=-1;
     }
     if (y<4){
       y =4;
       j*=-1;
     }
     y = y+j;
     server.sendScreen();
 }
