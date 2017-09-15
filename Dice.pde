void setup()
{
  size(500, 500);
  rectMode(CENTER);
  noLoop();
}

void draw()
{
  background(0);
  for (int y = 50; y <= 500; y = y +100)
  {
    for (int x = 50; x <= 500; x = x+100)
    {
      Die test = new Die(x, y); 
        test.show(); 
        test.roll();
    }
  }
}

void mousePressed()
{
  redraw();
}

class Die 
{  
  int mySize, myX, myY, dNum; 
    Die(int x, int y)
  {  
    mySize = 75; 
      myX = x; 
      myY = y;
  }
  void roll()
  {  
    noStroke(); 
      dNum= (int)(Math.random()*6)+1; 
      System.out.println("dNum:" + dNum); 
      fill(0); 
      if (dNum == 1)
    {
      ellipse(myX, myY, 10, 10);
    }
    if (dNum == 2)
    {
      ellipse(myX-15, myY-15, 10, 10); 
        ellipse(myX+15, myY+15, 10, 10);
    }
    if (dNum == 3)
    {
      ellipse(myX-15, myY-15, 10, 10); 
        ellipse(myX+15, myY+15, 10, 10); 
        ellipse(myX, myY, 10, 10);
    }
    if (dNum == 4)
    {
      ellipse(myX-15, myY-15, 10, 10); 
        ellipse(myX+15, myY+15, 10, 10); 
        ellipse(myX-15, myY+15, 10, 10); 
        ellipse(myX+15, myY-15, 10, 10);
    }
    if (dNum == 5)
    {
      ellipse(myX-15, myY-15, 10, 10); 
        ellipse(myX+15, myY+15, 10, 10); 
        ellipse(myX, myY, 10, 10); 
        ellipse(myX-15, myY+15, 10, 10); 
        ellipse(myX+15, myY-15, 10, 10);
    }
    if (dNum == 6)
    {
      ellipse(myX-15, myY-15, 10, 10); 
        ellipse(myX+15, myY+15, 10, 10); 
        ellipse(myX-15, myY, 10, 10); 
        ellipse(myX+15, myY, 10, 10); 
        ellipse(myX-15, myY+15, 10, 10); 
        ellipse(myX+15, myY-15, 10, 10);
    }
  }
  void show()
  {   
    fill(255); 
      rect(myX, myY, mySize, mySize, 25);
  }
}