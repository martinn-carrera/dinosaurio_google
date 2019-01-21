int pulsador = 2;
String dato;

void setup() {
  Serial.begin(9600);
  pinMode(pulsador, INPUT);
}

void loop() {
  if (digitalRead(pulsador) == LOW) {
    dato = Serial.print('1');
    delay(200);
  }
}
