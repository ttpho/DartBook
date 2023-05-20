mixin OnClickListener {
  void onClick() {
    print("view clicked");
  }
}

mixin OnDragListener {
  void onDragging() {
    print("start drag");
    Future.delayed(Duration(seconds: 1)).then(
      (value) => {print("end drag")},
    );
  }
}

abstract class Button {}

class ButtonAddToCart extends Button with OnClickListener, OnDragListener {}

class ButtonPayment extends Button with OnClickListener {}

void main(List<String> args) {
  final ButtonPayment btnPayment = ButtonPayment();
  btnPayment.onClick(); // view clicked

  final ButtonAddToCart btnAddToCart = ButtonAddToCart();
  btnAddToCart.onClick(); // view clicked
  btnAddToCart.onDragging(); // start drag -> end drag
}
