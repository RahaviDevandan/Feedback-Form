import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';

class Return extends StatelessWidget {
  const Return({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Form'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1557672172-298e090bd0f1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
              fit: BoxFit.cover),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hope we serve you better next time',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                color: Colors.purple[400],
                child: Text(
                  'Restart',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
      ),
    );
  }
}
