void setup (){
size(400, 400);  
rectangle ();
ell ();
}

void rectangle (){
 fill(0,255,0);
 strokeWeight(5);
 rect(20, 30, 120, 220);
}
void ell (){ 
 fill (255,0,255);
 strokeWeight (0);
 ellipse (300,300,50,200);
}
