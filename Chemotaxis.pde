 //declare bacteria variables here  
 Bacteria duck; 
 void setup()   
 {     
 	background(0);
 	//initialize bacteria variables here 
 	size(800, 800);
 	duck = new Bacteria();  
 }   
 void draw()   
 {    

 	//move and show the bacteria
 	duck.move();
 	duck.show();   
 }  
 class Bacteria    
 {     
 	//lots of java! 
 	int myX, myY, redBact, greenBact, blueBact;
 	Bacteria() 
 	{
 		myX = 400;
 		myY = 400;
 		redBact = (int)(Math.random() * 255);
 		greenBact = (int)(Math.random() * 255);
 		blueBact = (int)(Math.random() * 255);
 	}  

 	void move() 
 	{
 		myX = myX + (int)(Math.random() * 9) - 4;
 		myY = myY + (int)(Math.random() * 9) - 4;
 	}

 	void show()
 	{
 		fill(redBact, greenBact, blueBact);
 		ellipse(myX, myY, 20, 20);
 	}
 }    