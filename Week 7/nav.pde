void nav() {

  if (keyPressed) {//set up the interactivity with keyboard
    if (key == CODED) {//set the coded keys that will do the interactivity
    
      if (keyCode == UP) {// if pressing the key of up arrow
        rotX++; // increase x-axis rotation
      }

      if (keyCode == DOWN) {// if pressing the key of down arrow
        rotX--; // decrease x-axis rotation
      }

      if (keyCode == LEFT) {// if pressing the key of left arrow
        rotY++; // increase y-axis rotation
      }

      if (keyCode == RIGHT) {// if pressing the key of right arrow
        rotY--; // decrease y-axis rotation
      }
    }

    if (key == 'w') {// if pressing the key 'w'
      camZ+=10; // increase navigation z position by 10
    }

    if (key == 's') {// if pressing the key 's'
      camZ-=10; // decrease navigation z position by 10
    }

  }

}
