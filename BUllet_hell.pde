//Madelyn Chong
// June1
//Bullet hell


//Imports
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//images
PImage sapceship1;

color pink = #EFD9CE;
color p1   = #DEC0F1;
color p2   = #B79CED;
color p3   = #957FEF;
color p4   = #7161EF;
color yellow1 = #FFC300;
color yellow2 = #FFD60A;
color dblue = #1d3557;
color lblue = #f1faee; 

//Global variables
int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
boolean directions;
boolean shooting;

// ARRAYLIST
ArrayList<GameObject> objects;

Starfighter player1;

//keyboard variables 
boolean rightkey, leftkey, upkey, downkey, space; 


Explode[] explodes;
int n =  100;


void setup() {
  size(800, 800);
  mode = GAME;
  rectMode(CENTER);
  
    explodes = new Explode[n];

  objects = new ArrayList<GameObject>();
  player1 = new Starfighter();
  objects.add(player1);
}

void draw() {//a looped funtion
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
  //  int i = 0;
  //while ( i< explodes.size()) {
  //  Explode r = explodes.get(i);
  //  r.act();
  //  r.show();
  //  i++;
//}  

}
