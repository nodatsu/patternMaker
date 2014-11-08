// ライトのクラス
class Light {

  Light () {
  }

  // 更新
  void update() {
    switch (mode) {
    case 0:
    case 1:
      ambientLight(255, 255, 255);
      break;
    case 2:
    case 3:
      ambientLight(0, 0, 0);
      directionalLight(255, 255, 255, 0, 0, -1);
      break;
    }
  }
}
