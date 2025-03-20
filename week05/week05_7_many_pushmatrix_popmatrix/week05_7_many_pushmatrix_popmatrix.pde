//week05-7-many-pushmatrix-popmatrix
void setup(){
  size(500,500);
 }
 void draw(){
   background(204);
   for(int x=50;x<500;x += 100){
     for(int y=50;y<500;y += 100){
       pushMatrix();//today host
         translate(x,y);
         rotate(radians(frameCount));
         rect(-50,-5,100,10);//100 length stick
        popMatrix();//today host
     }
   }
 }
