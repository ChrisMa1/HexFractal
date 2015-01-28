public float smallest;
void setup(){
  size(1000,1000);
  background(255);  
  smallest=6;
  //noLoop();
}
void draw(){
  fill(0);
  stroke(0);
  drawHex(width/2,height/2,width/2);//black
  fill(255);
  stroke(255);
  drawHex(width/2,height/2,width/6);//white
  fractal(width/2,height/2,width/6);
}
void drawHex(float x, float y, float rad){//draws hexagon given center and radius
   quad(x-sqrt(3)/2*rad, y-rad/2, x-sqrt(3)/2*rad,y+rad/2,x,y+rad,x+sqrt(3)/2*rad,y+rad/2);
   quad(x-sqrt(3)/2*rad, y-rad/2, x,y-rad,x+sqrt(3)/2*rad,y-rad/2,x+sqrt(3)/2*rad,y+rad/2);
}
void fractal(float x, float y, float rad){
  if(rad<smallest){
    
  }else{
    fill(255);
    stroke(255);
    drawHex(x+rad*sqrt(3)/2+rad/2*sqrt(3)/2, y+rad/2+rad/4,rad/2);
    fractal(x+rad*sqrt(3)/2+rad/2*sqrt(3)/2, y+rad/2+rad/4,rad/2);
    drawHex(x+rad*sqrt(3)/2+rad/2*sqrt(3)/2, y-(rad/2+rad/4),rad/2);
    fractal(x+rad*sqrt(3)/2+rad/2*sqrt(3)/2, y-(rad/2+rad/4),rad/2);
    drawHex(x-rad*sqrt(3)/2-rad/2*sqrt(3)/2, y-(rad/2+rad/4),rad/2);
    fractal(x-rad*sqrt(3)/2-rad/2*sqrt(3)/2, y-(rad/2+rad/4),rad/2);
    drawHex(x-rad*sqrt(3)/2-rad/2*sqrt(3)/2, y+(rad/2+rad/4),rad/2);
    fractal(x-rad*sqrt(3)/2-rad/2*sqrt(3)/2, y+(rad/2+rad/4),rad/2);
    drawHex(x, y-rad-rad/2,rad/2);
    fractal(x, y-rad-rad/2,rad/2);
    drawHex(x, y+rad+rad/2,rad/2);
    fractal(x, y+rad+rad/2,rad/2);
  }
}

