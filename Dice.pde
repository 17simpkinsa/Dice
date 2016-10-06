Die bob;
int counter = 0;
void setup()
{
  size(400,500);
  noLoop();
}
void draw()
{ 
  background(255);
  for(int j = 1; j <400; j+=40)
  {
    for(int i = 1; i <400; i +=40)
    {
    bob = new Die(i,j);
   bob.show(); 
   bob.roll();
   counter+=bob.myRoll;
    }
  }
  textSize(30);
  text("Total: " + counter, 110, 450);
  counter = 0;
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, myRoll;
  Die(int x, int y) 
  {
    myX = x;
    myY = y;
    myRoll = ((int)(Math.random()*6)+1);
  }
  void roll()
  {
  if (myRoll == 1)
   {
     fill(0);
     ellipse((myX+20),(myY+20),8,8);
   }
   else if(myRoll == 2)
   {
     fill(0);
     ellipse((myX+10),(myY+10),8,8);
     ellipse((myX+30),(myY+30),8,8);
   }
  else if(myRoll == 3)
  {
    fill(0);
     ellipse((myX+8),(myY+8),8,8);
     ellipse((myX+21),(myY+21),8,8);
     ellipse((myX+34),(myY+34),8,8);
  }
  else if(myRoll == 4)
  {
   fill(0);
   ellipse((myX+10),(myY+8),8,8);
   ellipse((myX+30),(myY+8),8,8);
   ellipse((myX+10),(myY+32),8,8);
   ellipse((myX+30),(myY+32),8,8); 
  }
  else if(myRoll == 5)
  {
   fill(0);
   ellipse((myX+10),(myY+8),8,8);
   ellipse((myX+30),(myY+8),8,8);
   ellipse((myX+10),(myY+32),8,8);
   ellipse((myX+30),(myY+32),8,8);
   ellipse((myX+20),(myY+20),8,8);
  }
 else if(myRoll == 6)
{
  fill(0);
   ellipse((myX+10),(myY+8),8,8);
   ellipse((myX+10),(myY+20),8,8);
   ellipse((myX+10),(myY+33),8,8);
   ellipse((myX+30),(myY+8),8,8);
   ellipse((myX+30),(myY+20),8,8);
   ellipse((myX+30),(myY+33),8,8);  
   
  }
  
  }
  void show()
  {
      fill(255);
      rect(myX,myY,40,40);
  } 
   
}

