import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: noahCard(),
      ),
    );

class noahCard extends StatefulWidget {
  const noahCard({super.key});

  @override
  State<noahCard> createState() => _noahCardState();
}

class _noahCardState extends State<noahCard> {
  int userLvl = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Noah Id Card'),
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              userLvl++;
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.grey[800],
          ),
          backgroundColor: Colors.amberAccent[200],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/icon.png'),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[600],
              ),
              const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Noah Beckman',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Current Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '$userLvl',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'noah.beckman@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
