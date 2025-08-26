class Hyperball extends Ball
{
  color c;
  
  Hyperball(float x, float y, float r, float sy, color c)
  {
    super(x,y,r,sy);
    this.c = c;
  }
  
  void display()
  {
     noStroke();
     float d = dist(mouseX,mouseY,posX,posY);
     
     if(d<r)
      fill(random(0,255),random(0,255),random(0,255));
     else
     fill(c);
     
     circle(posX,posY,r*2);
  }

};
