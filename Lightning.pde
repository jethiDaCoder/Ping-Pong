import java.util.Random;
Random rand = new Random();
int min = 25;
int max = 575;
int random_int = (int)Math.floor(Math.random()*(max-min+1)+min);
int leftButton;
int rightButton;
int coordx = 25;
int coordy = random_int;
int x = 3;
int y = 2;
int w = 0;
int recty = 300;
int score = 0;
int hscore = 0;

public void setup() {
  size(600, 600);
}

public void draw() {
  background(192);
  
  
  ellipse(coordx, coordy, 25, 25);
  coordx += x;
  coordy += y;
  
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Your Score: " + score, 300, 575);
  textSize(30);
  text("Your High Score: " + hscore, 300, 540);
  
  if (score > hscore){
    hscore = score;
  }
  
  if (coordx >= 575 && coordy >= recty && coordy <= recty + 100){
    coordx = 575;
    x = - x;
    score += 1;
  }
  else if (coordx >= 575){
    coordx = 575;
    x = -x;
    score = 0;
  }
  if (coordx <= 25){
    coordx = 25;
    x = -x;
  }
  if (coordy >= 575){
    coordy = 575;
    y = -y;
  }
  if (coordy <= 25){
    coordy = 25;
    y = -y;
  }

  if (score % 5 == 0 && score != 0){
    if (x > 0){
      x = 3 + (score / 5);
    }
    else {
      x = -3 - (score / 5);
    }
    if (y > 0){
      y = 2 + (score / 5);
    }
    else {
      y = -2 - (score / 5);
    }
  }
  
   if (score == 0){
    if (x > 0){
      x = 3;
    }
    else {
      x = -3;
    }
    if (y > 0){
      y = 2;
    }
    else {
      y = -2;
    }
     }

  rect(580, recty+w, 25, 100);
  if (keyPressed == true){
    if (keyCode == UP){
    recty -= 7;
  }
 }
  
  rect(0, coordy-50, 20, 100);
  if (keyPressed == true){
    if (keyCode == DOWN){
    recty += 7;
  }
}
    
    
 System.out.println(x); 
 System.out.println(y);
  
}
