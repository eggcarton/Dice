 void setup()
{
  size(500, 550);
  rectMode(CENTER);
  textAlign(CENTER, BOTTOM);
  textSize(20);
  noLoop();
}

void draw()
{
  int sum = 0;
  background(0);
  for (int y = 50; y <= 500; y = y + 80)
  {
    for (int x = 50; x <= 500; x = x+ 80)
    {
      Die test = new Die(x, y); 
      test.show(); 
      test.roll();
      sum = sum + test.dNum;
    }
  }

  fill(255);
  text("You rolled a " + sum + "!", width/2, 525);
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
    dNum = (int)(Math.random()*6)+1;
  }
  void roll()
  {  
    noStroke(); 
    fill(0); 
    if (dNum == 1)
    {
      fill(228,3,3);
      ellipse(myX, myY, 10, 10);
    }
    if (dNum == 2)
    {
      fill(255,140,0);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10);
    }
    if (dNum == 3)
    {
      fill(255,237,0);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10); 
      ellipse(myX, myY, 10, 10);
    }
    if (dNum == 4)
    {
      fill(0,128,38);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10); 
      ellipse(myX-15, myY+15, 10, 10); 
      ellipse(myX+15, myY-15, 10, 10);
    }
    if (dNum == 5)
    {
      fill(0,77,255);
      ellipse(myX-15, myY-15, 10, 10); 
      ellipse(myX+15, myY+15, 10, 10); 
      ellipse(myX, myY, 10, 10); 
      ellipse(myX-15, myY+15, 10, 10); 
      ellipse(myX+15, myY-15, 10, 10);
    }
    if (dNum == 6)
    {
      fill(177,7,135);
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