class Asteroid extends Floater
{
  public Asteroid()
  {
    corners=20;
    int[] xS= {0,-10,10,0,5,30,40,45,45,40,30,5,-5,-30,-40,-45,-45,-40,-30,-5,0};
    int[] yS= {40,60,60,40,40,35,20,10,-10,-20,-35,-40,-40,-35,-20,-10,10,20,35,40,40};
    xCorners = xS;
    yCorners=yS;
  }
  
   public void setX(int x){myCenterX =x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y){myCenterY=y;}
   public int getY(){return(int)myCenterY;} 
   public void setDirectionX(double x){myDirectionX= x;}  
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY= y;}   
   public double getDirectionY(){return myDirectionY; }   
   public void setPointDirection(int degrees){myPointDirection= degrees;}  
   public double getPointDirection(){return myPointDirection;}
}
