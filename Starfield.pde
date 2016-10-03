//your code here
Particle m[] = new Particle[500];
void setup()
{
	size(800,800);
	for(int i = 0;i<500;i++)
	{
		m[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	for (int i=0;i<500;i++)
	{
		m[i].move();
		m[i].show();
	}
	
	//your code here
}
class NormalParticle implements Particle
{
	double myX, myY, mySpeed, myAngle;
	int myColor;
	NormalParticle()
	{
		myX=400;
 		myY=400;
 		myColor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 		myAngle =Math.PI*2*Math.random() ;
 		mySpeed =(Math.random()*5)-2; //<-- When mySpeed is fixed, particles create a ring 
	}
	public void move()
	{
		
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
		
		 
		/*
			myX = myX - Math.cos(myAngle)*mySpeed*2;
			myY = myY - Math.sin(myAngle)*mySpeed*2;
		*/
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,10,10);

	}
	//your code here
}
interface Particle
{
	public void show();
	public void move();//your code here
}
//your code hereParticle m[] = new NormalParticle[100];
class OddballParticle implements Particle //uses an interface
{
	int myX,myY, myColor;
	OddballParticle()
	{
		myX = (int)(Math.random()*255);
		myY =(int)(Math.random()*255);
		myColor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

	}
	public void move()
	{
		myX = myX + (int)(Math.random()*5)-2;
		myY = myY + (int)(Math.random()*5)-2;
	}
	public void show()
	{
		fill(myColor);
		rect(myX,myY, 50,50);
	}
	//your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
}

