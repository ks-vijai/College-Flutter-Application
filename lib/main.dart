import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'quotes.dart';
void main() =>
  runApp(MaterialApp(
    home: Home(),
  ));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget quotesTemplate(quote) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[500],
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<Quote> quotes = [
    Quote(author: 'Vijai',text: 'Live peacefully and enjoy lonely'),
    Quote(author: 'Vijai K S',text: 'Live peacefully and enjoy lonely')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes Application'),
        backgroundColor: Colors.orange[200],
        centerTitle: true,
      ),
      body:
         Padding(
           padding: const EdgeInsets.all(30.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children:
              quotes.map((e) => quotesTemplate(e)).toList(),
        ),
         ),
    );
  }
}
