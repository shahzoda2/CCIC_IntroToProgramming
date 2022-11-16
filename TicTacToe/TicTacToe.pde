String [][] gameBoard = {{" ", " ", " "},
                       {" ", " ", " "},
                       {" ", " ", " "}};
                       
void setup (){
  size (400,400);
  
}
void draw (){
drawGameBoard();
}
void drawGameBoard(){
strokeWeight (7);
line (135, 0, 135, 400);
line (268, 0, 268, 400);
line (0, 135, 400, 135);
line (0, 268, 400, 268);
}
void mouseClicked(){
if (mouseY <=135){
if (mouseX <=135){
if (gameBoard[0][0] == " "){
println (" ");
gameBoard [0][0] = "X";
line (0, 0, 135, 135);
line (0, 135, 135, 0);
}
}
}
if (mouseY <= 135){
if (mouseX > 135 && mouseX < 268){
if (gameBoard [0][1] == " "){
  println ("0, 1");
  gameBoard [0][1] = "X";
  line (135, 0, 268, 135);
line (135, 135, 268, 0);
}
}
}
if (mouseY <= 135){
if (mouseX > 268 && mouseX < 400){
if (gameBoard [0][2] == " "){
println ("0, 2");
gameBoard [0][1] = "X"; 
line (268, 0, 400, 135);
line (268, 135, 400, 0);
}
}
}
if (mouseY >=135 && mouseY <= 268){
if (mouseX <= 135){
if (gameBoard [0][2] == " "){
println ("0, 2");
gameBoard [0][2] = "X"; 
line (0, 135, 135, 268);
line (135, 135, 0, 268);
}
}
}
}
