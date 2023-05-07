import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planets_animation/Screen/Home/Controllor/HomeControllo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  Animation? position;
  HomeControllo homeControllo = Get.put(HomeControllo());
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 50));
    position = Tween<double>(begin: 40, end: 0).animate(animationController!);
    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  transform: GradientRotation(pi / 2),
                  colors: [
                    Color(0xff335492),
                    Color(0xff835AAE),
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(3, 6),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "${homeControllo.Plantes[index].Place}",
                            style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold,
                              fontSize: 100,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Transform.rotate(
                            angle: position!.value,
                            child: Container(
                              height: 150,
                              width: 150,
                              child: Image.asset(
                                '${homeControllo.Plantes[index].Images}',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(
                            -0.150,
                            -0.9,
                          ),
                          child: Text(
                            "${homeControllo.Plantes[index].Name}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.025, -0.5),
                          child: Text(
                            "Solar system",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.8, 0.8),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed('/detail', arguments: index);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "More Detail",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade700,
                                      fontSize: 30),
                                ),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.blueGrey.shade700,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: homeControllo.Plantes.length,
            ),
          ],
        ),
      ),
    );
  }
}
