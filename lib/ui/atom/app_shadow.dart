import 'package:flutter/material.dart';

class AppShadow {
  const AppShadow._();

  static final BoxShadow card = BoxShadow(
    color: Colors.black.withOpacity(0.15),
    blurRadius: 32,
    offset: const Offset(0, 4),
  );
}
