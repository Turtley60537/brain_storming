Rect [] rectClass = new Rect [500];

int R;    //レクトの配列を選択する変数

void setup() {
  size(1000, 600);
  for (int i=0; i<500; i++) {
    rectClass[i] = new Rect();
  }
  //for (int i=0; i<rectClass.length; i++) {
    //rectClass[i].fillFlag = 0;
  //}
  //rectClass[0].fillFlag = 1;
}

void draw() {
  background(255);
  for (int i=0; i<500; i++) {
    rectClass[i].display();
  }
}

void mouseDragged() {
  rectClass[R].dragged();
}

void mouseReleased() {
  rectClass[R].released();
}