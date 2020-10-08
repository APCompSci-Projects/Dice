void setup()
{
	size(500,600);
	noLoop();
}
void draw()
{
//your code here
background(192);
int totalDots = 0;
for (int x = 20; x < 500; x+=60)
  {
	for(int y = 20; y < 500; y+=60)
   {
      Die x1 = new Die(x, y);
  	  x1.roll();
      totalDots = totalDots + x1.myDots;
      x1.show();  	
   }
  }
  textSize(15);
  text("Total: "+ totalDots, 220, 550);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY,myDots,totalDots;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
    myY = y;
    roll();
	}
	void roll()
	{
		//your code here
		myDots = (int)((Math.random()*6)+1);
    totalDots = myDots + totalDots;
	}
    void show()
	{
	//your code here
    fill(255,255,255);
    rect(myX, myY, 50, 50);
    fill(0);
    if (myDots == 1)
    {
      	ellipse(myX+25,myY+25,10,10);
    }
    else if(myDots == 2)
    {
     	ellipse(myX+35,myY+35,10,10);
     	ellipse(myX+15,myY+15,10,10);
    }
    else if(myDots == 3)
    {
      	ellipse(myX+37,myY+37,10,10);
      	ellipse(myX+25,myY+25,10,10);
      	ellipse(myX+13,myY+13,10,10);
    }
    else if(myDots == 4)
   	{
    	ellipse(myX+15,myY+15,10,10);
      	ellipse(myX+35,myY+15,10,10);
        ellipse(myX+15,myY+35,10,10);
        ellipse(myX+35,myY+35,10,10);
    }
    else if(myDots == 5)
    {
      ellipse(myX+13,myY+13,10,10);
      ellipse(myX+37,myY+13,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+13,myY+37,10,10);
      ellipse(myX+37,myY+37,10,10);
    }
    else
    {
      ellipse(myX+15,myY+11,10,10);
      ellipse(myX+35,myY+11,10,10);
      ellipse(myX+15,myY+25,10,10);
      ellipse(myX+35,myY+25,10,10);
      ellipse(myX+15,myY+40,10,10);
      ellipse(myX+35,myY+40,10,10);
    }	
    }
}
