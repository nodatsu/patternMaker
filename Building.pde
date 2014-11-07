// 建物クラス
class Building {
  int bSize;     // 建物のサイズ
  color bColor;  // 建物の色
  PVector position;
  float rotate; 

  Building(float px, float py) {
    bSize = 300;
    bColor = color(128);
    position = new PVector(px, py);
    rotate = random(PI);
  }
  
  // 更新
  void update() {
    smooth();
    stroke(0);
    strokeWeight(1);
    fill(bColor);

    pushMatrix();
    translate(position.x, position.y, bSize / 2.0);
    rotateZ(rotate);
    box(bSize);
    popMatrix();
  }
}
