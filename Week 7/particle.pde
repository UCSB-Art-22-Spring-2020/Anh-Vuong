class particle {

  //variables
  float x, y, z; 

  float size, alpha; 

  float speedX, speedY, speedZ;

  // constructor
  particle( float x_, float y_, float z_, float size_, float speedX_, float speedY_, float speedZ_ ) {

    x= x_ ;

    y= y_ ;

    z= z_ ;

    size = size_;

    speedX = speedX_ = random (-1,1); //set particles' X speed range from -1 to 1 

    speedY = speedY_ = random (-5,-1); //set particles' y speed range from -5 to -1

    speedZ = speedZ_  = random (-1, 1); //set particles' z speed range from -1 to 1
    
    alpha=255; //set the alpha channel to 255
    
    
  }
  

  // methods

  void display() {

    strokeWeight( size );//set the thickness of particles to size
    stroke(255, random(0,200), random (0,50), alpha);//set colors of particles with alpha channel
    point (x,y,z);//draw particles as points

  //set caculations to make particles move
    x = x + speedX; 

    y = y + speedY;

    z = z + speedZ;
    
    alpha-=3;//set the alpha channel decrease along the particles movement --> create the fading effect
    
    // check for boundaries and redraw particles from their intitial position and intital alpha channel -->keep the fire up

    if( x > boundary || x < -boundary || y > boundary || y < -boundary || z > boundary || z < -boundary ){

      x = 0;

      y = 200;

      z = 0;
      
      alpha = 255;

    }    

  }

}
