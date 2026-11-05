int[] score = {12, 25, 18, 31, 9, 27};
int hoejeste = score[0];
void setup(){
for (int i = 1; i < score.length; i++) {
  if(hoejeste<score[i]){
    hoejeste=score[i];
}
}
}
void draw(){
  delay(1000);
println(hoejeste);
}
