//Assignment 4
//Art 22 Spring 2020
//Author: Anh Vuong 
//April 28, 2020

PImage img; // set a variable for the image

void setup(){
  size(626,417); //set backgroud size to the image size
  img = loadImage("image.jpg");//upload the image

  loadPixels(); //load pixels or embed every image pixel into every running-program pixel 
  for (int x = 0; x < width; x++){//nested loops ro scan through all pixel locations
    for (int y = 0; y < height; y++){
      int loc = x + y * width; // fomula to embed every image pixel into every running-program pixel
      
      //extracted color values from the image
      float r = red (img.pixels[loc]); 
      float g = green (img.pixels[loc]);
      float b = blue (img.pixels[loc]);
      
      //set pixel color for display
      pixels[loc] = color(r,g,b);
    }
  }
  updatePixels();
}
 void draw() { //set an interactivity with keyboard
   if (keyPressed == true) {//if pressing any keyboard
     condition1(); //run the "condition1" function
   } else { //if releasing keyboard
     condition2(); //run the "condition2" function
   }
  }
  void keyPressed() {//set another interactivity with keyboard
    if(key == CODED) {
      if(keyCode == UP){//if pressing up-arrow keyboard 
         filter(DILATE);//increase the light area
      } else if (keyCode == DOWN){//if pressing down-arrow keyboard
      filter (ERODE);//reduce the light areas
      }
    }
  }
