import 'package:flutter/material.dart';
import 'package:hello_world/return.dart';

class Home6 extends StatelessWidget {
  const Home6({Key? key}) : super(key: key);

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
                  'https://images.unsplash.com/photo-1513759565286-20e9c5fad06b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
              fit: BoxFit.cover),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'How Likely are you to come back here?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
              Center(
                child: SliderContainer(),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Return()));
                },
                color: Colors.purple[400],
                child: Text(
                  'Next',
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

class SliderContainer extends StatefulWidget {
  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  Color getColor() {
    if (_val < 20) {
      return Colors.red;
    } else if (_val < 30) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }

  static double _lowerValue = 0.0;
  static double _upperValue = 30.0;
  double _val = 0.0;
  RangeValues values = RangeValues(_lowerValue, _upperValue);
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
        data: SliderTheme.of(context).copyWith(
          trackHeight: 15,
          overlayColor: Colors.transparent,
          minThumbSeparation: 100,
          rangeThumbShape: RoundRangeSliderThumbShape(
            enabledThumbRadius: 10,
            disabledThumbRadius: 10,
          ),
        ),
        child: Slider(
          value: _val,
          onChanged: (double value) {
            setState(() {
              _val = value;
            });
          },
          activeColor: getColor(),
          inactiveColor: Colors.purple,
          label: _val.round().toString(),
          min: 0.0,
          max: 30.0,
        ));
  }
}
