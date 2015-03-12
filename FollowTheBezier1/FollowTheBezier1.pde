
ArrayList Lines = new ArrayList();

void setup() {
  size(1200, 1000);
noFill();
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
}

void draw() {
  smooth();
background(#000000);
  noFill();
  stroke(255);
  strokeWeight(1);
 

if(mouseX > 0 && mouseX <100){
    bezier(0, 1, mouseX, mouseY, mouseY, mouseX, 0, 1000);
}
else if(mouseX > 101 && mouseX <200){
bezier(100, 1, mouseX, mouseY, mouseY, mouseX, 100, 1000);
 }
 }
