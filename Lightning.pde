int startX = 300;
int startY = 0;
int endX = 300;
int endY = 0;
int targetX;
int score;
int hscore;

void setup(){
  size(600,600);
  strokeWeight(5);
  
}
int coordx = 300;
int coordy = 450;
int x = 5;
int eyex = 5;
int eyey = -2;
int mouthx = 5;
int mouthy = 8;

void draw(){
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Your Score: " + score, 300, 575);
  textSize(30);
  text("Your High Score: " + hscore, 300, 540);
  textSize(25);
  text("Try to smite the 'fish' with lightning :)", 300, 50);
  
  
  fill(0, 0, 255, 10);
  noStroke();
  //background(0, 0, 255);
  rect(0, 0, 600, 600);
  
  fill(255, 255, 0);
  ellipse(coordx, coordy, 25, 25);
  fill(0, 0, 0);
  ellipse(coordx + eyex, coordy + eyey, 10, 10);
  fill(255, 0, 0);
  ellipse(coordx + mouthx, coordy+ mouthy, 10, 10);
  coordx += x;
  
  if (coordx >= 575){
    coordx = 575;
    x = -x;
    eyex = -eyex;
    mouthx = -mouthx;
  } else if(coordx <= 0){
    coordx = 0;
    x = -x;
    eyex = -eyex;
    mouthx = -mouthx;
  }
    
  
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endY < 600){
    endX = startX + (int)(Math.random()*10)-5;
    if (endX > targetX){
      endX = endX - 2;
    } else if(endX < targetX){
      endX = endX + 2;
    }
    endY = startY + (int)(Math.random()*10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  startX = mouseX;
  startY = 0;
  targetX = mouseX;
  endY = 0;
  
  if(startX < coordx +25 && startX > coordx - 25){
    score += 1;
    fill(255, 0, 0);
    noStroke();
    ellipse(coordx, coordy, 25, 25);
  } else {score = 0;
 }
 
  if(score > hscore){
    hscore = score;
  }
  
  System.out.println(score);
 }
 
