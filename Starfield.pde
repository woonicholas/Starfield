//your code here
NormalParticle m[] =;

void setup()
{
	size(800,800);
	//your code here
}
void draw()
{
	background(0);
	m.move();
	m.show();//your code here
}
class NormalParticle
{
	double myX, myY, mySpeed, myAngle;
	int myColor;
	NormalParticle()
	{
		myX=(Math.random()*400);
 		myY=(Math.random()*400);
 		myColor=color(255);
 		myAngle =Math.PI*2*Math.random() ;
 		mySpeed =(Math.random()*5)-2;
	}
	void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,10,10);

	}
	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

