class AmazingBlock extends Block
{
  float angle;
  
  AmazingBlock(float x, float y, float sx, float w, float h, float a)
  {
    super(x,y,sx,w,h);
    this.angle = a;
  }
  
  void display()
  {
    pushMatrix();
    translate(posX,posY);
    
    fill(angle%256, 255-angle%256, 255);
    rotate(radians(angle));
 
    noStroke();
    rectMode(CENTER);
    rect(0,0,w,h);
    popMatrix();
  }
  
  void move()
  {
    posX += sx;
    angle += 5;
    
  }
  
  void run()
  {
    display();
    move();
    bounce();
  }


};
