import 'package:flutter/material.dart';

class ObjProxy {
  late StatefulWidget hasValue;
  late Widget hasntValue;

  hasValuePage(StatefulWidget hasValue) {
    this.hasValue = hasValue;
  }

  hasntValuePage(Widget hasntValue) {
    this.hasntValue = hasntValue;
  }

  apply(var list) {
    if (list.isEmpty) {
      return hasntValue;
    } else {
      return hasValue;
    }
  }
}
