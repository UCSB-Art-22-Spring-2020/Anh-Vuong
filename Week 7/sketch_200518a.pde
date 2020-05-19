//Asignment 7 
//Art 22 Spring 2020
//Author: Anh Vuong
//May 19, 2020

//work is basically based on Prof.Hirsch's lecture, just changed and added some data for a different particle effect  

import peasy.*; //import
PeasyCam cam; // initialize camera

ArrayList<particle> plist = new ArrayList<particle>();//an array to hold particles

int boundary = 200; //set boundary of the 3D shape

int total = 300; // total number of particles

float rotX, rotY, rotZ, camX, camY, camZ; // rotation and translation variavles of navigation


void setup() {

  size(600, 600, P3D);//set up 3D background

  cam = new PeasyCam(this,600);
 
  // add "total" number of particles to the plist
  for ( int i=0; i < total; i++) {
    plist.add( new particle(0, 200, 0, 10, random(-2,2), random(-2,2), random (-2,2) ) ); 
  }

  

}

void draw() {

  background(0);//set the background to black
    
  scene(); //run the scene() function

  nav(); //rin the nav() function

  for (particle p : plist) {  // for every particle in the plist, 
    p.display(); // run its update() function
  }
}
