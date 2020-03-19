import processing.sound.*;
Amplitude amp;
AudioIn in;

void setup() {
  fullScreen(P2D, 1);
  //size(640, 360);
  //background(0);

  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
}

void draw() {
  background(0);
  noStroke();
  //rect(1200, 300, amp.analyze()*200, amp.analyze()*100);
  ellipse(500, 300, 1000, amp.analyze()*600);
}
