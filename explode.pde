class Explode {
  //instance variables
  float x, y; 
  float w ;// size of the puddle
  final int MINSIZE = 1;

  //constructor
  Explode() {
    w = random(0,MINSIZE);
    x= mouseX ;
    y = mouseY;
    
  }

  void act() {
    w= w +3;
    if ( w <= MINSIZE) {
      w  = 1;
      x= mouseX;
      y = mouseY;
    }
  }

  void show() {
    strokeWeight (2);
    square( x, y, w);
  }
}
