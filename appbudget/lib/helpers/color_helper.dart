import 'package:flutter/material.dart';

// ignore: missing_return
Color getColor(BuildContext context, double percent) {
  if (percent >= 0.75) {
    return Colors.purple;
  } else if (percent >= 0.50) {
    return Theme.of(context).primaryColor;
  } else if (percent >= 0.25) {
    return Colors.orange;
  } else if (percent >= 0.0) {
    return Colors.red[600];
  }
}
