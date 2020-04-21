//Assignment 3
//Art 22 Spring 2020
//Author: Anh Vuong 

float stepSizeX, stepSizeY; // step variables for point 0
float x0, y0, x1, y1, x2, y2; // position variable for point 0, point 1, point 2 
float xVel, yVel; //velocity variables for point 1
float xDirection, yDirection; //direction variables for point 1
float noisex2, noisey2; //point 2's position of noise value 

void setup(){
  size(600, 600);
  //set position of point 0, 1, 2 to the middle of the screen
  x0 = x1 = x2 = width/2; 
  y0 = y1 = y2 = height/2;
  stepSizeX = 8; //set step value of x direction
  stepSizeY = 8; //set step value of x direction
  xVel = 3; //velocity of x1
  yVel = 1; //velocity of y1
  xDirection = 1; //initial x direction
  yDirection = 1; //initial y direction
  // initial point 2's position of noise value
  noisex2 = 0;
  noisey2 = 100;
  background(255); // set white background
  
}
void draw (){
  strokeWeight(20);
  stroke(0,random(255),0); // color of point 0
  point(x0, y0);  // draw point 0
  x0+=random(-stepSizeX, stepSizeX); //add a random step variable to x0 value
  y0+=random(-stepSizeY, stepSizeY); //add a random step variable to x0 value
     if(x0 > height || y0 < 0){ //return to the sreen if it goes off the screen
    x0=random(0, height); 
  }
   if(y0 > height || y0 < 0){ //return to the sreen if it goes off the screen
    y0=random(0, height);
  }
  
  stroke(random(255),0,0); // color of point 1
  point(x1, y1);  //draw point 1
  x1+=xVel*xDirection; //move by x velocity in the current direction  
  y1+=yVel*yDirection; //move by y velocity in the current direction
   if(x1 > height || x1 < 0){// bounce back to the sreen if it goes off the screen
      xDirection = xDirection * -1;
   }
   if(y1 > height || y1 < 0){// bounce back  to the sreen if it goes off the screen
      yDirection = yDirection * -1;
   }
  
  stroke(0,0,random(255)); // color of point 2
  point(x2, y2); //draw point 2
  float m = noise(noisex2); //get a noise value for x position
  float n = noise(noisey2); //get a noise value for y position
  x2 = map(m, 0, 1, 0, width); //map the value "m" from old range (0-1) to new range (0-width)
  y2 = map(n, 0, 1, 0, height);//map the value "n" from old range (0-1) to new range (0-height)
  noisex2 = noisex2 + 0.001;// increase noise x position for the smooth of the result
  noisey2 = noisey2 + 0.001;// increase noise y position for the smooth of the result 
  
}
