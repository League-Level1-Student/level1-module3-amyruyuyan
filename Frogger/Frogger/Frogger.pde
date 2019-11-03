Car car1 = new Car(600, 500, 5);
Car car2 = new Car(400, 100, 5);
Car car3 = new Car(300, 300, 5);

int frogX = 400;
int frogY = 575;

void draw(){
  background(#F0A5E7);
  fill(#A5F0CB);
  ellipse(frogX, frogY, 25, 25);
  
  car1.moveleft();
  car1.display();
  if (intersects(car1)){
    frogX = 400;
    frogY = 575;
  }
  
  car2.moveleft();
  car2.display();
  
  car3.moveright();
  car3.display();
  
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

boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
                
   return true;
  }
 else  {
  return false;
 }
   }
   
class Car{
   int carX = 0;
   int carY = 0;
   int carSpeed = 5;
   
   void moveleft(){
     carX=carX-carSpeed;
     
     if (carX <= 0){
       carX = 800;
     }
   }
   
   void moveright(){
     carX=carX+carSpeed;
     
     if (carX >= 800){
       carX = 0;
     }
     
   }
   
   int getX(){
     return carX;
   }
   
   int getY(){
     return carY;
   }
   
   int getSize(){
     return 
   }


   Car (int carX, int carY, int carSpeed){
     this.carX = carX;
     this.carY = carY;
     this.carSpeed =carSpeed;
   }
   void display()
{
      fill(#A5C1F0);
      rect(carX, carY, 100, 50);
      
      
}
}
