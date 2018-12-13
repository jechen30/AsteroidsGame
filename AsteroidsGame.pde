Spaceship tree= new Spaceship();
Star[] snow= new Star[250];
ArrayList <Asteroid> orn= new ArrayList <Asteroid>();
ArrayList <Bullet> red= new ArrayList <Bullet>();
//Bullet red = new Bullet(tree);

public void setup() 
{
  size(650,400);
  for (int i=0; i< snow.length;i++)
  {
    snow[i]=new Star();
  }
  for (int j=0; j< 20;j++)
  {
    orn.add( new Asteroid());
  }
  for (int i=0; i< red.size();i++)
    red.add(new Bullet(tree));
}
public void draw() 
{
  background(179,242,255);
  for (int i=0; i< snow.length;i++)
  {
    snow[i].show();
  }
  for (int j=0; j< orn.size();j++)
  {
    orn.get(j).show();
    orn.get(j).move();
    float d= dist(tree.getX(), tree.getY(),orn.get(j).getX(),orn.get(j).getY());
    if (d<30)
      orn.remove(j);
  }
  for (int i=0; i< red.size();i++)
  {  
    red.get(i).show();
    red.get(i).move();
  }
    tree.show();
    tree.move();
    
  for (int j=0; j< orn.size();j++){
    for (int i=0; i< red.size();i++){
    float d= dist(red.get(i).getX(),red.get(i).getY(),orn.get(j).getX(),orn.get(j).getY());
    if (d<30){
      red.remove(i);
      orn.remove(j);
      break;
    }
    }
  } 
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
  if (key =='0')
  {
    red.add(new Bullet(tree));
  }
}
