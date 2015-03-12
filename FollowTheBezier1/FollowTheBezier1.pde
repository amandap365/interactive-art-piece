
ArrayList Lines = new ArrayList();

void setup() {
  size(400, 400);
noFill();
/*
 bezier(10, 1, 10, 10, 1, 10, 10, 1000);
 bezier(20, 1, 20, 20, 1, 20, 20, 1000);
 bezier(30, 1, 30, 30, 1, 30, 30, 1000);
 bezier(40, 1, 40, 40, 1, 40, 40, 1000);
 bezier(50, 1, 50, 50, 1, 50, 50, 1000);
 bezier(60, 1, 60, 60, 1, 60, 60, 1000);
 bezier(70, 1, 70, 70, 1, 70, 70, 1000);
 
  for (int i = 0; i < 2000; i = i+100) {
    Lines.add("100, "+ i +", mouseX, mouseY, mouseY, mouseX, "+ 100+", 1000");

  }
  */
}

void draw() {
  smooth();
  background(#000000);
  noFill();
  stroke(255);
  strokeWeight(1);
 

  if(mouseX > 0 && mouseX <100){
    stroke(255, 255, 0);//yellow
  }
  else if(mouseX > 101 && mouseX <200){
    stroke(0, 255, 0);//green
   }else{
      stroke(255, 255, 255);//white
   }
   
   float firstLineX1 = 0;
   float firstLineX2= 0;
   float firstLineY1= 0;
    float firstLineY2= 0;
   
   float distance = 100; 
    
     for (int x = 0; x < 2000; x += distance) {
       
       //if( x == 0 ){
         firstLineX1 = mouseX + (distance);
         firstLineX2 = mouseY;// + (x*distance);
         firstLineY1 = mouseX + (distance);
         firstLineY2 = mouseY;// + (x*distance);
       //}
       
       bezier(x, 1, firstLineX1, firstLineY1, firstLineX2, firstLineY2, x, 400); 
     }
   
   

   
 }
