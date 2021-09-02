import java.util.ArrayList;
//import java.util.Collections;
ArrayList<Apple> appleslist = new ArrayList<Apple>();
int circleX, circleY;
int fullness=0;
void setup(){
  fullScreen();
  background(#FF00FF);
  circleX = width/2;
  circleY = height/2;
  shapeMode(CENTER);
  for (int i =0;i<16;i++){
    appleslist.add(new Apple());
  }
  textMode(CENTER);
  
}
void draw(){
  shapeMode(CENTER);
  background(#FF00FF);

  
  for (int i=0 ; i<appleslist.size()-1;i++){
    appleslist.get(i).show();
    if(appleslist.get(i).collide()){
      
      println("Collided");
      appleslist.remove(i);
      fullness++;
    };
  }
  push();
  fill(255,0,0);
  circle(circleX,circleY,50);
  pop();
  
  
  PFont font;
  font = createFont("AgencyFB-Reg-48.vlw", 48);
  textFont(font);
  text("Apples Eaten: "+fullness,0,height-48);
  if(fullness == 15 && key != ' '){
    background(0);
    fill(255);
    text("You Won!",width/2,height/2);
  }
  else if(key == ' '&&fullness == 15){
    fullness = 0;
     for (int i =0;i<16;i++){
      appleslist.add(new Apple());
      }
  }
  //error = 1/0;
}
void keyPressed(){
  switch(key){
    case 'a':
    circleX-=10;
    break;
    case 'w':
    circleY-=10;
    break;
    case 'd':
    circleX+=10;
    break;
    case 's':
    circleY+=10;
    break;
    
  }
}
