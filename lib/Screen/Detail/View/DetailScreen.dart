import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planets_animation/Screen/Home/Controllor/HomeControllo.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? position;

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

  int i = Get.arguments;
  HomeControllo homeControllo = Get.put(HomeControllo());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment(-0.95, -0.95),
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 30,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.8, -0.6),
              child: Text(
                '${homeControllo.Plantes[i].Place}',
                style: TextStyle(
                  color: Colors.black12,
                  fontSize: 200,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.95, -0.95),
              child: Transform.rotate(
                angle: position!.value,
                child: Container(
                    height: 300,
                    width: 300,
                    child: Image.asset(
                      '${homeControllo.Plantes[i].Images}',
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Align(
              alignment: Alignment(-0.85, -0.1),
              child: Text(
                '${homeControllo.Plantes[i].Name}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.8, 0),
              child: Text(
                '${homeControllo.Plantes[i].Title}',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.8, 0.10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "${homeControllo.Plantes[i].KM}",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "${homeControllo.Plantes[i].MS}",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, 0.4),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
