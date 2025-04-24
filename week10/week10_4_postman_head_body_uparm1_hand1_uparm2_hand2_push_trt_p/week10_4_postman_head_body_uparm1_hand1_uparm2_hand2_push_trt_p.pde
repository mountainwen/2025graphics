//week10-4-postman-head-body-uparm1-hand1-uparm2-hand2-push-trt-pop
PImage postman, head,body,uparm1,hand1,uparm2,hand2;
void setup(){
  size(560,560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("right-arm.png");
  hand1 = loadImage("right-hand.png");
  uparm2 = loadImage("left-arm.png");
  hand2 = loadImage("left-hand.png");
  
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);//基礎郵差
  fill(255,0,255,128);//半透明紫色
  rect(0,0,560,560);//蓋上去
  pushMatrix();
    translate(+197,+262);//放回正確位置
    //rotate(radians(mouseX));
    translate(-197,-262);//arm的旋轉中心放到(0,0)
    image(uparm1,0,0);
    pushMatrix();
      translate(+119,+265);//放回正確位置
      //rotate(radians(mouseX));
      translate(-119,-265);//arm的旋轉中心放到(0,0)
      image(hand1,0,0);
    popMatrix();
  popMatrix();
   pushMatrix();
    translate(+289,+260);//放回正確位置
    //rotate(radians(mouseX));
    translate(-289,-260);//arm的旋轉中心放到(0,0)
    image(uparm2,0,0);
    pushMatrix();
      translate(+355,+258);//放回正確位置
      //rotate(radians(mouseX));
      translate(-355,-258);//arm的旋轉中心放到(0,0)
      image(hand2,0,0);
    popMatrix();
  popMatrix();
  pushMatrix();
    translate(+233,+230);//放回正確位置
    //rotate(radians(mouseX));
    translate(-233,-230);//頭的旋轉中心放到(0,0)
    image(head,0,0);//在畫頭
  popMatrix();
  image(body,0,0);//在畫身體
}
