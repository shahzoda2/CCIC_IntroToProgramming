int matrix [][] = 
{ {2,9,0}, {1,3,5}, {2,4,7}, {8,1,5}}; 
for(int i=0; i<matrix.length-1; i++) {
  println ();
  for (int j=0; j<matrix[0].length+1; j++){
    print (matrix[j][i] + " ");
  }
}
