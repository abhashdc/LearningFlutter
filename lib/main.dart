import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
      MaterialApp(
        home: SimpleForm(),
      ),
    );

class SimpleForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double devideWidth =
        MediaQuery.of(context).size.width; //Responsive in all devices
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill up form'),
      ),
      body: Container(
        color: Colors.white,
        width: devideWidth,
        margin: EdgeInsets.all((devideWidth * 2) / 100),
        child: Center(
          child: CustomForm(),
        ),
      ),
    );
  }
}

class CustomForm extends StatefulWidget {
  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var currentFocus;

  void unfocus() {
    currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    //I am using listview to manage height for smaller screens. Builder is not needed because we have a fixed quantity of items.
    return Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          children: [
            CustomImage(),
            CustomTextWidget(
              labelTextName: 'First Name',
            ),
            CustomTextWidget(
              labelTextName: 'Middle Name',
            ),
            CustomTextWidget(
              labelTextName: 'Last Name',
            ),
            CustomTextWidget(
              labelTextName: 'Email',
            ),
            CustomTextWidget(
              labelTextName: 'Phone Number',
              isOnlyNumber: true, //Configuration to enable taking just numbers
            ),
            CustomTextWidget(
              labelTextName: 'Password',
              isPassword: true, //Configuration to enable password
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('Gender'),
            ),
            CustomRadioButton(),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('Hobbies'),
            ),
            CustomCheckBox(),
            CustomTextWidget(
              labelTextName: 'Short Description',
              isShortDescription: true, //Configuration to enable password
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              child: ElevatedButton(
                onPressed: () {
                  FocusScope.of(context)
                      .unfocus(); //To dismiss onscreen keyboard after clicking signup
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Form submitted'),
                        backgroundColor: Colors.lightGreen,
                      ),
                    );
                  }
                },
                child: const Text('Sign Up'),
              ),
            ),
          ],
        ));
  }
}

class CustomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
          radius: 99,
          backgroundImage: NetworkImage(
              'https://mangathrill.com/wp-content/uploads/2020/04/584d4e5aa50a94b3e370dc185f2107af1280x720.jpg')),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  final bool isPassword, isOnlyNumber, isShortDescription;
  final String labelTextName;
  int newMinLines = 1;
  int newMaxLines = 1;
  List<TextInputFormatter> digitOrNot = [];

  CustomTextWidget({
    this.isPassword = false,
    this.labelTextName = 'New Field',
    this.isOnlyNumber = false,
    this.isShortDescription = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isOnlyNumber) {
      digitOrNot = [FilteringTextInputFormatter.digitsOnly];
    }
    if (isShortDescription) {
      newMaxLines = 10;
      newMinLines = 4;
    }

    return Container(
      child: TextFormField(
        keyboardType: TextInputType.name,
        inputFormatters: digitOrNot,
        obscureText: isPassword,
        maxLines: newMaxLines,
        minLines: newMinLines,
        decoration: InputDecoration(
          labelText: labelTextName,
          labelStyle: const TextStyle(
            color: Colors.black87,
            fontSize: 15,
            fontFamily: 'AvenirLight',
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF6200EE),
            ),
          ),
        ),
        // The validator receives the input that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field cannot be empty! Please enter $labelTextName';
          }

          switch (labelTextName) {
            case 'Email':
              {
                return RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)
                    ? null
                    : 'Please enter a valid email';
              }

            case 'Phone Number':
              {
                if (value.length != 10) {
                  return 'Please enter a valid phone number of 10 digits';
                }
              }
              break;
            case 'Password':
              {
                if (value.length <= 6) {
                  return 'Password length must be more than 6 characters';
                }
              }
              break;
            case 'Short Description':
              {
                List checkWords = value.split(' ');
                if (checkWords.length > 200) {
                  return 'Short description became not so short, Please limit yourself at 200 words';
                }
              }
              break;
            default:
              {
                return null;
              }
          }
          return null;
        },
      ),
    );
  }
}

enum gender { javatpoint, w3schools, tutorialandexample }

class CustomRadioButton extends StatefulWidget {
  String gender;
  CustomRadioButton({this.gender = 'male'});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  //By setting a default, radio button will not be empty
  int _radioButtonState = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text('Male'),
        Radio(
          value: 1,
          groupValue: _radioButtonState,
          onChanged: (val) {
            setState(() {
              _radioButtonState = 1;
            });
          },
        ),
        const Text('Female'),
        Radio(
          value: 2,
          groupValue: _radioButtonState,
          onChanged: (val) {
            setState(() {
              _radioButtonState = 2;
            });
          },
        ),
        const Text('Others'),
        Radio(
          value: 3,
          groupValue: _radioButtonState,
          onChanged: (val) {
            setState(() {
              _radioButtonState = 3;
            });
          },
        ),
      ],
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool playingGames = true;
  bool workingOut = true;
  bool watchingMovies = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Playing Games'),
            Checkbox(
              value: playingGames,
              onChanged: (value) {
                setState(
                  () {
                    playingGames = value!;
                  },
                );
              },
            ),
            Text('Working Out'),
            Checkbox(
              value: workingOut,
              onChanged: (value) {
                setState(
                  () {
                    workingOut = value!;
                  },
                );
              },
            ),
          ],
        ),
        Row(children: [
          Text('Watching Movies'),
          Checkbox(
            value: watchingMovies,
            onChanged: (value) {
              setState(
                () {
                  watchingMovies = value!;
                },
              );
            },
          )
        ])
      ],
    );
  }
}
