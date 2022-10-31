String [][] face= {{" ", "*", " ", "*", " "},
                   {" ", " ", "*", " ", " "},
                   {"|", "_", "_", "_", "|"}};
void setup (){
  for (int x=0; x<10000; x++){
  wink ();
  drawSmiley ();
  delay(1000);
  skipLine ();
  eye ();
  drawSmiley ();
  delay (1000);
  skipLine ();
}
}
void drawSmiley(){
  for (int x=0; x<face.length; x++){
    for (int y=0; y<face[x].length; y++){
      print(face [x][y]);
    }
    println ("");
  }
}

void eye (){
face [0][3]="*";
}
void wink (){
face[0][3]="-";
} 

void skipLine(){
    println ();
}
