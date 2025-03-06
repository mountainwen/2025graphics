//week03-6-lerp-frameCount
void setup(){
  size(400,400);
}
float startX = 0, startY = 0;
float stopX =400, stopY = 400;
void draw(){
  ellipse(startX,startY,10,10);
  ellipse(stopX,stopY,10,10);
  float midX = lerp(startX, stopX,frameCount/200.0);
  float midY = lerp(startY, stopY,frameCount/200.0);
  //frameCount 是第幾個frame 1hour=60min 1min=60sec 1sec=60frame
  ellipse(midX,midY,10,10);
}
