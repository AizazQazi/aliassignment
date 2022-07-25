import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: assignmet(),
  ) );
}
class assignmet extends StatelessWidget {
  const assignmet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatefulWidget {
const MyApp({Key? key}) : super(key: key);
@override
State<StatefulWidget> createState() {
  return Home_2state();
}
}

// ignore: camel_case_types
class Home_2state extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text("Add cart"),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [

          Center(
              child: Container(
                height: height * 0.80,
                width: width * 0.80,

                child: Form(
                  key: _formKey,
                  child: Column(

                    children: <Widget>[

                      TextFormField(
                        style: const TextStyle(color: Colors.white),

                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.black54,
                          labelText: 'Enter your name',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'please enter name of team';
                          }
                          return null;
                        },
                      ),

                      const Divider(
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 0,
                        color: Colors.black,
                      ),

                      TextFormField(
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'please enter name of team mates';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.black54,

                          hintText: 'Enter your  cnic',
                          hintStyle: TextStyle(color: Colors.white),
                        ),

                      ),

                      const Divider(
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 0,
                        color: Colors.black,
                      ),

                      Row(
                        children: const [
                          Flexible(
                            child: TextField(
                              style: TextStyle(color: Colors.white),

                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black54,
                                labelText: 'Enter your name',
                                labelStyle: TextStyle(color: Colors.white),
                              ),

                            ),
                          ),
                          Divider(
                            height: 20,
                            thickness: 5,
                            indent: 20,
                            endIndent: 0,
                            color: Colors.black,
                          ),
                          Flexible(
                            child: TextField(
                              style: TextStyle(color: Colors.white),

                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black54,
                                labelText: 'Enter your name',
                                labelStyle: TextStyle(color: Colors.white),
                              ),

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ),

          ),

        ],
      ),
    );
  }
}
