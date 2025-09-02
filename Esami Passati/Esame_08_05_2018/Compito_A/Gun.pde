class Gun
{
   float posX, posY;
  
  
  Gun(float x, float y)
  {
    this.posX = x;
    this.posY = y;
  }
  
  void display()
  {
    fill(125);
    stroke(random(255),random(255),random(255));
    rectMode(CENTER);
    rect(posX,posY,20,70);
    fill(255,0,0);
    rect(posX,posY-35,10,20);
  }
  
  
  void move()
  {
    posX = mouseX;
  }
  
  Bullet shot()
  {
     return new Bullet(mouseX,height-80,10);
  }
  
    
  void run()
  {
    display();
    move();
  }
  
};
