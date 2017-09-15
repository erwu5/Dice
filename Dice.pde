void setup()
{
  size(400, 420);
  background(196,240,255);
	noLoop();
}
void draw()
{
  int total = 0;
  for(int y= 9; y <390; y+=67)
  {
    for(int x = 9; x <390; x+=65)
    {
	   Die yay = new Die(x,y);
     yay.show();
     total += yay.num;
    }
  }
  noStroke();
  fill(196,240,255);
  rect(140, 395, 100, 100);
  fill(0);
  text("Sum of rolls: " + total, 145, 410); 
  
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
  int num, myX, myY;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
    roll();
	}
	void roll()
	{
		num =(int)((Math.random()*6)+1);
   
	}
	void show()
	{
		fill(255,196,244);
    stroke(255);
    rect(myX, myY, 50, 50);
    fill (255);
    if (num < 2)
     ellipse(myX+25, myY+25, 10, 10);
    else if (num < 3)
    {ellipse(myX+10, myY+10, 10, 10);
     ellipse(myX+40, myY+40, 10, 10);}
    else if (num < 4)
     {ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);}
    else if (num < 5)
     {ellipse(myX+10,myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);}
    else if (num < 6)
     {ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);}
    else
     {ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);}
         
    
    
    
	}
}