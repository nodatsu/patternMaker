// マウスホイール処理用
import java.awt.event.*;

void mouseInit()
{
  // マウスホイール処理(リスナ生成、登録)
  MWListener myMWListener = new MWListener();
  this.addMouseWheelListener(myMWListener);
}

void mouseDragged()
{
  // マウスの前位置と現在位置の差から移動、回転を決定
  if (mouseButton == LEFT) {
    // オブジェクトの位置移動(X, Y方向)
    objPos.x += mouseX - pmouseX;
    objPos.y += mouseY - pmouseY;
  }
  else {
    // オブジェクトの回転(X, Y, Z方向)
    if (keyPressed && keyCode == SHIFT) {
      objRotY += PI * (mouseX - pmouseX) / max(width, height);
    }
    else {
      objRotZ -= PI * (mouseX - pmouseX) / max(width, height);
      objRotX -= PI * (mouseY - pmouseY) / max(width, height);
    }
  }
}

// マウスホイール処理用リスナクラス
class MWListener implements MouseWheelListener {
  public void mouseWheelMoved(MouseWheelEvent ev) {
    if (ev.getWheelRotation() > 0) {
      // オブジェクトの位置移動(Z方向)
      objPos.z += 100;
    }
    else {
      // オブジェクトの位置移動(Z方向)
      objPos.z -= 100;
    }
  }
}
