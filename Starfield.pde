Particle[] parts = new Particle[1000];
boolean start = false;
void setup()
{
  size(500, 500);
  for(int i = 0; i < parts.length; i++)
    parts[i] = new Particle();
   parts[0] = new OddballParticle(); 
}
void draw()
{
  background(0);
  for(int i = 0; i < parts.length; i++){
    parts[i].move();
    parts[i].show();
  }  
}
class Particle
{
  int myColor;
  double myX, myY, mySpeed, myAngle;
  Particle() {
    myX = myY = 250;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  } 
}

class OddballParticle extends Particle
{
  OddballParticle(){
    myX = myY = 250;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5;
  }
  void show(){
    fill(255, 255, 0);
    ellipse((float)myX, (float)myY, 50, 50);
    fill(0);
    ellipse((float)myX, (float)myY, 40, 40);
  }
}

