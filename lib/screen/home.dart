import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({super.key});

  List lgame = ['Survival','Rogue-Like','MOBA','RPG','TTRPG'];

  Widget build(BuildContext context){
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 160,
              decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage('asets/images/BGHitam.jpeg'),
                fit: BoxFit.cover),
              ),
              child: Center(
                child: Row(
                  children: const <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage:
                      AssetImage('asets/images/game.jpeg'),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Game-game yang Dimainkan',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 35,
              child: Text('Genre-Genre Game',
                  style: TextStyle(fontSize: 30)
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(lgame[index], style: TextStyle(fontSize: 25)),
                    ),
                  );
                },
                itemCount: lgame.length,
              ),
            )
          ],
        ),
    );
  }
}