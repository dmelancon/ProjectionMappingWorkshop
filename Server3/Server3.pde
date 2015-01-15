import codeanticode.syphon.*;
SyphonServer server;
Globe globe;
 
void setup() {
  size(400, 400, P3D);
  server = new SyphonServer(this, "Processing Syphon.3");
  frameRate(65);
  globe = new Globe(85, 200);

}
 
 
void draw() {
  background(0);
  globe.change();
  globe.rotation();
  globe.display();
  server.sendScreen();
   
}
 
class Globe {
  float size;
  float c = 0;
  float x, y;
  float zspeed;
  float spin;
  float diameter;
  float angle = 0;
  float z;
   
  Globe(float size_, float y_) {
    size = size_;
    x = width/2;
    y = y_;
    diameter = height/3;  //this one
    zspeed = random(1, 2);
    spin = 0;
  }
 
  void rotation() {
    spin = spin + random(0.01, 0.09);
  }
 
  void change() {
    z  = (sin(angle) * diameter/2) + diameter/2; 
    
  }
 
 
  void display() {
    float d = map(noise(c), 0, 1, 125, 255);
    fill(d, d, d, d);
    c = c+0.01;
 
    pushMatrix();
    lights();
    stroke(255);
    strokeWeight(0.5);
    translate(x, y);
    rotateY(spin);
    sphereDetail(20);
    sphere(z); // this one
    popMatrix();
    angle += 0.03; // this one
  }
}

