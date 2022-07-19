import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class TfliteModel extends StatefulWidget {
  const TfliteModel({Key? key}) : super(key: key);

  @override
  _TfliteModelState createState() => _TfliteModelState();
}

class _TfliteModelState extends State<TfliteModel> {
  
  late File _image;
  late List _results;
   List dd= [];

  bool imageSelect=false;
  @override
  void initState()
  {
    super.initState();
    loadModel();
  }
  Future loadModel()
  async {
    Tflite.close();
    String res;
    res=(await Tflite.loadModel(model: "assets/converted_model.tflite",labels: "assets/labels.txt"))!;
    print("Models loading status: $res");
  }

  Future imageClassification(File image)
  async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    dd = [];
    setState(() {
      _results=recognitions!;
      dd.add(_results[0]);
      _image=image;
      imageSelect=true;

    });
    print("bbbb ${dd}");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5c64b8),
        title: const Text("Image Classification"),
      ),
      body: ListView(
        children: [
          (imageSelect)?Container(
        margin: const EdgeInsets.all(10),
        child: Image.file(_image),
      ):Container(
        margin: const EdgeInsets.all(10),
            child: const Opacity(
              opacity: 0.8,
              child: Center(
                child: Text("No image selected"),
              ),
            ),
      ),
          SingleChildScrollView(
            child: Column(
              children: (imageSelect)?dd.map((result) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "${result['label']} - ${result['confidence'].toStringAsFixed(2)}",
                        style: const TextStyle(color: Colors.red,
                        fontSize: 20),
                      ),
                    ),
                  ),
                );
              }).toList():[],

            ),
          ),
          Column(
            children: [
              ElevatedButton(onPressed: (){
                pickImage(option: ImageSource.camera);
              }, style: ElevatedButton.styleFrom(
                  primary: Color(0xFF6e79E4)
              ),child: Text("            Click an image            ")),
              ElevatedButton(onPressed: (){
                pickImage();
              },style: ElevatedButton.styleFrom(
                  primary: Color(0xFF6e79E4)
              ), child: Text("Choose image from gallary ")),
            ],
          )
        ],
      ),
    );
  }
  Future pickImage({option = ImageSource.gallery})
  async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: option,
    );
    File image=File(pickedFile!.path);
    imageClassification(image);
  }
}
