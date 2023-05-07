import 'package:get/get.dart';
import 'package:planets_animation/Screen/Home/Model/HomeModel.dart';

class HomeControllo extends GetxController {
  RxList<HomeModel> Plantes = [
    HomeModel(
      Name: "Earth",
      Images: "Assets/Images/earth.png",
      KM: "510.1 million km²",
      MS: "510.1 million km²",
      Title: "merkury galaxy",
      Place: "3",
    ),
    HomeModel(
      Name: "Moon",
      Images: "Assets/Images/moon.png",
      KM: "510.1 million km²",
      MS: "510.1 million km²",
      Title: "merkury galaxy",
      Place: "4",
    ),
    HomeModel(
      Name: "Jupiter",
      Images: "Assets/Images/jupiter.png",
      KM: "510.1 million km²",
      MS: "510.1 million km²",
      Title: "merkury galaxy",
      Place: "5",
    ),
    HomeModel(
      Name: "Jupiter",
      Images: "Assets/Images/mars.png",
      KM: "510.1 million km²",
      MS: "510.1 million km²",
      Title: "merkury galaxy",
      Place: "6",
    ),
    HomeModel(
      Name: "Jupiter",
      Images: "Assets/Images/mercury.png",
      KM: "510.1 million km²",
      MS: "510.1 million km²",
      Title: "merkury galaxy",
      Place: "7",
    ),
    HomeModel(
      Name: "Jupiter",
      Images: "Assets/Images/neptune.png",
      KM: "510.1 million km²",
      MS: "510.1 million km²",
      Title: "merkury galaxy",
      Place: "8",
    ),
  ].obs;
}
