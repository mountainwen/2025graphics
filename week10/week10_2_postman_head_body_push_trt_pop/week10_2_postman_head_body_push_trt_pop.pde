//week10-2-postman-head-body-push-trt-pop
PImage postman, head,body;
void setup(){
  size(560,560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
}
void draw(){
background(#FFFFF2);
image(postman,0,0);//基礎郵差
fill(255,0,255,128);//半透明紫色
rect(0,0,560,560);//蓋上去
pushMatrix();
  translate(+233,+230);//放回正確位置
  rotate(radians(mouseX));
  translate(-233,-230);//頭的旋轉中心放到(0,0)
  image(head,0,0);//在畫頭
popMatrix();
image(body,0,0);//在畫身體
}
