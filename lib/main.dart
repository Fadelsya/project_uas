import 'package:flutter/material.dart';
import 'package:project_uas/screen/home.dart';
import 'package:project_uas/screen/camera.dart';
import 'package:project_uas/screen/about.dart';
import 'package:get/get.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List screens =  [
    Home(),
    Camera(),
    About(),
  ];
  var screenIndex = 0.obs;

  MainApp({super.key});

  Widget build(BuildContext context){
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Project UAS',
        home: Obx(
              () => Scaffold(
            appBar: AppBar(
              title: const Text('DataBase Game'),
              backgroundColor: Colors.green
            ),
            body: Center(
              child: screens[screenIndex.value],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: screenIndex.value,
              items: const[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "About")
              ],
              onTap: (value){
                screenIndex.value = value;
              },
            ),
          ),
        )
    );
  }
}