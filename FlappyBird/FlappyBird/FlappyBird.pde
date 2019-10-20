int birdX = 200;
int birdY = 250;
int birdVelocity = 30;
int gravity = 1;
int pipeX = 233;
int pipeY = 0;
int pipe2X = 233;
int pipe2Y = 320;
int pipeGap = 34;
int upperPipeHeight = 0;
int lowerPipeTop = 0;
int score = 0;

boolean gameOver = false;

void setup(){
  size (400, 500);
}


void draw(){
  if (!gameOver){
  background(#84D9F2);
fill(#F4F58D);
stroke(#000000);
ellipse(birdX, birdY, 25, 25);
for(int i = 0; i <100; i ++);
birdY = birdY + 2;
if(mousePressed){
  birdY = birdY - 10;
}
fill(#2CD12D);
rect(pipeX, pipeY, 30, 200);
pipeX = pipeX + 2;

fill(#2CD12D);
rect(pipe2X, pipe2Y, 30, 200);
pipe2X = pipe2X + 2;

if(pipeX >= 400){
teleportPipes();  
}
if(pipe2X >= 400){
  teleportPipes();
  score = score + 1;
} 
fill(#6A510D);
rect(0, 490, 505, 10);
if(intersectsPipes()){
  gameOver = true;
}
if (birdY >= 500){
  gameOver = true;
}
}
else {
 background(#000000);
 textSize(20);
 fill(#FFFFFF);
 text("GAME OVER" , 50, 250);
 text(score, 200, 250);
}
}

boolean intersectsPipes() {
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+30)){
          return true; }
     else if (birdY>lowerPipeTop && birdX > pipeX && birdX < (pipeX+30)) {
          return true; }
     else { return false; }
}


void teleportPipes() {
  upperPipeHeight = (int) random(100, 400);
  pipeX = 0;
  pipe2X = 0;
}
