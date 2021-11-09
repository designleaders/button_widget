import 'package:flutter/material.dart';

void main() => runApp(Button_Widget());

class Button_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Buttons Widget',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Buttons',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlineButton(
                    color: Colors.white,
                    textColor: Colors.orangeAccent,
                    child: Text('Outline'),
                    onPressed: () => print('outline clicked'),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                          color: Colors.orange,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Text('Outlined-1'),
                    onPressed: () => print('outlined1 clicked'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.red,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                    ),
                    child: Text('Outlined-2'),
                    onPressed: () => print('outlined2 clicked'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    color: Colors.red,
                    child: Text('Raise Button'),
                    onPressed: () => print('flat button clicked'),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: Text('Text Button-1'),
                    onPressed: () => print('FText button 1 clicked'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('Text Button-2'),
                    onPressed: () => print('Text button clicked'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    color: Colors.white,
                    textColor: Colors.orangeAccent,
                    child: Text('Flat Button'),
                    onPressed: () => print('flat button clicked'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                    ),
                    child: Text('\elevated button-1'),
                    onPressed: () => print('elevated-1 clicked'),
                  ),
                  ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.red,
                    ),
                    child: Text('Flat Button-2'),
                    onPressed: () => print('elevated 2 clicked'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
