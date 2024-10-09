 Die bob;
 
 void setup()

  {
     size(350,500);
      noLoop();
  }
  void draw()
  
  {
    background(51);
    int sum = 0;
      for(int x =40;x<250;x+=100){
        for(int y =30;y<250;y+=100){
          bob= new Die(x,y);
          bob.show();
        
          sum = sum + bob.roll;
                     
          
  }
  }
  fill(0,0,0);
  textSize(64);
  text("total:",60,390);
 text(sum,220,390);
 fill(255,255,255);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX;
      int myY;
      int roll;
      int myS;
     
      Die(int x, int y) //constructor
      {
           myX=x;
           myY=y;
          roll();
        
      }
      void roll()
      {    
          
           roll = (int)(Math.random()*6+1);
           
           
        
           
      }
      void show()
      {
          rect(myX,myY,75,75);

          if (roll == 1){
            fill(0,0,0);
          ellipse(myX+37.5,myY+37.5,10,10);
          fill(255,255,255);
          }
         if (roll==2){
           fill(0,0,0);
          ellipse(myX+18.75,myY+37.5,10,10);
          ellipse(myX+56.25,myY+37.5,10,10);
          fill(255,255,255);
          }
          if (roll==3){
            fill(0,0,0);
          ellipse(myX+37.5,myY+37.5,10,10);
          ellipse(myX+18.75,myY+18.75,10,10);
          ellipse(myX+56.25,myY+56.25,10,10);
          fill(255,255,255);
          }
          if (roll ==4){
            fill(0,0,0);
          ellipse(myX+18.75,myY+18.75,10,10);
          ellipse(myX+18.75,myY+56.25,10,10);
          ellipse(myX+56.25,myY+18.75,10,10);
          ellipse(myX+56.25,myY+56.25,10,10);
          fill(255,255,255);
          }
          if (roll==5){
            fill(0,0,0);
          ellipse(myX+18.75,myY+18.75,10,10);
          ellipse(myX+18.75,myY+56.25,10,10);
          ellipse(myX+56.25,myY+18.75,10,10);
          ellipse(myX+56.25,myY+56.25,10,10);
          ellipse(myX+37.5,myY+37.5,10,10);
          fill(255,255,255);
          }
          if (roll==6){
            fill(0,0,0);
         ellipse(myX+18.75,myY+18.75,10,10);
          ellipse(myX+18.75,myY+56.25,10,10);
           ellipse(myX+18.75,myY+37.5,10,10);
          ellipse(myX+56.25,myY+18.75,10,10);
          ellipse(myX+56.25,myY+37.5,10,10);
          ellipse(myX+56.25,myY+56.25,10,10);
          fill(255,255,255);
          }
      }
  }
