import 'package:flutter/material.dart';
import 'package:get/get.dart';

BoxShadow boxShadow = BoxShadow(
  color: Theme.of(Get.context as BuildContext).shadowColor,
  spreadRadius: 2,
  blurRadius: 10,
  offset: const Offset(1, 4),
);
