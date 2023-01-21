import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserProp extends StatelessWidget{
  const UserProp({super.key , required this.icon , required this.text,});
  final IconData icon;
  final String text;

  Widget build(BuildContext context){
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.blue[400],
            ),
            const SizedBox(
              width: 20,
            ),
            Text(text)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          //kontainer 1
          Container(
            height: 260,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asets/images/BGHitam.jpeg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  CircleAvatar(
                    backgroundImage:
                    AssetImage('asets/images/foto.jpeg'),
                    radius: 48,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Nama : Quraisy Fadel Syafiqo',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'NIM : 43A87006190380',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          //kontainer 2
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(children: [
                  Icon(Icons.info_outline),
                  SizedBox(width: 10,),
                  Text('Jurusan : S1 Teknik Informatika',style: TextStyle(fontSize: 18))
                ]),
                SizedBox(height: 20,),
                Row(children: [
                  Icon(Icons.info_outline),
                  SizedBox(width: 10,),
                  Text('Kelas : 07 B Pagi',style: TextStyle(fontSize: 18))
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}