// 地面のクラス
class Plane {
  float pSize;   // 平面の範囲
  color pColor;  // 平面の色
  int bNumU, bNumV;  // 建物の数
  Building[][] buildings;  // 建物群

  Plane () {
    pSize = 5000;
    pColor = color(0, 64, 0);

    bNumU = 40;
    bNumV = 40;
    buildings = new Building[bNumV * 2 + 1][bNumU *2 + 1];

    float meshU = pSize * 1.0 / bNumU;
    float meshV = pSize * 1.0 / bNumV;
    for (int iv = -bNumV; iv < bNumV; iv++) {
      for (int iu = -bNumU; iu < bNumU; iu++) {
        buildings[iv + bNumV][iu + bNumU] = new Building(iv * meshV, iu * meshU, meshV, meshU);
      }
    }
  }

  // 更新
  void update() {
    smooth();
    stroke(0);
    strokeWeight(1);

    fill(pColor);
    beginShape(QUADS);
    vertex(-pSize, -pSize, 0);
    vertex(-pSize,  pSize, 0);
    vertex( pSize,  pSize, 0);
    vertex( pSize, -pSize, 0);
    endShape();

    for (int iv = -bNumV; iv < bNumV; iv++) {
      for (int iu = -bNumU; iu < bNumU; iu++) {
        buildings[iv + bNumV][iu + bNumU].update();
      }
    }
  }
}

