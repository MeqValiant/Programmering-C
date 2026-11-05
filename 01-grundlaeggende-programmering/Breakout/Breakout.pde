float ballY = 250;
float ballX = 195;
float ballspeedX = 1;
float ballspeedY = 4;
float paddleX = mouseX;
float paddleY = 450;

boolean touchingpaddleX = false;
boolean touchingpaddleY = false;


float b=50;
float l=13;

int rx1=5;
int rx2=60;
int rx3=115;
int rx4=170;
int rx5=225;
int rx6=280;
int rx7=335;
int rx8=5;
int rx9=60;
int rx10=115;
int rx11=170;
int rx12=225;
int rx13=280;
int rx14=335;
int rx15=5;
int rx16=60;
int rx17=115;
int rx18=170;
int rx19=225;
int rx20=280;
int rx21=335;
int rx22=5;
int rx23=60;
int rx24=115;
int rx25=170;
int rx26=225;
int rx27=280;
int rx28=335;
int rx29=5;
int rx30=60;
int rx31=115;
int rx32=170;
int rx33=225;
int rx34=280;
int rx35=335;
int rx36=5;
int rx37=60;
int rx38=115;
int rx39=170;
int rx40=225;
int rx41=280;
int rx42=335;
int rx43=5;
int rx44=60;
int rx45=115;
int rx46=170;
int rx47=225;
int rx48=280;
int rx49=335;
int rx50=5;
int rx51=60;
int rx52=115;
int rx53=170;
int rx54=225;
int rx55=280;
int rx56=335;

int ry1=5;
int ry2=5;
int ry3=5;
int ry4=5;
int ry5=5;
int ry6=5;
int ry7=5;
int ry8=23;
int ry9=23;
int ry10=23;
int ry11=23;
int ry12=23;
int ry13=23;
int ry14=23;
int ry15=41;
int ry16=41;
int ry17=41;
int ry18=41;
int ry19=41;
int ry20=41;
int ry21=41;
int ry22=59;
int ry23=59;
int ry24=59;
int ry25=59;
int ry26=59;
int ry27=59;
int ry28=59;
int ry29=77;
int ry30=77;
int ry31=77;
int ry32=77;
int ry33=77;
int ry34=77;
int ry35=77;
int ry36=95;
int ry37=95;
int ry38=95;
int ry39=95;
int ry40=95;
int ry41=95;
int ry42=95;
int ry43=113;
int ry44=113;
int ry45=113;
int ry46=113;
int ry47=113;
int ry48=113;
int ry49=113;
int ry50=131;
int ry51=131;
int ry52=131;
int ry53=131;
int ry54=131;
int ry55=131;
int ry56=131;


void setup() {
  size(390,500);
}

void draw() {
  background(0);
  fill(255);
  ellipse(ballX,ballY,20,20);
  noStroke();
  rect(mouseX-50,450,100,13);
  fill(247,92,247);
  rect(rx1,ry1,b,l);
   rect(rx2,ry2,b,l);
   rect(rx3,ry3,b,l);
   rect(rx4,ry4,b,l);
   rect(rx5,ry5,b,l);
   rect(rx6,ry6,b,l);
   rect(rx7,ry7,b,l);
   fill(235,68,82);
   rect(rx8,ry8,b,l);
   rect(rx9,ry9,b,l);
   rect(rx10,ry10,b,l);
   rect(rx11,ry11,b,l);
   rect(rx12,ry12,b,l);
   rect(rx13,ry13,b,l);
   rect(rx14,ry14,b,l);
   fill(235,132,68);
   rect(rx15,ry15,b,l);
   rect(rx16,ry16,b,l);
   rect(rx17,ry17,b,l);
   rect(rx18,ry18,b,l);
   rect(rx19,ry19,b,l);
   rect(rx20,ry20,b,l);
   rect(rx21,ry21,b,l);
   fill(237,226,100);
   rect(rx22,ry22,b,l);
   rect(rx23,ry23,b,l);
   rect(rx24,ry24,b,l);
   rect(rx25,ry25,b,l);
   rect(rx26,ry26,b,l);
   rect(rx27,ry27,b,l);
   rect(rx28,ry28,b,l);
   fill(126,217,95);
   rect(rx29,ry29,b,l);
   rect(rx30,ry30,b,l);
   rect(rx31,ry31,b,l);
   rect(rx32,ry32,b,l);
   rect(rx33,ry33,b,l);
   rect(rx34,ry34,b,l);
   rect(rx35,ry35,b,l);
   fill(70,117,194);
   rect(rx36,ry36,b,l);
   rect(rx37,ry37,b,l);
   rect(rx38,ry38,b,l);
   rect(rx39,ry39,b,l);
   rect(rx40,ry40,b,l);
   rect(rx41,ry41,b,l);
   rect(rx42,ry42,b,l);
   fill(116,68,194);
   rect(rx43,ry43,b,l);
   rect(rx44,ry44,b,l);
   rect(rx45,ry45,b,l);
   rect(rx46,ry46,b,l);
   rect(rx47,ry47,b,l);
   rect(rx48,ry48,b,l);
   rect(rx49,ry49,b,l);
   fill(93,188,222);
   rect(rx50,ry50,b,l);
   rect(rx51,ry51,b,l);
   rect(rx52,ry52,b,l);
   rect(rx53,ry53,b,l);
   rect(rx54,ry54,b,l);
   rect(rx55,ry55,b,l);
   rect(rx56,ry56,b,l);
   
   ballX = ballX + ballspeedX;
   ballY = ballY + ballspeedY;
   
   if(ballX>=25){
     ballspeedX = ballspeedX * -1;
   }
   if(ballX<=365){
     ballspeedX = ballspeedX * -1;
   }
   if(ballY<=12){
     ballspeedY = ballspeedY * -1;
   }
     if(ballY==paddleY){
       touchingpaddleY = true;
     }
     if(ballX==paddleX){
     touchingpaddleX = true;
     }
     if(ballY+10 >= paddleY && ballY-10 <= paddleY+13 && ballX >= mouseX-50 && ballX <= mouseX+50){
       ballspeedY = ballspeedY * -1;
     }
      if(ballY-10 <= ry56+13 && ballY-10 >= ry56 && ballX+10 >= rx56 && ballX-10 <= rx56+50){
   ballspeedY = ballspeedY * -1;
   ry56 = ry56 + 1000;
   }
   if(ballY-10 <= ry55+13 && ballY-10 >= ry55 && ballX+10 >= rx55 && ballX-10 <= rx55+50){
   ballspeedY = ballspeedY * -1;
   ry55 = ry55 + 1000;
   }
   if(ballY-10 <= ry54+13 && ballY-10 >= ry54 && ballX+10 >= rx54 && ballX-10 <= rx54+50){
   ballspeedY = ballspeedY * -1;
   ry54 = ry54 + 1000;
   }
   if(ballY-10 <= ry53+13 && ballY-10 >= ry53 && ballX+10 >= rx53 && ballX-10 <= rx53+50){
   ballspeedY = ballspeedY * -1;
   ry53 = ry53 + 1000;
   }
   if(ballY-10 <= ry52+13 && ballY-10 >= ry52 && ballX+10 >= rx52 && ballX-10 <= rx52+50){
   ballspeedY = ballspeedY * -1;
   ry52 = ry52 + 1000;
   }
   if(ballY-10 <= ry51+13 && ballY-10 >= ry51 && ballX+10 >= rx51 && ballX-10 <= rx51+50){
   ballspeedY = ballspeedY * -1;
   ry51 = ry51 + 1000;
   }
   if(ballY-10 <= ry50+13 && ballY-10 >= ry50 && ballX+10 >= rx50 && ballX-10 <= rx50+50){
   ballspeedY = ballspeedY * -1;
   ry50 = ry50 + 1000;
   }
   if(ballY-10 <= ry49+13 && ballY-10 >= ry49 && ballX+10 >= rx49 && ballX-10 <= rx49+50){
   ballspeedY = ballspeedY * -1;
   ry49 = ry49 + 1000;
   }
   if(ballY-10 <= ry48+13 && ballY-10 >= ry48 && ballX+10 >= rx48 && ballX-10 <= rx48+50){
   ballspeedY = ballspeedY * -1;
   ry48 = ry48 + 1000;
   }
   if(ballY-10 <= ry47+13 && ballY-10 >= ry47 && ballX+10 >= rx47 && ballX-10 <= rx47+50){
   ballspeedY = ballspeedY * -1;
   ry47 = ry47 + 1000;
   }
   if(ballY-10 <= ry46+13 && ballY-10 >= ry46 && ballX+10 >= rx46 && ballX-10 <= rx46+50){
   ballspeedY = ballspeedY * -1;
   ry46 = ry46 + 1000;
   }
   if(ballY-10 <= ry45+13 && ballY-10 >= ry45 && ballX+10 >= rx45 && ballX-10 <= rx45+50){
   ballspeedY = ballspeedY * -1;
   ry45 = ry45 + 1000;
   }
   if(ballY-10 <= ry44+13 && ballY-10 >= ry44 && ballX+10 >= rx44 && ballX-10 <= rx44+50){
   ballspeedY = ballspeedY * -1;
   ry44 = ry44 + 1000;
   }
   if(ballY-10 <= ry43+13 && ballY-10 >= ry43 && ballX+10 >= rx43 && ballX-10 <= rx43+50){
   ballspeedY = ballspeedY * -1;
   ry43 = ry43 + 1000;
   }
   if(ballY-10 <= ry42+13 && ballY-10 >= ry42 && ballX+10 >= rx42 && ballX-10 <= rx42+50){
   ballspeedY = ballspeedY * -1;
   ry42 = ry42 + 1000;
   }
   if(ballY-10 <= ry41+13 && ballY-10 >= ry41 && ballX+10 >= rx41 && ballX-10 <= rx41+50){
   ballspeedY = ballspeedY * -1;
   ry41 = ry41 + 1000;
   }
   if(ballY-10 <= ry40+13 && ballY-10 >= ry40 && ballX+10 >= rx40 && ballX-10 <= rx40+50){
   ballspeedY = ballspeedY * -1;
   ry40 = ry40 + 1000;
   }
   if(ballY-10 <= ry39+13 && ballY-10 >= ry39 && ballX+10 >= rx39 && ballX-10 <= rx39+50){
   ballspeedY = ballspeedY * -1;
   ry39 = ry39 + 1000;
   }
   if(ballY-10 <= ry38+13 && ballY-10 >= ry38 && ballX+10 >= rx38 && ballX-10 <= rx38+50){
   ballspeedY = ballspeedY * -1;
   ry38 = ry38 + 1000;
   }
   if(ballY-10 <= ry37+13 && ballY-10 >= ry37 && ballX+10 >= rx37 && ballX-10 <= rx37+50){
   ballspeedY = ballspeedY * -1;
   ry37 = ry37 + 1000;
   }
   if(ballY-10 <= ry36+13 && ballY-10 >= ry36 && ballX+10 >= rx36 && ballX-10 <= rx36+50){
   ballspeedY = ballspeedY * -1;
   ry36 = ry36 + 1000;
   }
   if(ballY-10 <= ry35+13 && ballY-10 >= ry35 && ballX+10 >= rx35 && ballX-10 <= rx35+50){
   ballspeedY = ballspeedY * -1;
   ry35 = ry35 + 1000;
   }
   if(ballY-10 <= ry34+13 && ballY-10 >= ry34 && ballX+10 >= rx34 && ballX-10 <= rx34+50){
   ballspeedY = ballspeedY * -1;
   ry34 = ry34 + 1000;
   }
   if(ballY-10 <= ry33+13 && ballY-10 >= ry33 && ballX+10 >= rx33 && ballX-10 <= rx33+50){
   ballspeedY = ballspeedY * -1;
   ry33 = ry33 + 1000;
   }
   if(ballY-10 <= ry32+13 && ballY-10 >= ry32 && ballX+10 >= rx32 && ballX-10 <= rx32+50){
   ballspeedY = ballspeedY * -1;
   ry32 = ry32 + 1000;
   }
   if(ballY-10 <= ry31+13 && ballY-10 >= ry31 && ballX+10 >= rx31 && ballX-10 <= rx31+50){
   ballspeedY = ballspeedY * -1;
   ry31 = ry31 + 1000;
   }
   if(ballY-10 <= ry30+13 && ballY-10 >= ry30 && ballX+10 >= rx30 && ballX-10 <= rx30+50){
   ballspeedY = ballspeedY * -1;
   ry30 = ry30 + 1000;
   }
   if(ballY-10 <= ry29+13 && ballY-10 >= ry29 && ballX+10 >= rx29 && ballX-10 <= rx29+50){
   ballspeedY = ballspeedY * -1;
   ry29 = ry29 + 1000;
   }
   if(ballY-10 <= ry28+13 && ballY-10 >= ry28 && ballX+10 >= rx28 && ballX-10 <= rx28+50){
   ballspeedY = ballspeedY * -1;
   ry28 = ry28 + 1000;
   }
   if(ballY-10 <= ry27+13 && ballY-10 >= ry27 && ballX+10 >= rx27 && ballX-10 <= rx27+50){
   ballspeedY = ballspeedY * -1;
   ry27 = ry27 + 1000;
   }
   if(ballY-10 <= ry26+13 && ballY-10 >= ry26 && ballX+10 >= rx26 && ballX-10 <= rx26+50){
   ballspeedY = ballspeedY * -1;
   ry26 = ry26 + 1000;
   }
   if(ballY-10 <= ry25+13 && ballY-10 >= ry25 && ballX+10 >= rx25 && ballX-10 <= rx25+50){
   ballspeedY = ballspeedY * -1;
   ry25 = ry25 + 1000;
   }
   if(ballY-10 <= ry24+13 && ballY-10 >= ry24 && ballX+10 >= rx24 && ballX-10 <= rx24+50){
   ballspeedY = ballspeedY * -1;
   ry24 = ry24 + 1000;
   }
   if(ballY-10 <= ry23+13 && ballY-10 >= ry23 && ballX+10 >= rx23 && ballX-10 <= rx23+50){
   ballspeedY = ballspeedY * -1;
   ry23 = ry23 + 1000;
   }
   if(ballY-10 <= ry22+13 && ballY-10 >= ry22 && ballX+10 >= rx22 && ballX-10 <= rx22+50){
   ballspeedY = ballspeedY * -1;
   ry22 = ry22 + 1000;
   }
   if(ballY-10 <= ry21+13 && ballY-10 >= ry21 && ballX+10 >= rx21 && ballX-10 <= rx21+50){
   ballspeedY = ballspeedY * -1;
   ry21 = ry21 + 1000;
   }
   if(ballY-10 <= ry20+13 && ballY-10 >= ry20 && ballX+10 >= rx20 && ballX-10 <= rx20+50){
   ballspeedY = ballspeedY * -1;
   ry20 = ry20 + 1000;
   }
   if(ballY-10 <= ry19+13 && ballY-10 >= ry19 && ballX+10 >= rx19 && ballX-10 <= rx19+50){
   ballspeedY = ballspeedY * -1;
   ry19 = ry19 + 1000;
   }
   if(ballY-10 <= ry18+13 && ballY-10 >= ry18 && ballX+10 >= rx18 && ballX-10 <= rx18+50){
   ballspeedY = ballspeedY * -1;
   ry18 = ry18 + 1000;
   }
   if(ballY-10 <= ry17+13 && ballY-10 >= ry17 && ballX+10 >= rx17 && ballX-10 <= rx17+50){
   ballspeedY = ballspeedY * -1;
   ry17 = ry17 + 1000;
   }
   if(ballY-10 <= ry16+13 && ballY-10 >= ry16 && ballX+10 >= rx16 && ballX-10 <= rx16+50){
   ballspeedY = ballspeedY * -1;
   ry16 = ry16 + 1000;
   }
   if(ballY-10 <= ry15+13 && ballY-10 >= ry15 && ballX+10 >= rx15 && ballX-10 <= rx15+50){
   ballspeedY = ballspeedY * -1;
   ry15 = ry15 + 1000;
   }
   if(ballY-10 <= ry14+13 && ballY-10 >= ry14 && ballX+10 >= rx14 && ballX-10 <= rx14+50){
   ballspeedY = ballspeedY * -1;
   ry14 = ry14 + 1000;
   }
   if(ballY-10 <= ry13+13 && ballY-10 >= ry13 && ballX+10 >= rx13 && ballX-10 <= rx13+50){
   ballspeedY = ballspeedY * -1;
   ry13 = ry13 + 1000;
   }
   if(ballY-10 <= ry12+13 && ballY-10 >= ry12 && ballX+10 >= rx12 && ballX-10 <= rx12+50){
   ballspeedY = ballspeedY * -1;
   ry12 = ry12 + 1000;
   }
   if(ballY-10 <= ry11+13 && ballY-10 >= ry11 && ballX+10 >= rx11 && ballX-10 <= rx11+50){
   ballspeedY = ballspeedY * -1;
   ry11 = ry11 + 1000;
   }
   if(ballY-10 <= ry10+13 && ballY-10 >= ry10 && ballX+10 >= rx10 && ballX-10 <= rx10+50){
   ballspeedY = ballspeedY * -1;
   ry10 = ry10 + 1000;
   }
   if(ballY-10 <= ry9+13 && ballY-10 >= ry9 && ballX+10 >= rx9 && ballX-10 <= rx9+50){
   ballspeedY = ballspeedY * -1;
   ry9 = ry9 + 1000;
   }
   if(ballY-10 <= ry8+13 && ballY-10 >= ry8 && ballX+10 >= rx8 && ballX-10 <= rx8+50){
   ballspeedY = ballspeedY * -1;
   ry8 = ry8 + 1000;
   }
   if(ballY-10 <= ry7+13 && ballY-10 >= ry7 && ballX+10 >= rx7 && ballX-10 <= rx7+50){
   ballspeedY = ballspeedY * -1;
   ry7 = ry7 + 1000;
   }
   if(ballY-10 <= ry6+13 && ballY-10 >= ry6 && ballX+10 >= rx6 && ballX-10 <= rx6+50){
   ballspeedY = ballspeedY * -1;
   ry6 = ry6 + 1000;
   }
   if(ballY-10 <= ry5+13 && ballY-10 >= ry5 && ballX+10 >= rx5 && ballX-10 <= rx5+50){
   ballspeedY = ballspeedY * -1;
   ry5 = ry5 + 1000;
   }
   if(ballY-10 <= ry4+13 && ballY-10 >= ry4 && ballX+10 >= rx4 && ballX-10 <= rx4+50){
   ballspeedY = ballspeedY * -1;
   ry4 = ry4 + 1000;
   }
   if(ballY-10 <= ry3+13 && ballY-10 >= ry3 && ballX+10 >= rx3 && ballX-10 <= rx3+50){
   ballspeedY = ballspeedY * -1;
   ry3 = ry3 + 1000;
   }
   if(ballY-10 <= ry2+13 && ballY-10 >= ry2 && ballX+10 >= rx2 && ballX-10 <= rx2+50){
   ballspeedY = ballspeedY * -1;
   ry2 = ry2 + 1000;
   }
   if(ballY-10 <= ry1+13 && ballY-10 >= ry1 && ballX+10 >= rx1 && ballX-10 <= rx1+50){
   ballspeedY = ballspeedY * -1;
   ry1 = ry1 + 1000;
   }
   if(ry1>=1000 && ry2>=1000 && ry3>=1000 && ry4>=1000 && ry5>=1000 && ry6>=1000 && ry7>=1000){
     PFont f;
     f = createFont("Times New Roman",32);
     background(0,200,0);
     textAlign(CENTER,CENTER);
     textSize(100);
     textFont(f);
     text("You won!", width/2, height/2);
}
}
void keyPressed(){
  if(key == ' '){
    background(0);
  fill(255);
  ellipse(ballX,ballY,20,20);
  noStroke();
  rect(mouseX-50,450,100,13);
  fill(247,92,247);
  rect(rx1,ry1,b,l);
   rect(rx2,ry2,b,l);
   rect(rx3,ry3,b,l);
   rect(rx4,ry4,b,l);
   rect(rx5,ry5,b,l);
   rect(rx6,ry6,b,l);
   rect(rx7,ry7,b,l);
   fill(235,68,82);
   rect(rx8,ry8,b,l);
   rect(rx9,ry9,b,l);
   rect(rx10,ry10,b,l);
   rect(rx11,ry11,b,l);
   rect(rx12,ry12,b,l);
   rect(rx13,ry13,b,l);
   rect(rx14,ry14,b,l);
   fill(235,132,68);
   rect(rx15,ry15,b,l);
   rect(rx16,ry16,b,l);
   rect(rx17,ry17,b,l);
   rect(rx18,ry18,b,l);
   rect(rx19,ry19,b,l);
   rect(rx20,ry20,b,l);
   rect(rx21,ry21,b,l);
   fill(237,226,100);
   rect(rx22,ry22,b,l);
   rect(rx23,ry23,b,l);
   rect(rx24,ry24,b,l);
   rect(rx25,ry25,b,l);
   rect(rx26,ry26,b,l);
   rect(rx27,ry27,b,l);
   rect(rx28,ry28,b,l);
   fill(126,217,95);
   rect(rx29,ry29,b,l);
   rect(rx30,ry30,b,l);
   rect(rx31,ry31,b,l);
   rect(rx32,ry32,b,l);
   rect(rx33,ry33,b,l);
   rect(rx34,ry34,b,l);
   rect(rx35,ry35,b,l);
   fill(70,117,194);
   rect(rx36,ry36,b,l);
   rect(rx37,ry37,b,l);
   rect(rx38,ry38,b,l);
   rect(rx39,ry39,b,l);
   rect(rx40,ry40,b,l);
   rect(rx41,ry41,b,l);
   rect(rx42,ry42,b,l);
   fill(116,68,194);
   rect(rx43,ry43,b,l);
   rect(rx44,ry44,b,l);
   rect(rx45,ry45,b,l);
   rect(rx46,ry46,b,l);
   rect(rx47,ry47,b,l);
   rect(rx48,ry48,b,l);
   rect(rx49,ry49,b,l);
   fill(93,188,222);
   rect(rx50,ry50,b,l);
   rect(rx51,ry51,b,l);
   rect(rx52,ry52,b,l);
   rect(rx53,ry53,b,l);
   rect(rx54,ry54,b,l);
   rect(rx55,ry55,b,l);
   rect(rx56,ry56,b,l);
   
   ballX = ballX + ballspeedX;
   ballY = ballY + ballspeedY;
   
   if(ballX>=25){
     ballspeedX = ballspeedX * -1;
   }
   if(ballX<=365){
     ballspeedX = ballspeedX * -1;
   }
   if(ballY<=12){
     ballspeedY = ballspeedY * -1;
   }
     if(ballY==paddleY){
       touchingpaddleY = true;
     }
     if(ballX==paddleX){
     touchingpaddleX = true;
     }
     if(ballY+10 >= paddleY && ballY-10 <= paddleY+13 && ballX >= mouseX-50 && ballX <= mouseX+50){
       ballspeedY = ballspeedY * -1;
     }
      if(ballY-10 <= ry56+13 && ballY-10 >= ry56 && ballX+10 >= rx56 && ballX-10 <= rx56+50){
   ballspeedY = ballspeedY * -1;
   ry56 = ry56 + 1000;
   }
   if(ballY-10 <= ry55+13 && ballY-10 >= ry55 && ballX+10 >= rx55 && ballX-10 <= rx55+50){
   ballspeedY = ballspeedY * -1;
   ry55 = ry55 + 1000;
   }
   if(ballY-10 <= ry54+13 && ballY-10 >= ry54 && ballX+10 >= rx54 && ballX-10 <= rx54+50){
   ballspeedY = ballspeedY * -1;
   ry54 = ry54 + 1000;
   }
   if(ballY-10 <= ry53+13 && ballY-10 >= ry53 && ballX+10 >= rx53 && ballX-10 <= rx53+50){
   ballspeedY = ballspeedY * -1;
   ry53 = ry53 + 1000;
   }
   if(ballY-10 <= ry52+13 && ballY-10 >= ry52 && ballX+10 >= rx52 && ballX-10 <= rx52+50){
   ballspeedY = ballspeedY * -1;
   ry52 = ry52 + 1000;
   }
   if(ballY-10 <= ry51+13 && ballY-10 >= ry51 && ballX+10 >= rx51 && ballX-10 <= rx51+50){
   ballspeedY = ballspeedY * -1;
   ry51 = ry51 + 1000;
   }
   if(ballY-10 <= ry50+13 && ballY-10 >= ry50 && ballX+10 >= rx50 && ballX-10 <= rx50+50){
   ballspeedY = ballspeedY * -1;
   ry50 = ry50 + 1000;
   }
   if(ballY-10 <= ry49+13 && ballY-10 >= ry49 && ballX+10 >= rx49 && ballX-10 <= rx49+50){
   ballspeedY = ballspeedY * -1;
   ry49 = ry49 + 1000;
   }
   if(ballY-10 <= ry48+13 && ballY-10 >= ry48 && ballX+10 >= rx48 && ballX-10 <= rx48+50){
   ballspeedY = ballspeedY * -1;
   ry48 = ry48 + 1000;
   }
   if(ballY-10 <= ry47+13 && ballY-10 >= ry47 && ballX+10 >= rx47 && ballX-10 <= rx47+50){
   ballspeedY = ballspeedY * -1;
   ry47 = ry47 + 1000;
   }
   if(ballY-10 <= ry46+13 && ballY-10 >= ry46 && ballX+10 >= rx46 && ballX-10 <= rx46+50){
   ballspeedY = ballspeedY * -1;
   ry46 = ry46 + 1000;
   }
   if(ballY-10 <= ry45+13 && ballY-10 >= ry45 && ballX+10 >= rx45 && ballX-10 <= rx45+50){
   ballspeedY = ballspeedY * -1;
   ry45 = ry45 + 1000;
   }
   if(ballY-10 <= ry44+13 && ballY-10 >= ry44 && ballX+10 >= rx44 && ballX-10 <= rx44+50){
   ballspeedY = ballspeedY * -1;
   ry44 = ry44 + 1000;
   }
   if(ballY-10 <= ry43+13 && ballY-10 >= ry43 && ballX+10 >= rx43 && ballX-10 <= rx43+50){
   ballspeedY = ballspeedY * -1;
   ry43 = ry43 + 1000;
   }
   if(ballY-10 <= ry42+13 && ballY-10 >= ry42 && ballX+10 >= rx42 && ballX-10 <= rx42+50){
   ballspeedY = ballspeedY * -1;
   ry42 = ry42 + 1000;
   }
   if(ballY-10 <= ry41+13 && ballY-10 >= ry41 && ballX+10 >= rx41 && ballX-10 <= rx41+50){
   ballspeedY = ballspeedY * -1;
   ry41 = ry41 + 1000;
   }
   if(ballY-10 <= ry40+13 && ballY-10 >= ry40 && ballX+10 >= rx40 && ballX-10 <= rx40+50){
   ballspeedY = ballspeedY * -1;
   ry40 = ry40 + 1000;
   }
   if(ballY-10 <= ry39+13 && ballY-10 >= ry39 && ballX+10 >= rx39 && ballX-10 <= rx39+50){
   ballspeedY = ballspeedY * -1;
   ry39 = ry39 + 1000;
   }
   if(ballY-10 <= ry38+13 && ballY-10 >= ry38 && ballX+10 >= rx38 && ballX-10 <= rx38+50){
   ballspeedY = ballspeedY * -1;
   ry38 = ry38 + 1000;
   }
   if(ballY-10 <= ry37+13 && ballY-10 >= ry37 && ballX+10 >= rx37 && ballX-10 <= rx37+50){
   ballspeedY = ballspeedY * -1;
   ry37 = ry37 + 1000;
   }
   if(ballY-10 <= ry36+13 && ballY-10 >= ry36 && ballX+10 >= rx36 && ballX-10 <= rx36+50){
   ballspeedY = ballspeedY * -1;
   ry36 = ry36 + 1000;
   }
   if(ballY-10 <= ry35+13 && ballY-10 >= ry35 && ballX+10 >= rx35 && ballX-10 <= rx35+50){
   ballspeedY = ballspeedY * -1;
   ry35 = ry35 + 1000;
   }
   if(ballY-10 <= ry34+13 && ballY-10 >= ry34 && ballX+10 >= rx34 && ballX-10 <= rx34+50){
   ballspeedY = ballspeedY * -1;
   ry34 = ry34 + 1000;
   }
   if(ballY-10 <= ry33+13 && ballY-10 >= ry33 && ballX+10 >= rx33 && ballX-10 <= rx33+50){
   ballspeedY = ballspeedY * -1;
   ry33 = ry33 + 1000;
   }
   if(ballY-10 <= ry32+13 && ballY-10 >= ry32 && ballX+10 >= rx32 && ballX-10 <= rx32+50){
   ballspeedY = ballspeedY * -1;
   ry32 = ry32 + 1000;
   }
   if(ballY-10 <= ry31+13 && ballY-10 >= ry31 && ballX+10 >= rx31 && ballX-10 <= rx31+50){
   ballspeedY = ballspeedY * -1;
   ry31 = ry31 + 1000;
   }
   if(ballY-10 <= ry30+13 && ballY-10 >= ry30 && ballX+10 >= rx30 && ballX-10 <= rx30+50){
   ballspeedY = ballspeedY * -1;
   ry30 = ry30 + 1000;
   }
   if(ballY-10 <= ry29+13 && ballY-10 >= ry29 && ballX+10 >= rx29 && ballX-10 <= rx29+50){
   ballspeedY = ballspeedY * -1;
   ry29 = ry29 + 1000;
   }
   if(ballY-10 <= ry28+13 && ballY-10 >= ry28 && ballX+10 >= rx28 && ballX-10 <= rx28+50){
   ballspeedY = ballspeedY * -1;
   ry28 = ry28 + 1000;
   }
   if(ballY-10 <= ry27+13 && ballY-10 >= ry27 && ballX+10 >= rx27 && ballX-10 <= rx27+50){
   ballspeedY = ballspeedY * -1;
   ry27 = ry27 + 1000;
   }
   if(ballY-10 <= ry26+13 && ballY-10 >= ry26 && ballX+10 >= rx26 && ballX-10 <= rx26+50){
   ballspeedY = ballspeedY * -1;
   ry26 = ry26 + 1000;
   }
   if(ballY-10 <= ry25+13 && ballY-10 >= ry25 && ballX+10 >= rx25 && ballX-10 <= rx25+50){
   ballspeedY = ballspeedY * -1;
   ry25 = ry25 + 1000;
   }
   if(ballY-10 <= ry24+13 && ballY-10 >= ry24 && ballX+10 >= rx24 && ballX-10 <= rx24+50){
   ballspeedY = ballspeedY * -1;
   ry24 = ry24 + 1000;
   }
   if(ballY-10 <= ry23+13 && ballY-10 >= ry23 && ballX+10 >= rx23 && ballX-10 <= rx23+50){
   ballspeedY = ballspeedY * -1;
   ry23 = ry23 + 1000;
   }
   if(ballY-10 <= ry22+13 && ballY-10 >= ry22 && ballX+10 >= rx22 && ballX-10 <= rx22+50){
   ballspeedY = ballspeedY * -1;
   ry22 = ry22 + 1000;
   }
   if(ballY-10 <= ry21+13 && ballY-10 >= ry21 && ballX+10 >= rx21 && ballX-10 <= rx21+50){
   ballspeedY = ballspeedY * -1;
   ry21 = ry21 + 1000;
   }
   if(ballY-10 <= ry20+13 && ballY-10 >= ry20 && ballX+10 >= rx20 && ballX-10 <= rx20+50){
   ballspeedY = ballspeedY * -1;
   ry20 = ry20 + 1000;
   }
   if(ballY-10 <= ry19+13 && ballY-10 >= ry19 && ballX+10 >= rx19 && ballX-10 <= rx19+50){
   ballspeedY = ballspeedY * -1;
   ry19 = ry19 + 1000;
   }
   if(ballY-10 <= ry18+13 && ballY-10 >= ry18 && ballX+10 >= rx18 && ballX-10 <= rx18+50){
   ballspeedY = ballspeedY * -1;
   ry18 = ry18 + 1000;
   }
   if(ballY-10 <= ry17+13 && ballY-10 >= ry17 && ballX+10 >= rx17 && ballX-10 <= rx17+50){
   ballspeedY = ballspeedY * -1;
   ry17 = ry17 + 1000;
   }
   if(ballY-10 <= ry16+13 && ballY-10 >= ry16 && ballX+10 >= rx16 && ballX-10 <= rx16+50){
   ballspeedY = ballspeedY * -1;
   ry16 = ry16 + 1000;
   }
   if(ballY-10 <= ry15+13 && ballY-10 >= ry15 && ballX+10 >= rx15 && ballX-10 <= rx15+50){
   ballspeedY = ballspeedY * -1;
   ry15 = ry15 + 1000;
   }
   if(ballY-10 <= ry14+13 && ballY-10 >= ry14 && ballX+10 >= rx14 && ballX-10 <= rx14+50){
   ballspeedY = ballspeedY * -1;
   ry14 = ry14 + 1000;
   }
   if(ballY-10 <= ry13+13 && ballY-10 >= ry13 && ballX+10 >= rx13 && ballX-10 <= rx13+50){
   ballspeedY = ballspeedY * -1;
   ry13 = ry13 + 1000;
   }
   if(ballY-10 <= ry12+13 && ballY-10 >= ry12 && ballX+10 >= rx12 && ballX-10 <= rx12+50){
   ballspeedY = ballspeedY * -1;
   ry12 = ry12 + 1000;
   }
   if(ballY-10 <= ry11+13 && ballY-10 >= ry11 && ballX+10 >= rx11 && ballX-10 <= rx11+50){
   ballspeedY = ballspeedY * -1;
   ry11 = ry11 + 1000;
   }
   if(ballY-10 <= ry10+13 && ballY-10 >= ry10 && ballX+10 >= rx10 && ballX-10 <= rx10+50){
   ballspeedY = ballspeedY * -1;
   ry10 = ry10 + 1000;
   }
   if(ballY-10 <= ry9+13 && ballY-10 >= ry9 && ballX+10 >= rx9 && ballX-10 <= rx9+50){
   ballspeedY = ballspeedY * -1;
   ry9 = ry9 + 1000;
   }
   if(ballY-10 <= ry8+13 && ballY-10 >= ry8 && ballX+10 >= rx8 && ballX-10 <= rx8+50){
   ballspeedY = ballspeedY * -1;
   ry8 = ry8 + 1000;
   }
   if(ballY-10 <= ry7+13 && ballY-10 >= ry7 && ballX+10 >= rx7 && ballX-10 <= rx7+50){
   ballspeedY = ballspeedY * -1;
   ry7 = ry7 + 1000;
   }
   if(ballY-10 <= ry6+13 && ballY-10 >= ry6 && ballX+10 >= rx6 && ballX-10 <= rx6+50){
   ballspeedY = ballspeedY * -1;
   ry6 = ry6 + 1000;
   }
   if(ballY-10 <= ry5+13 && ballY-10 >= ry5 && ballX+10 >= rx5 && ballX-10 <= rx5+50){
   ballspeedY = ballspeedY * -1;
   ry5 = ry5 + 1000;
   }
   if(ballY-10 <= ry4+13 && ballY-10 >= ry4 && ballX+10 >= rx4 && ballX-10 <= rx4+50){
   ballspeedY = ballspeedY * -1;
   ry4 = ry4 + 1000;
   }
   if(ballY-10 <= ry3+13 && ballY-10 >= ry3 && ballX+10 >= rx3 && ballX-10 <= rx3+50){
   ballspeedY = ballspeedY * -1;
   ry3 = ry3 + 1000;
   }
   if(ballY-10 <= ry2+13 && ballY-10 >= ry2 && ballX+10 >= rx2 && ballX-10 <= rx2+50){
   ballspeedY = ballspeedY * -1;
   ry2 = ry2 + 1000;
   }
   if(ballY-10 <= ry1+13 && ballY-10 >= ry1 && ballX+10 >= rx1 && ballX-10 <= rx1+50){
   ballspeedY = ballspeedY * -1;
   ry1 = ry1 + 1000;
   }
   ry1 = ry1 - 1000;
    ry2 = ry2 - 1000;
    ry3 = ry3 - 1000;
    ry4 = ry4 - 1000;
    ry5 = ry5 - 1000;
    ry6 = ry6 - 1000;
    ry7 = ry7 - 1000;
    ballX = width/2;
    ballY = height/2;
   
  }
  if(key == 'p'){
    ry1 = ry1 + 1000;
    ry2 = ry2 + 1000;
    ry3 = ry3 + 1000;
    ry4 = ry4 + 1000;
    ry5 = ry5 + 1000;
    ry6 = ry6 + 1000;
    ry7 = ry7 + 1000;
}
}
