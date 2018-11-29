class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid()
  {
    corners=9;
    int[] xS= {-10,10,10,0,-10,-20,-25,-20,-10,-10};
    int[] yS= {30,30,-10,-20,-25,-20,-10,0,10,30};
    xCorners = xS;
    yCorners=yS;
    myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    myCenterX=(int)(Math.random()*650);
    myCenterY=(int)(Math.random()*400);
    myDirectionX = (int)((Math.random()*5)-2);
    myDirectionY = (int)((Math.random()*5)-2);
    myPointDirection = (int)(Math.random()*360);
    rotSpeed=(int)((Math.random()*10));
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
   public double getPointDirection(){return myPointDirection;
   }
   
   public void move(){
    turn(rotSpeed);
    super.move();
   }      
}
