class Walker{
  PVector[] loc = new PVector[2000];
  PVector vel;
 int[] age = new int[2000]; 

  Walker() {
    for ( int i=0; i<loc.length; i++) {
      loc[i] = new PVector(random(width),height/2);
      age[i] = 0;
    }
  }
  void render() {
    strokeWeight(.5);

    stroke(0);
    for ( int i=0; i<loc.length; i++) {
      point(loc[i].x, loc[i].y);
    }
  }
  void walk() {
    for ( int i=0; i<loc.length; i++) {
      vel = new PVector(2*noise( loc[i].x * 0.02, loc[i].y*0.016 )-1, 2*noise( loc[i].x * 0.017, loc[i].y*0.011 )-1);
   
           loc[i].add(vel);
    
        
        }
    }
  }


