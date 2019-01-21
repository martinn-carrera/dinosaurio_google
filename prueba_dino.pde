import processing.serial.*;
int k=5;
int a=500;
int pie=0;
int y=0;
int x=0;
int score=0;
int n=0;
String dato;

int dato_numerico;
Serial port;

void setup() {
  size(900, 400);
  background(255);
  port=new Serial(this, "COM5", 9600);

}
void draw() {
  if (port.available()>0){ 
    dato=port.readString();
    dato_numerico=int(dato);
   }
   
  background(255);
  Dinosaurio();
  pies();
  delay(300);
  score++;
  fill(0);
  textSize(27);
  text("Score: ",750,100);
  text(score, 850, 100);  
  x=x+100;  

  if(x>=900)
  x=0;
  else
  ellipse(900-x,228,10,73);
  
  if(dato_numerico==1){
    y=400;
    delay(100);
    dato_numerico=0;
  }else
    y=0;
  }

void Dinosaurio() {

  beginShape();
  fill(0);
  vertex(300/k, (270+a-y)/k);
  vertex(300/k, (250+a-y)/k);
  vertex(460/k, (250+a-y)/k);
  vertex(460/k, (270+a-y)/k);
  vertex(480/k, (270+a-y)/k);
  vertex(480/k, (370+a-y)/k);
  vertex(380/k, (370+a-y)/k);
  vertex(380/k, (390+a-y)/k);
  vertex(440/k, (390+a-y)/k);
  vertex(440/k, (410+a-y)/k);
  vertex(360/k, (410+a-y)/k);
  vertex(360/k, (450+a-y)/k);
  vertex(400/k, (450+a-y)/k);
  vertex(400/k, (490+a-y)/k);
  vertex(380/k, (490+a-y)/k);
  vertex(380/k, (470+a-y)/k);
  vertex(360/k, (470+a-y)/k);
  vertex(360/k, (540+a-y)/k);
  vertex(340/k, (540+a-y)/k);
  vertex(340/k, (570+a-y)/k);
  vertex(320/k, (570+a-y)/k);
  vertex(320/k, (590+a-y)/k);
  vertex(300/k, (590+a-y)/k);

  if (pie==0 && y==0) {
    vertex(300/k, (610+a-y)/k);
    vertex(320/k, (610+a-y)/k);
    vertex(320/k, (630+a-y)/k); //otro pie
    vertex(280/k, (630+a-y)/k); 
    vertex(280/k, (590+a-y)/k);
    vertex(260/k, (590+a-y)/k);
  } else {
    vertex(300/k, (670+a-y)/k);
    vertex(320/k, (670+a-y)/k);
    vertex(320/k, (690+a-y)/k);
    vertex(280/k, (690+a-y)/k);
    vertex(280/k, (630+a-y)/k);
    vertex(260/k, (630+a-y)/k);
  }
  vertex(260/k, (610+a-y)/k);
  vertex(240/k, (610+a-y)/k);
  vertex(240/k, (630+a-y)/k);
  vertex(220/k, (630+a-y)/k);
  vertex(220/k, (650+a-y)/k);
  vertex(200/k, (650+a-y)/k);

  if(pie==0 && y==0) {
    vertex(200/k, (670+a-y)/k);
    vertex(220/k, (670+a-y)/k);
    vertex(220/k, (690+a-y)/k);
    vertex(180/k, (690+a-y)/k);
  } else {
    vertex(220/k, (610+a-y)/k);
    vertex(220/k, (650+a-y)/k);
    vertex(210/k, (650+a-y)/k);
    vertex(220/k, (650+a-y)/k); //filo del pie 690
    vertex(180/k, (650+a-y)/k);
  }
  vertex(180/k, (610+a-y)/k);
  vertex(160/k, (590+a-y)/k);
  vertex(140/k, (590+a-y)/k);
  vertex(140/k, (570+a-y)/k);
  vertex(120/k, (570+a-y)/k);
  vertex(120/k, (550+a-y)/k);
  vertex(100/k, (550+a-y)/k);
  vertex(100/k, (530+a-y)/k);
  vertex(80/k, (530+a-y)/k);
  vertex(80/k, (510+a-y)/k);
  vertex(80/k, (410+a-y)/k);
  vertex(100/k, (410+a-y)/k);
  vertex(100/k, (450+a-y)/k);
  vertex(120/k, (450+a-y)/k);
  vertex(120/k, (470+a-y)/k);
  vertex(140/k, (470+a-y)/k);
  vertex(140/k, (490+a-y)/k);
  vertex(180/k, (490+a-y)/k);
  vertex(180/k, (470+a-y)/k);
  vertex(200/k, (470+a-y)/k);
  vertex(200/k, (450+a-y)/k);
  vertex(230/k, (450+a-y)/k);
  vertex(230/k, (430+a-y)/k);
  vertex(260/k, (430+a-y)/k);
  vertex(260/k, (410+a-y)/k);
  vertex(280/k, (410+a-y)/k);
  vertex(280/k, (270+a-y)/k);
  vertex(300/k, (270+a-y)/k);
  endShape();
  fill(color(255,0,0));
  rect(320/k, (290+a-y)/k, 20/k, 20/k);
  line(0, 238, 900, 238);
  y=0;

}
void pies() {
  pie=1-pie;
}
