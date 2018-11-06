class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star()
  {
    myX=(int)(Math.random()*650);
    myY=(int)(Math.random()*400);
  }
  public void show()
  {
    fill(255);
    noStroke();
    ellipse(myX,myY,4,4);
  }
}
