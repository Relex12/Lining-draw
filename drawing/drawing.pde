void setup() {
  size(900, 900);
  background(255, 255, 255);
}

void draw() {
  int maxVal = height;

  // change this value to get different renderings
  // for better results, please choose step such as maxVal % step = 0
  int step = 15;


  // choose the figure you want to display
  int figure = 1;

  switch (figure) {
    case 0:
      test (maxVal, step, 0, 0, 1); break;
    case 1:
      figure1(maxVal, step); break;
    case 2:
      figure2(maxVal, step); break;
    case 3:
      figure3(maxVal, step); break;
    case 4:
      figure4(maxVal, step); break;
    case 5:
      figure5(maxVal, step); break;
  }
}
