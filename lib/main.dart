import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/thumb.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.amberAccent,
            ),
            Row(
              children: <Widget>[
                Text(
                  'NAME:',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  'Nonymous Ray',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Text(
                  'CURRENT NINJA LEVEL:',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  '$ninjaLevel',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  'nonymous@ray.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
