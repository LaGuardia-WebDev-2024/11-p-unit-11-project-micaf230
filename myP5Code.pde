var snowX = [50, 100, 150, 200, 250, 300, 350, 400, 450];
var snowY = [30, 60, 20, 40, 10, 70, 50, 15, 25];
var snowSize = [30, 25, 20, 35, 15, 25, 30, 20, 25];

var treeColors = [
  color(34, 139, 34),
  color(46, 139, 87),
  color(60, 179, 113),
  color(144, 238, 144)
];

void setup() {
  size(600, 450);
  background(173, 216, 230);

  drawSnow();
  drawTrees();

  fill(255);
  rect(0, 350, 600, 100);
  textSize(80);
  text("⛄", 500, 380);
}

void drawSnow() {
  textSize(30);
  for (int i = 0; i < snowX.length; i++) {
    textSize(snowSize[i]);
    text("❆", snowX[i], snowY[i]);
  }
}

void drawTrees() {
  for (int x = 70; x < 600; x += 150) {
    fill(139, 69, 19); // brown trunk
    rect(x + 10, 300, 20, 50);
    int c = int(random(treeColors.length));
    fill(treeColors[c]);

    ellipse(x + 20, 290, 60, 60);
  }
}
