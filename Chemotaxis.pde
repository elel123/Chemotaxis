 //declare bacteria variables here  
 Bacteria [] duck; 
 void setup()   
 {     
 	frameRate(15);
 	//initialize bacteria variables here 
 	size(800, 800);
 	duck = new Bacteria[2000]; 
 	for(int i = 0; i < duck.length; i++)
 	{
 		duck[i] = new Bacteria();
 	}
 
 }   
 void draw()   
 {    
 	
 	//move and show the bacteria
 	background(0);
 	//mouse
 	fill(0, 255, 0);
 	//ellipse(mouseX, mouseY, 40, 40);
 	//border
 	noFill();
 	stroke(255);
 	strokeWeight(10);
 	rect(20, 20, 760, 760);
 	for(int i = 0; i < duck.length; i++)
 	{
 		duck[i].move();

 		if(duck[i].gone == false)
 		{
 			duck[i].grow();
 		}	

 		if(duck[i].mySize > 90)
 		{
 			duck[i].vanish();
 		}
 		
 		duck[i].show();
 	}

   
 }  

 class Bacteria    
 {     
 	//lots of java! 
 	int myX, myY, redBact, greenBact, blueBact, mySize;
 	boolean gone;
 	Bacteria() 
 	{
 		myX = 400;
 		myY = 400;
 		redBact = (int)(Math.random() * 255);
 		greenBact = (int)(Math.random() * 255);
 		blueBact = (int)(Math.random() * 255);
 		mySize = 12;
 		gone = false;
 	}  

 	void move() 
 	{

 		if(mousePressed)
 		{
	 		if(mouseX > myX)
	 		{
	 			myX = myX + (int)(Math.random() * 9) - 3;
	 		}

	 		else 
	 		{
	 			myX = myX + (int)(Math.random() * 9) - 6;	
	 		}

	 		if(mouseY > myY)
	 		{
	 			myY = myY + (int)(Math.random() * 9) - 3;
	 		}

	 		else 
	 		{
	 			myY = myY + (int)(Math.random() * 9) - 6;
	 		}
	 	}

	 	else if (keyPressed)
	 	{
	 		myX = myX;
	 		myY = myY;
	 	}

	 	else 
	 	{
	 		if(mouseX < myX)
	 		{
	 			myX = myX + (int)(Math.random() * 9) - 3;
	 		}

	 		else 
	 		{
	 			myX = myX + (int)(Math.random() * 9) - 6;	
	 		}

	 		if(mouseY < myY)
	 		{
	 			myY = myY + (int)(Math.random() * 9) - 3;
	 		}

	 		else 
	 		{
	 			myY = myY + (int)(Math.random() * 9) - 6;
	 		}	 		
	 	}
 		//keeping bacteria onscreen
 		if(myX < 35)
 		{
 			myX = 35;
 		}

 		if(myX > 765)
 		{
 			myX = 765;
 		}

 		if(myY < 35)
 		{
 			myY = 35;
 		}

 		if(myY > 765)
 		{
 			myY = 765;
 		}


 	}

 	void show()
 	{

 		fill(redBact, greenBact, blueBact);
 		stroke(0);
 		strokeWeight(1);
 		ellipse(myX, myY, mySize, mySize);


 	}

 	void grow()
 	{
 		if(mouseX == myX && mouseY == myY && mySize < 40)
 		{
 
 			mySize += 5;
 		}

 		if(mySize > 30)
 		{
 			mySize += 10;

 		}
 	}

 	void vanish()
 	{
 		mySize = 0;
 		gone = true;
 	}
 }    