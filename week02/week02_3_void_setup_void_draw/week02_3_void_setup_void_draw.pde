//week02-3-void-setup-void-draw-stroke-if-mousePressed
void setup(){
  size(400,400);
  background(255);
  fill(238);
  noStroke();
  float s = 400/14;//計算 每個格子的大小
  for(int i=0; i<14; i++){//左手i對應y座標
    for(int j=0; j<14; j++){//右手j對應x座標
      //rect(0, i*s*2, s, s);//先試一下位子
      if((i+j)%2==0) rect(j*s,i*s,s,s);
    }
  }
}
void draw(){//one second draw 60 times
  stroke(255,0,0);//red line
  if(mousePressed)line(mouseX, mouseY, pmouseX, pmouseY);
}
