class Cifrotta extends Cifra
{
  Cifrotta(float x, float y, float size, float sy, char c)
  {
    super(x,y,size,sy,c);
  }
  
  
   void display()
  {
    stroke(255);
    noFill();
    ellipseMode(CENTER);
    ellipse(posX,posY,size,size);
    
    fill(255);
    textAlign(CENTER,CENTER);
    textSize(size);
    text(c,posX,posY);
  }
  
  void move()
  {
    posY -= sy;
  }
  
  void clamp()
  {
    if(posY <= 0)
      posY = height;
  }
  
  void run()
  {
    display();
    move();
    clamp();
  }
  
  
  
  
};
