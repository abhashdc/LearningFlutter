import 'package:flutter/material.dart';

void main() => runApp(CreateButton());

class CreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practice Buttons'),
        ),
        body: Column(
          children: <Widget>[
            PracticeTextButton(
              buttonText: 'Simple button',
            ),
            PracticeElevatedButton(
              buttonText: 'Elevated Button',
            ),
            PracticeFloatingActionButton(),
            PracticeIconButton(),
            PracticeOutlinedButton(
              buttonText: 'Outlined Button',
            ),
            PracticeDropdownButton(),
            PracticePopupMenuButton(),
          ],
        ),
        // floatingActionButton: PracticeFloatingActionButton(),
      ),
    );
  }
}

class PracticeTextButton extends StatelessWidget {
  String buttonText;
  PracticeTextButton({this.buttonText = 'Text Button'});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child: Text(buttonText),
      ),
    );
  }
}

class PracticeDropdownButton extends StatefulWidget {
  @override
  State<PracticeDropdownButton> createState() => _PracticeDropdownButtonState();
}

class _PracticeDropdownButtonState extends State<PracticeDropdownButton> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ));
  }
}

class PracticeElevatedButton extends StatelessWidget {
  String buttonText;
  PracticeElevatedButton({this.buttonText = 'ElevatedButton'});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(buttonText),
      ),
    );
  }
}

class PracticeFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}

class PracticeIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: const Icon(Icons.volume_up),
        onPressed: () {},
      ),
    );
  }
}

class PracticeOutlinedButton extends StatelessWidget {
  String buttonText;
  PracticeOutlinedButton({this.buttonText = 'OutlinedButton'});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: () {},
        child: Text(buttonText),
      ),
    );
  }
}

class PracticePopupMenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PopupMenuButton(
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("First"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Second"),
                    value: 2,
                  )
                ]));
  }
}
