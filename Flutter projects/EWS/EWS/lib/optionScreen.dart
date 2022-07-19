import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tflite_image_classification/TfliteModel.dart';
import 'package:tflite_image_classification/infoPage.dart';

import 'main.dart';

class OptionScreen extends StatefulWidget {
   OptionScreen(this.context);
  BuildContext context;

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        showDialog(
            context: widget.context,
            builder: (_) {
              return AlertDialog(
                title: Text(notification.title!),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(notification.body!)],
                  ),
                ),
              );
            });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5c64b8),
        title: Center(
          child: Text(
            "Early Warning system",
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              SizedBox(
                height: 45,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => InfoPage(value: 0,disaster: "Cyclone",)));
                },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF6e79E4)
                  ),

                    child: Text("Cyclone"),),
              ),
              Divider(thickness: 2,
              height: 20,),
              SizedBox(height: 45,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => InfoPage(value: 1,disaster: "Flood",)));
                },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6e79E4)
                  ),
                  child: Text("Floods"),),
              ),
              Divider(thickness: 2,
                height: 20,),
              SizedBox(height: 45,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => InfoPage(value: 2,disaster: "Earthquakes",)));
                },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6e79E4)
                  ),
                  child: Text("Earthquakes"),),
              ),
              Divider(thickness: 2,
                height: 20,),
              SizedBox(
                height: 45,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => InfoPage(value: 3,disaster: "Wildfires",)));
                },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6e79E4)
                  ),
                  child: Text("Wildfires"),),
              ),
              Divider(thickness: 2,
                height: 20,),
              SizedBox(height: 45,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => TfliteModel()));
                },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6e79E4)
                  ),
                  child: Text("Image Classification"),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
