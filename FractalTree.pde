private double fractionLength = .8; 
private int smallestBranch = 20; 
private double branchAngle = .2;  
public void setup() 
{   
  size(500,500);    
  noLoop(); 
} 
public void draw() 
{   
  background(255);   
  stroke(70, 95, 171);   
  line(250,height,250,200);   
  drawBranches(250,200,200,3*Math.PI/2);  
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{ 
  double angle1= angle+branchAngle;
  double angle2=angle-branchAngle;
  
  branchLength*=fractionLength;
  int  endX1, endY1, endX2, endY2;
  endX1 = (int)(branchLength*Math.cos(angle1) + x);
  endY1 = (int)(branchLength*Math.sin(angle1) + y);
  endX2 = (int)(branchLength*Math.cos(angle2) + x);
  endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  
  if(branchLength>smallestBranch){
    drawBranches(endX1,endY1,branchLength-10,PI/2);
    drawBranches(endX2,endY2,branchLength-10,PI/2);
  }
  
} 
