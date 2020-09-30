void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here
	Die x1 = new Die(50,50);
    x1.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
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
	}
	void show()
	{
		//your code here
		rect(myX,myY,50,50);
	}
}
