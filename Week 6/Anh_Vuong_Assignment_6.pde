//Week 6 Assignment 6
//Art22 Spring 2020
//Author: Anh Vuong
//May 12th, 2020

//Source of the song: Tuy Am (beat) by Xesi, Masew, Nhat Nguyen 

//import minim function
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim; //set variable "minim" belonging to the Minim class
AudioPlayer song;//set variable "song" belonging to the AudioPlayer class
FFT fft;//set variable fft belonging to FFT class

 
void setup() {
  size(1200,400);//set the background size
  minim = new Minim(this);//set up the sound library
  song = minim.loadFile("Tuy-Am.mp3",1024);//load the song
  song.loop();//loop the song
  fft = new FFT (song.bufferSize(), song.sampleRate());//get the song frequencies
}

void draw() {
  background(255);//set backgroud to white
  
  //use fft to "listen" to the song and get its frequencies
  fft.forward(song.mix);
  
  //start to draw the shape
  beginShape();
  //count every frequency of the song from 0 to the end of the spectrum
  for (int i=0; i< fft.specSize(); i++){
    float c = map (fft.getBand(i)*2, 0, fft.specSize(), 3*height/4, 0);//map the frequencies on the spectrum to height
    strokeWeight(2);//thickness of the shape
    vertex(i*6,c);//connect the series of vertices according the song frequencies (draw the shape 
  }
  endShape();//finish drawing the shape
}
