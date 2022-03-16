import 'package:flutter/material.dart';
import 'package:movil/dashboard.dart';
import 'package:movil/listreob.dart';
import 'package:movil/two_buttons.dart';

import 'loading_view.dart';

class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  State<Login2> createState() => _LoginState();
}

class _LoginState extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                    child: twoButtons()),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/3689634/pexels-photo-3689634.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          fit: BoxFit.cover)),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    child: const ListREOB(
                        scrollIn: Axis.horizontal,
                        itemColor: Colors.red,
                        height: 50,
                        width: 120,
                        margin: 20,
                        numberOfItems: 25)),
                Container(
                    margin: const EdgeInsets.all(25),
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          margin: EdgeInsets.fromLTRB(45, 0, 45, 25),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              hintText: 'Enter your username',
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          margin: const EdgeInsets.fromLTRB(45, 0, 45, 0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              hintText: 'Enter your password',
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Log in',
                        style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: twoButtons(),
      ),
    );
  }
}
