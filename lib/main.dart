import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() =>
  runApp(MaterialApp(
    home: Home(),
  ));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int rank=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('College ID App'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[700],
        onPressed: () {
          setState(() {
            rank++;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 40.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[200],
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.grey[200],
              letterSpacing: 2.0,
            ),
            ),
           SizedBox(height:10.0),
            Text('VIJAI K S',
              style: TextStyle(
                color: Colors.yellow[200],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height:30.0),
            Text('COLLEGE',
              style: TextStyle(
                color: Colors.grey[200],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:10.0),
            Text('KONGU ENGINEERING COLLEGE',
              style: TextStyle(
                color: Colors.yellow[200],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height:30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.yellowAccent,
                ),
                SizedBox(width: 20.0),
                Text('vijaiks.19cse@kongu.edu',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 20.0,
                ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Text('RANK',
              style: TextStyle(
                color: Colors.grey[200],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:10.0),
            Text('$rank',
              style: TextStyle(
                color: Colors.yellow[200],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      )
    );
  }
}
























 // class Home extends StatelessWidget {
 //   @override
 //   Widget build(BuildContext context) {
 //     return Scaffold(
 //       appBar: AppBar(
 //         title: Text('first app'),
 //         centerTitle: true,
 //         backgroundColor: Colors.orange[200],
 //       ),
 //       body: Column(
 //         mainAxisAlignment: MainAxisAlignment.spaceAround,
 //         crossAxisAlignment: CrossAxisAlignment.end,
 //         children: [
 //           Expanded(
 //             flex: 3,
 //             child: Container(
 //               color: Colors.orange[200],
 //               child: Text('second app'),
 //               padding: EdgeInsets.all(20.0),
 //               margin: EdgeInsets.all(20.0),
 //             ),
 //           ),
 //           Expanded(
 //             flex:2,
 //             child: Container(
 //               color: Colors.orange[200],
 //               child: Text('second app'),
 //               padding: EdgeInsets.all(20.0),
 //               margin: EdgeInsets.all(20.0),
 //             ),
 //           ),
 //           Expanded(
 //             flex:2,
 //             child: Container(
 //               color: Colors.orange[200],
 //               child: Text('second app'),
 //               padding: EdgeInsets.all(20.0),
 //               margin: EdgeInsets.all(20.0),
 //             ),
 //           ),
 //         ],
 //       ),
 //       floatingActionButton: FloatingActionButton(
 //         child: Text('third app'),
 //         backgroundColor: Colors.orange[300],
 //       ),
 //     );
 //   }
 // }
