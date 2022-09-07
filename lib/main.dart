import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'quotes.dart';
import 'Quotes_card.dart';
void main() =>
  runApp(MaterialApp(
    home: Home(),
  ));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
              quotes.map((quote) => Quotes_card(quote: quote)).toList(),
        ),
         ),
    );
  }
}

