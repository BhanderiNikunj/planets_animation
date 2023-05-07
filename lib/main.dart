import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planets_animation/Screen/Detail/View/DetailScreen.dart';
import 'package:planets_animation/Screen/Home/View/HomeScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/detail',
          page: () => const DetailScreen(),
        ),
      ],
    ),
  );
}
