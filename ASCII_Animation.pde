//This is the matrix for the face and its needed components for the creation of my program
String [][] face = {{" ", " ", " ", " "}, 
                    {" ", " ", " ", " "},
                    {" (", "o  ", " o", ") "},
                    {" ", " ", "  v ", " "},
                    {" ", " ", " ", " "},
                    {" ","\\_____/", " ", " "}};                     
int count = 0;
boolean changeme = true;

//This code allows the loop to continue 100 times within the program continuously
while (count <100){
    for (int r=0; r<=5; r=r+1){
    for (int c=0; c<=3; c=c+1){
      print (face [r][c]);
    }
    println ();
  }

//the delay allows the program to halt for a specific time, in this case, one second  
  delay (1000);
  
//Using changeme boolean to change array symbols
  count = count +1;
  if (changeme==true) 
  {
    face [3][2]= "  T";
    face[5][1]="\\_____/";
  }
  else 
  {
    face [3][2]= "  v"; 
    face[5][1]=" \\___/";
  }
  if (changeme==false) 
    { 
      face [2][1]= "-  ";
      face [2][2]= " o";
      changeme=true;
    }
  else {
    face [2][1]= "o  ";
    face [2][2]= " -";
    changeme=false;
       }
  delay(1000);    
}
