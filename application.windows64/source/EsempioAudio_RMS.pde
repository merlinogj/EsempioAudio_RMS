import processing.sound.*;
Amplitude amp;
AudioIn in;

void setup() {
  size(640, 360);
  //background(255);
    
  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
}      

void draw() {
  println(amp.analyze());
  background(255);
  fill(0);
  stroke(126);
  rect(200, 300, amp.analyze()*200, amp.analyze()*100);
  ellipse(100, 100, amp.analyze()*200, amp.analyze()*100);
}
