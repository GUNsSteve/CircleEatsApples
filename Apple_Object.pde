class Apple{
  private int x, y, radius;
  Apple(){
    x = (int)random(0,1000);
    y = (int)random(0,800);
  }
  void show(){
    push();
      fill(0,199,0);
      circle(this.x,this.y,10);
    pop();
  }
  boolean collide(){
    if(((circleX-x)*(circleX-x) + (circleY-y)*(circleY-y)) < (20+100)*2+100){
      return true;
    }
    return false;
  }
  
}
