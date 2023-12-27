final color BLACK = #000000;
final color WHITE = #ffffff;
final color BLUE = #2257f0;

int rectX = 50;
int rectY = 100;
int rectWidth = 400;
int rectHight = 100;
int devider = 5;
int textYOffSet = rectHight + 25;
int sliderPosition;
float sliderWidth = rectWidth / devider;

void setup() {
  size(500, 500);
}

void draw() {
  background(BLACK);
  sliderPosition = calculatePosition(rectX, rectWidth, devider);
  drawSlider(rectX, rectY, rectWidth, rectHight,sliderPosition);
  text(sliderPosition, rectX, rectY + textYOffSet);
}

void drawSlider(float x, float y, float rectWidth, float hight, int position) {
  noStroke();
  fill(WHITE);
  rect(x, y, rectWidth, hight);
  fill(BLUE);
  rect(x + position * sliderWidth, y, sliderWidth, hight);
}

int calculatePosition(float x, float rectWidth, int devider) {
 int position;
  
  if (mouseX < x) {
    position = 0;
  }
  else if (mouseX >= rectWidth + x) {
    position = devider - 1;
  }
  else {
    position = floor((mouseX - x) / sliderWidth);
  }
  return position;
}
