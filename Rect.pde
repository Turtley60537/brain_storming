class Rect {

  float rectX;         //レクトの始点x座標
  float rectY;         //レクトの始点y座標
  float rectW;         //レクトの幅
  float rectH;         //レクトの高さ
  float rectX2;        //レクトの終点x座標
  float rectY2;        //レクトの終点y座標
  float rectVX;        //レクトのx座標方向速度
  float rectVY;        //レクトのy座標方向速度
  int rectFlag;          //始点の保存とドラッグするためのフラグ
  int rectFLAG;          //次のレクトに移るためのフラグ
  int fillFlag;          //選択したレクトを色塗り

  Rect() {
    rectVX=(float)random(1, 3);
    rectVY=(float)random(1, 3);
  }

  /////////////レクトを描く//////////////////////////////////////////////////////
  void display() {
    if (rectX!=0 && rectY!=0) {
      if (fillFlag==1) {
        fill(255, 255, 0, 100);
      } else {
        noFill();
      }
      stroke(0, 100, 0, 255);
      strokeWeight(20);
      strokeJoin(ROUND);
      rect(rectX, rectY, rectW, rectH);
    }
  }
  ////////レクトの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {

    if (R>=1) {
      rectClass[R-1].fillFlag = 0;
    }
    fillFlag = 1;
    if (rectFLAG==0) {
      if (mouseX>100 || mouseX<0 || mouseY>90 || mouseY<60) {
        if (rectFlag==0) {
          rectX=mouseX;
          rectY=mouseY;
          rectFlag=1;
        }
      }
      if (rectFlag==1) {
        rectW=mouseX-rectX;
        rectH=mouseY-rectY;
      }
    }
  }
  ///////////レクトの大きさを決定////////////////////////////////////////////////
  void released() {
    if (rectFLAG==0) {
      rectW=mouseX-rectX;
      rectH=mouseY-rectY;
    }
    R++;
  }
}