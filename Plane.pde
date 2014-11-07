// 地面のクラス
class Plane {
  float pSize;   // 平面の範囲
  color pColor;  // 平面の色
  int bNum;      // 建物の数
  int bSize;     // 建物のサイズ
  color bColor;  // 建物の色

  // コンストラクタ
  Plane () {
    pSize = 5000;
    pColor = color(0, 255, 0);
    bNum = 10;
    bSize = 100;
    bColor = color(128);
  }

  // 更新
  void update() {
    stroke(0);
    strokeWeight(1);

    fill(pColor);
    beginShape(QUADS);
    vertex(-pSize, -pSize, 0);
    vertex(-pSize,  pSize, 0);
    vertex( pSize,  pSize, 0);
    vertex( pSize, -pSize, 0);
    endShape();

    fill(bColor);
    for (float v = -pSize; v <= pSize; v += (pSize * 1.0 / bNum))
    {
      for (float u = -pSize; u <= pSize; u += (pSize * 1.0 / bNum))
      {
        pushMatrix();
        translate(u, v, bSize / 2.0);
        box(bSize);
        popMatrix();
      }
    }
  }
}

