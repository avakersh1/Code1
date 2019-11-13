class Ball {
  float x;
  float y;
  float dx; 
  float dy;
  float r;
  float c;
  float hue;
  float brightness;
  SoundFile sound;

  Ball(float _x, float _y, PApplet appletInstance) {
    x = _x;
    y = _y;
    dx = random(-5, 5);
    dy = random(-5, 5);
    r = random(MIN_RADIUS, MAX_RADIUS);
    hue = random(55, 59);
    brightness = random(130, 170);
    sound = new SoundFile(appletInstance, "echo.wav");
  }

  void update() {
    boolean collision = false;

    if (x < r || x > width - r) {
      dx *= -1;
      collision = true;
    }
    if (y < r || y > height - r) {
      dy *= -1;
      collision = true;
    }

    x += dx;
    y += dy;

    if (collision) {
      float soundFreq = map(r, MIN_RADIUS, MAX_RADIUS, 2.0, 0.2);
      float soundAmp = map(r, MIN_RADIUS, MAX_RADIUS, 0.1, 0.6);
      playSound(soundFreq, soundAmp);
      hue = random(55, 59);
      brightness = random(130, 170);
    }
  }

  void display() {
    noStroke();
    fill(hue, 40, brightness);
    ellipse(x, y, r*2, r*2);
  }

  void playSound(float freq, float amp) {
    sound.stop();
    sound.jump(0);
    sound.play(random(freq - 0.1, freq + 0.1), random(amp - 0.1, amp + 0.1));
  }
}
