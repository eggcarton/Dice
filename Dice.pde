void setup()
{
  size(500,500);
  noLoop();
}

void draw()
{
  background(0);
  Die test = new Die(width/2, height/2);
  test.show();
  test.roll();
}

void mousePressed()
{
  redraw();
}

class Die 
{  
  int mySize, myX, myY,dNum;
  Die(int x, int y)
  {  
    mySize = 75;
    myX = x;
    myY = y;
  }
  void roll()
  {  
    noStroke();
    dNum= (int)(Math.random())+1;
    System.out.println("dNum:" + dNum);
    if (dNum == 1)
   {
     fill(0);
     ellipse(myX+35, myY+35, 10,10);
   }
  }
  void show()
  {   
   fill(255); 
   rect(myX, myY, mySize, mySize, 25);
  }
}