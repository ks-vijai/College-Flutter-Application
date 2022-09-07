import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'quotes.dart';

class Quotes_card extends StatelessWidget {
  final Quote quote;
  Function delete;
  Quotes_card({ this.quote , this.delete});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 14.0),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete Quote'),
            )
          ],
        ),
      ),
    );
  }
}
