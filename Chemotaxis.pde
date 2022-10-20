Bacteria bob;
Bacteria[]sue;
 void setup()   
 {     
   size(500, 500);
   background(0);
   bob = new Bacteria();
   sue = new Bacteria[700];
   for(int i = 0; i < sue.length; i++)
   sue[i] = new Bacteria();
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < sue.length; i++){
     sue[i].walk();
     sue[i].show();
     
   }
   
 }  
 class Bacteria    
 {     
   
   int myX, myY;
   int myColor;
   Bacteria()
   {
     myX = myY = 400;
     myColor = color(200, 200, 200);
   }
   void walk()
   {
     myX = myX + (int)(Math.random() * 7) - 3;
      myY = myY + (int)(Math.random() * 7) - 3;
           myColor = (int)(Math.random() * 255);
   }
   
   
   void show() {
     fill(myColor, myColor, myColor);
     ellipse(myX, myY, 10, 10);
    
   }
 }    
