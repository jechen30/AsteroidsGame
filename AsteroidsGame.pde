Spaceship tree= new Spaceship();
Star[] snow= new Star[250];
Asteroid[] orn= new Asteroid[50];

public void setup() 
{
  size(650,400);
  for (int i=0; i< snow.length;i++)
  {
    snow[i]=new Star();
  }
  for (int i=0; i< orn.length;i++)
  {
    orn[i]=new Asteroid();
  }
}
public void draw() 
{
  background(179,242,255);
  for (int i=0; i< snow.length;i++)
  {
    snow[i].show();
  }
  for (int i=0; i< orn.length;i++)
  {
    orn[i].show();
  }
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
  if (key=='+')
  {
    tree.turn(30);
  }
}
