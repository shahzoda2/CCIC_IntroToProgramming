String [][] face = {{" ", " ", " ", " "}, 
                    {" ", " ", " ", " "},
                    {"(", ".", ".", ")"}};
                    
String [][] tear = {{" ", "|", " ", " "},
                    {" ", " ", " ", " "},
                    {" ", "___", " ", " "}};       
                    
int count = 0; 
while (count <100){
  for (int r=0; r<3; r=r+1){
    for (int c=0; c<4; c=c+1){
      print (face [r][c]);
    }
    println ();
  }

  println();
  delay (1000);
  for (int r=0; r<3; r=r+1){
    for (int c=0; c<4; c=c+1){
      print (tear [r][c]);
    }
    println ();
  }
  println();
  count = count +1;
  delay(1000);
}
