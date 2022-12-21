import 'dart:html';

import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class Label extends Component with MixinDisable {
  Label() : super('Label') {
    shrinkable = false;
    element.style.overflow = 'hidden';
    vAlign = Align.center;
    hAlign = Align.start;
  }

  Stream<MouseEvent> get onClick => element.onClick.where((event) => !disabled);

  @override
  Element element = DivElement();

  set caption(String caption) => element.text = caption;

  String get caption => element.text ?? '';

  @override
  List<Element> get disableElements => [element];
}
