//week12-6-sound
import processing.sound.*;
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = new SoundFile(this, "music.mp3");
  mySound. play();
}
void draw(){//必須要有,才能持續更新
}
