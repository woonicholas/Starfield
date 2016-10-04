//your code here
Particle m[] = new Particle[500];

void setup()
{
	size(800,800);

		for(int i = 0;i<m.length;i++)
		{
			m[i] = new NormalParticle();
		
		}
		m[1] = new OddballParticle();
		for(int j = 5;j < (m.length/2);j+=5)
		{
			m[j] = new JumboParticle();
		}
}

void draw()
{
	
	background(0);
	
	for (int i=0;i<m.length;i++)
	{
		m[i].move();
		m[i].show();
		m[i].wrap();
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
 		mySpeed =(Math.random()*7)-3; //<-- When mySpeed is fixed, particles create a ring 
	}
	public void move()
	{
		
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
		myColor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

		 
		/*
			myX = myX - Math.cos(myAngle)*mySpeed*2;
			myY = myY - Math.sin(myAngle)*mySpeed*2;
		*/
	}
	public void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,10,10);

	}
	//your code here
	public void wrap()
	{
		if(myX<-50 || myX>850)
		{
			myX=400;
			myY=400;
		}

		if(myY<-50 || myY>850)
			{
			myX=400;
			myY=400;
		}
	}
}
interface Particle
{
	public void show();
	public void move();
	public void wrap();//your code here
}
//your code hereParticle m[] = new NormalParticle[100];
class OddballParticle implements Particle //uses an interface
{
	int myX,myY, myColor;
	OddballParticle()
	{
		myX = (int)(Math.random()*750);
		myY =(int)(Math.random()*750);
		myColor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

	}
	public void move()
	{
		myX = myX + (int)(Math.random()*5)-2;
		myY = myY + (int)(Math.random()*5)-2;
	}
	public void show()
	{
		noStroke();
		fill(myColor);
		rect(myX,myY, 50,50);
	}
	public void wrap()
	{
	}//your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
	public void move()
	{
		myX = myX + Math.cos(myAngle)*2;
		myY = myY + Math.sin(myAngle)*2;
	}

	public void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,50,50);

	}//your code here
}

