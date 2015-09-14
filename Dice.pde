int total=0;
void setup() {
  size(1046, 1100);
  noLoop();
}
void draw() {
  background(0);
  for (int y=25; y<=1000; y=y+25) {
    for (int x=25; x<=1000; x=x+25) {
      int dotsO = (int)(Math.random()*6+1);// number of dots on dice
      total=total+dotsO;
      Die bob = new Die(x, y, dotsO);
      bob.show();
    }
  }
  fill(0, 102, 153);
  textSize(32);
  text("total is "+total, 400, 1070); 
  //println(total);
}
class Die {
  int myX, myY, dots;
  Die(int x, int y, int dotsO) { //the position of the dice
    myX=x;
    myY=y;
    dots=dotsO;
  }
  void show() {
    byte r = (byte)(Math.random()*75+50);
    byte g = (byte)(Math.random()*75+50);
    byte b = (byte)(Math.random()*75+50);
    fill(r, g, b);
    rect(myX, myY, 20, 20, 5);
    if (dots==1||dots==3||dots==3) {
      ellipse(myX+10, myY+10, 2, 2);
    }
    if (dots==2||dots==3||dots==4||dots==5||dots==6) {
      ellipse(myX+5, myY+5, 2, 2);
      ellipse(myX+15, myY+15, 2, 2);
    }
    if (dots==4||dots==5||dots==6) {
      ellipse(myX+5, myY+15, 2, 2);
      ellipse(myX+15, myY+5, 2, 2);
    }
    if (dots==6) {
      ellipse(myX+5, myY+10, 2, 2);
      ellipse(myX+15, myY+10, 2, 2);
    }
  }
}

void mousePressed() { //resets the dice
  
  total=0;
  redraw();
}