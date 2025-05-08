//week12-7-sound1-sound2-sound3
import processing.sound.*;
SoundFile sndingame,sndintro,sndmonkey,sndsword;
void setup(){
  size(400,400);
  sndingame = new SoundFile(this, "In Game Music.mp3");
  sndintro = new SoundFile(this, "Intro Song_Final.mp3");
  sndmonkey = new SoundFile(this, "Monkey 1.mp3");
  sndsword = new SoundFile(this, "sword slash.mp3");
  sndintro. play();
}
boolean playingintro = true;
void keyPressed(){
  if(playingintro){
    sndintro.stop();
    sndingame.play();
    playingintro = false;
  }
  else{
    sndingame.stop();
    sndintro. play();
    playingintro = true;
  }
}
void draw(){}
