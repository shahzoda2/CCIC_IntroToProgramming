String player1;
String player2;
int turn;
boolean hasChosen=false;
String [][] gameBoard = {{" ", " ", " "},
                       {" ", " ", " "},
                       {" ", " ", " "}};
                       
void setup (){
 size (400,400); 
 hasChosen=false;
 setupGame ();
 player1= "X";
 turn=0;
}

void draw (){
if (hasChosen==true){
  drawGameBoard();
}
}
void setupGame (){
background (0); 
textSize (30);
text ("Player 1 choose your piece!", 35,50);
text ("X", 150,85);
text ("O", 200, 85);
}

void mouseClicked (){
  if(hasChosen == true){
    makeMove ();
  }else{
    PickPiece();
  }
}

void drawGameBoard(){
if (player1=="X" ||player1=="O"){
background (0);
stroke (255, 255, 255);
strokeWeight (7);
line (135, 0, 135, 400);
line (268, 0, 268, 400);
line (0, 135, 400, 135);
line (0, 268, 400, 268);

for (int i=0; i < gameBoard.length; i=i+1){
  for (int j=0; j< gameBoard.length; j=j+1){
    if (gameBoard [i][j] != ""){
      textSize (90);
    text (gameBoard [i][j], (400/3 * j) + (400/3) * 0.5, (400/3 *i) + (400/3) *0.5);
    
    }
  }
}
}
}
void makeMove (){
  if (mouseX< 125 && mouseY < 125 && mouseX>=0 && mouseY >=0 && gameBoard[0][0]== " "){
      if (turn % 2 ==0){
        gameBoard [0][0]=player1;
      }else{
        gameBoard [0][0]=player2;
      }
  }
      if (mouseX > 135 && mouseX <250 && mouseY < 125 && gameBoard [0][1]==" "){
        if (turn % 2 ==0){
        gameBoard [0][1]=player1;
        }else{
          gameBoard [0][1]=player2;
      }
      }
      if (mouseX >250 && mouseY <125 && gameBoard[0][2]== " "){
          if (turn % 2 ==0){
        gameBoard [0][2]=player1;
        }else{
          gameBoard [0][2]=player2;
      }
      }
if (mouseX>0 && mouseX <125 && mouseY>125 && mouseY<250 && gameBoard [1][0] == " "){
  if (turn % 2 ==0){
  gameBoard [1][0]=player1;
  }else{
    gameBoard [1][0]=player2; 
}
}
if (mouseX >125 && mouseX<250 && mouseY>125 && mouseY<250 && gameBoard [1][1] == " "){
  if (turn % 2 ==0){
  gameBoard [1][1]=player1;
  }else{
  gameBoard [1][1]=player2;
}
}
if (mouseX >250 && mouseY >125 && mouseY <250 && gameBoard [1][2] == " "){
   if (turn % 2 ==0){
  gameBoard [1][2]=player1;
  }else{
  gameBoard [1][2]= player2; 
}
}
if (mouseX<125 && mouseY >250 && gameBoard [2][0] == " "){
   if (turn % 2 ==0){
  gameBoard [2][0]=player1;
  }else{
  gameBoard [2][0]=player2;
}
}
if (mouseX>125 && mouseX<250 && mouseY >250 && gameBoard [2][1]==" "){
   if (turn % 2 ==0){
  gameBoard [2][1]=player1;
  }else{
  gameBoard [2][1]=player2;
}
}
if (mouseX>250 && mouseY>250 && gameBoard [2][2]== " "){
   if (turn % 2 ==0){
  gameBoard [2][2]=player1;
  }else{
  gameBoard [2][2]=player2;
}
}
turn=turn+1;
}
void PickPiece (){
  if (mouseX<200 && hasChosen == false){
    player1 = "X";
    player2 = "O";
    hasChosen= true; 
  }else if (mouseX > 200 && hasChosen == false){
    player1 = "O";
    player2 = "X";
    hasChosen = true;
  }
}

void hasWon (){

}
