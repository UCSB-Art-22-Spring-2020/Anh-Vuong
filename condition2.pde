 void condition2(){ //reduce the light area
   float x1 = 0; //x location of copy
   float y1 = random(0,height); //y location of copy
   
   int w = width; //width of section
   int h = 10; //height of section
   
   float x2 = x1 + random(-10,10); //random destination of x location of paste up to 10 pixel from x1
   float y2 = y1 + random(-10,10); //random destination of y location of paste up to 10 pixel from y1
   
   copy(int(x1), int(y1), w, h, int(x2), int(y2), w, h); //copy function that makes all things above run
 }
