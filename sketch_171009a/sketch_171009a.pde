int w = 600;
int h = 600;
 
void setup() {
 size(600,600);
 //surface.setResizable(true); 
}

void draw() {
 background(255);
 //surface.setSize(w,h);
 translate(-1.5*w,-1.5*h);
 smooth();

 ellipseMode(RADIUS);
 noFill();

 float r = w*3;
 
 // draw a sequence of lines from middle to edge
 for(int i=0; i< 3600; i++){
   if(i % 60 == 0){
     stroke(0);
   }else{
     stroke(160);
   }
   float x1 = cos(i * 2*PI/3600) * r;
   float y1 = sin(i * 2*PI/3600) * r;
   line(0,0,x1,y1);   
 }
 stroke(0);
 ellipse(0,0,r,r); 

 save("seconds.png");
}