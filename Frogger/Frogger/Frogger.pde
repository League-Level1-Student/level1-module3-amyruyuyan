int frogX = 400;
int frogY = 575;

void draw(){
  background(#F0A5E7);
  fill(#A5F0CB);
  ellipse(frogX, frogY, 25, 25);
  
  car car = new car();
  car.display();
}

void setup(){
  size(800, 600);
}

void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP && frogY > 0)
            {
              frogY -= 15;
                  //Frog Y position goes up
            }
            else if(keyCode == DOWN && frogY < 600)
            {
              frogY += 15;
                  //Frog Y position goes down
            }
            else if(keyCode == RIGHT && frogX < 800)
            {
              frogX += 15;
                  //Frog X position goes right
            }
            else if(keyCode == LEFT && frogX > 0) 
            {
              frogX -= 15; 
                  //Frog X position goes left
            }
      }
}

class car{
   int carX = 400;
   int carY = 300;
   int carSpeed = 100;
   
   void display()
{
      fill(#A5C1F0);
      rect(carX, carY, 100, 50);
}
}
