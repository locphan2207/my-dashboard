@JS('mdc')
library mdc;

import 'dart:html';
import 'package:js/js.dart';

@JS('ripple.MDCRipple')
class MDCRipple {
  external factory MDCRipple(Element el);
  external static MDCRipple attachTo(Element el);
}

@JS('topAppBar.MDCTopAppBar')
class MDCTopAppBar {
  external factory MDCTopAppBar(Element el);
  external static MDCTopAppBar attachTo(Element el);
  external setScrollTarget(Element el);
  external listen(String eventType, Function cb);
}

@JS('list.MDCList')
class MDCList {
  external factory MDCList(Element el);
  external static MDCList attachTo(Element el);
  external bool get wrapFocus;
  external set wrapFocus(bool val);
}

@JS('drawer.MDCDrawer')
class MDCDrawer {
  external factory MDCDrawer(Element el);
  external static MDCDrawer attachTo(Element el);
  external bool get open;
  external set open(bool val);
}

@JS('textField.MDCTextField')
class MDCTextField {
  external factory MDCTextField(Element el);
  external static MDCTextField attachTo(Element el);
  external void focus();
}

@JS('dialog.MDCDialog')
class MDCDialog {
  external factory MDCDialog(Element el);
  external static MDCDialog attachTo(Element el);
  external void open();
  external void close();
}

@JS('snackbar.MDCSnackbar')
class MDCSnackbar {
  external factory MDCSnackbar(Element el);
  external static MDCSnackbar attachTo(Element el);
  external void open();
  external void close();
}
