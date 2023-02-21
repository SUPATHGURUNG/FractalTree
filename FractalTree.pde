private double fLen = .8; 
private int SBran = 10; 
private double BAng = .2;  
public boolean[] keys = new boolean[6];
public void setup() 
{   
  size(600,600); 
} 
public void draw() 
{   
  background(0);    
  stroke(0,(float)(Math.random()*255),0);
  line(300,500,300,700); 
  makeBranch(300, 500, 100, Math.PI*3/2); 
} 
public void makeBranch(int x,int y, double bLen, double angle) 
{   
  double angle1 = angle + BAng, angle2 = angle - BAng;
  int endX1 = (int)(bLen*Math.cos(angle1) + x);
  int endY1 = (int)(bLen*Math.sin(angle1) + y);
  int endX2 = (int)(bLen*Math.cos(angle2) + x);
  int endY2 = (int)(bLen*Math.sin(angle2) + y);
  line(x, y, endX1, endY1);
  line(x,y, endX2, endY2);
  if (bLen > SBran)
  {
    makeBranch(endX1, endY1, bLen * fLen, angle1);
    makeBranch(endX2, endY2, bLen * fLen, angle2);
  }
}   
