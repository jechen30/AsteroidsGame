class Spaceship extends Floater  
{   
  public Spaceship(){
  corners= 15;
  int[] xS= {20,10,10,0,0,-10,-10,-15,-15,-10,-10,0,0,10,10};
  int[] yS={0,10,5,15,10,15,3,3,-3,-3,-15,-10,-15,-5,-10}; 
  xCorners = xS;
  yCorners=yS;
  myColor=color(0,179,30);
  myCenterX= 325;
  myCenterY=200;
  myDirectionX=0;
  myDirectionY= 0;
  myPointDirection=0;
  
 
}  
   public void setX(int x){myCenterX =x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y){myCenterY=y;}
   public int getY(){return (int)myCenterY;} 
   public void setDirectionX(double x){myDirectionX= x;}  
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY= y;}   
   public double getDirectionY(){return myDirectionY; }   
   public void setPointDirection(int degrees){myPointDirection= degrees;}  
   public double getPointDirection(){return myPointDirection;}
}
