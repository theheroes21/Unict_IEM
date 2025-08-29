class SuperPillow extends Pillow
{
  float angle;
  
  SuperPillow(float posX, float posY, float sx, float w, float h,float a)
  {
    super(posX,posY,sx,w,h);
    this.angle = a;
  }
  
  void display()
  {
    pushMatrix();
    translate(posX,posY);
    rotate(radians(angle));
    
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(0,0,w,h);
    
    fill(105);
    circle(0,0,w);
    
    popMatrix();
   
   
    
    float d = dist(this.posX,this.posY,mouseX,mouseY);
    if(d < w/2)
    {
      angle +=5;
    }
  }
};
