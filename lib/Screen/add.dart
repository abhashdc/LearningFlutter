import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart'; //It will ask for permisson automatically

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Upload camera'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Check sms permission'),
              onPressed: () => smsPermission(),
            ),
            ElevatedButton(
              child: Text('Check location permission'),
              onPressed: () => locationPermission(),
            ),
            ElevatedButton(
              child: Text('Check sensor permission'),
              onPressed: () => sensorPermission(),
            ),
            ElevatedButton(
              child: Text('Check contact permission'),
              onPressed: () => contactPermission(),
            ),
            ElevatedButton(
              child: Text('Check phone permission'),
              onPressed: () => phonePermission(),
            ),
            ElevatedButton(
              child: Text('Check system alert permission'),
              onPressed: () => alertPermission(),
            ),
          ],
        ));
  }

  smsPermission() async {
    var smsPermission = await Permission.sms.request();
    if (Platform.isAndroid) {
      if (smsPermission.isGranted) {
        print('The permission is granted for sms');
      } else if (smsPermission.isDenied || smsPermission.isPermanentlyDenied) {
        print('Its denied so open app setting for sms');
        openAppSettings();
      } else if (smsPermission.isRestricted) {
        print('Contact your parental control head for sms');
      } else if (smsPermission.isLimited) {
        print('It is granted to a certain extent for sms');
      } else {}
    } else {
      if (smsPermission.isGranted) {
        print('The permission is granted for sms');
      } else if (smsPermission.isDenied || smsPermission.isPermanentlyDenied) {
        print('Its denied so open app setting for sms');
        openAppSettings();
      } else if (smsPermission.isLimited) {
        print('It is granted to a certain extent for sms');
      } else {}
    }
  }

  locationPermission() async {
    if (Platform.isAndroid) {
      var locationPermission = await Permission.location.request();
      if (locationPermission.isGranted) {
        print('The permission is granted for location');
      } else if (locationPermission.isDenied ||
          locationPermission.isPermanentlyDenied) {
        print('Its denied so open app setting for location');
        openAppSettings();
      } else if (locationPermission.isRestricted) {
        print('Contact your parental control head for location');
      } else if (locationPermission.isLimited) {
        print('It is granted to a certain extent for location');
      } else {}
    }
  }

  sensorPermission() async {
    if (Platform.isAndroid) {}
    var sensorPermission = await Permission.sensors.request();
    if (sensorPermission.isGranted) {
      print('The permission is granted for sensor');
    } else if (sensorPermission.isDenied ||
        sensorPermission.isPermanentlyDenied) {
      print('Its denied so open app setting for sensor');
      openAppSettings();
    } else if (sensorPermission.isRestricted) {
      print('Contact your parental control head for sensor');
    } else if (sensorPermission.isLimited) {
      print('It is granted to a certain extent for sensor');
    } else {}
  }

  contactPermission() async {
    if (Platform.isAndroid) {
      var contactPermission = await Permission.contacts.request();
      if (contactPermission.isGranted) {
        print('The permission is granted for contact');
      } else if (contactPermission.isDenied ||
          contactPermission.isPermanentlyDenied) {
        print('Its denied so open app setting for contact');
        openAppSettings();
      } else if (contactPermission.isRestricted) {
        print('Contact your parental control head for contact');
      } else if (contactPermission.isLimited) {
        print('It is granted to a certain extent for contact');
      } else {}
    }
  }

  phonePermission() async {
    if (Platform.isAndroid) {}
    var phonePermission = await Permission.phone.request();
    if (phonePermission.isGranted) {
      print('The permission is granted for phone call');
    } else if (phonePermission.isDenied ||
        phonePermission.isPermanentlyDenied) {
      print('Its denied so open app setting for  phone call');
      openAppSettings();
    } else if (phonePermission.isRestricted) {
      print('Contact your parental control head for  phone call');
    } else if (phonePermission.isLimited) {
      print('It is granted to a certain extent for  phone call');
    } else {}
  }

  alertPermission() async {
    if (Platform.isAndroid) {
      var alertPermission = await Permission.systemAlertWindow.request();
      if (alertPermission.isGranted) {
        print('The permission is granted for system alert');
      } else if (alertPermission.isDenied ||
          alertPermission.isPermanentlyDenied) {
        print('Its denied so open app setting for system alert');
        openAppSettings();
      } else if (alertPermission.isRestricted) {
        print('Contact your parental control head for system alert');
      } else if (alertPermission.isLimited) {
        print('It is granted to a certain extent for system alert');
      } else {}
    }
  }

  checkPermission() async {
    final Map<Permission, PermissionStatus> stat = await [
      Permission.sms, //done
      Permission.location, //done
      Permission.sensors, //done
      Permission.contacts, //addressbook for ios
      Permission.phone, //phones
      Permission.systemAlertWindow, //Microphone for ios
    ].request();
  }

  pickImage() async {
    // final ImagePicker _picker = ImagePicker();
    // final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    // final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  }
}
