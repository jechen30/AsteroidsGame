Spaceship tree= new Spaceship();//your variable declarations here
public void setup() 
{
  size(650,400);
 
}
public void draw() 
{
  background(255,213,0);
  tree.show();
  tree.move();
}
public void keyPressed()
{
  if (key=='a')
  {
    tree.setDirectionX(-2);
  }
  if (key=='d')
  {
    tree.setDirectionX(2);
  }
  if (key=='w')
  {
    tree.setDirectionY(-2);
  }
  if (key=='s')
  {
    tree.setDirectionY(2);
  }
  if (key==' ')
  {
    tree.setX((int)(Math.random()*650));
    tree.setY((int)(Math.random()*450));
    tree.setDirectionY(0);
    tree.setDirectionX(0);
  }
}
