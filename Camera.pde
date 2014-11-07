// カメラのクラス
class Camera {
  PVector eye    = new PVector();
  PVector center = new PVector();
  PVector up     = new PVector();

  // コンストラクタ
  Camera() {
    this.reset();
  }

  // 更新
  void update() {
    // カメラの位置設定
    beginCamera();
    perspective(PI/3.0, width * 1.0/height, eye.z/10.0, eye.z*10.0);

    camera(eye.x, eye.y, eye.z,
           center.x, center.y, center.z,
           up.x, up.y, up.z);
    endCamera();
  }
  
  // リセット
  void reset()
  {
    // カメラの座標
    eye.set(0, 0, 5000);
    center.set(0, 0, 0);
    up.set(0, 1, 0);
  }
}
