 Person [] Crowd;
 void setup()   
 {
 	size(500,500);
 	//frameRate(120);
 	Crowd = new Person[15];
 	for(int i=0;i<Crowd.length;i++)
 	{
 		Crowd[i] = new Person();
 	}
 } 
 void draw()   
 {    
 	background(255);
 	for(int i = 0;i<Crowd.length;i++)
 	{
 		Crowd[i].show();
 		Crowd[i].walk();
 		Crowd[i].changeDir();
 	}
 }  
 class Person
 {
 	int myX,myY,switchDir,xMove,yMove;
 	Person()
 	{
 		myX = myY = 250;
 		/*myX = (int)(Math.random()*500)+1;
 		myY = (int)(Math.random()*500)+1;
 		*/
 	}
 	void changeDir()
 	{
 		switchDir = (int)(Math.random()*100)+1;
 		if(switchDir < 5)
 		{
 			xMove = (int)(Math.random()*5)-2;
 			yMove = (int)(Math.random()*5)-2;
 		}
 	}
 	void walk()
 	{
 		myX = myX + xMove;
 		myY = myY + yMove;
 	}
 	void show()
 	{
 		fill(255,255,0);
 		ellipse(myX,myY,30,30);
 	}
 }