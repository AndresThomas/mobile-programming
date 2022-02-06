import 'package:flutter/material.dart';
import 'package:movil/dashboard.dart';

import 'loading_view.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  login(String user, String password) async {
    if (user.compareTo("admin") == 0 && password.compareTo("admin") == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => loading()));
      FocusScope.of(context).unfocus();
      await Future.delayed(const Duration(seconds: 5), () {
        Navigator.pop(context);
      });

      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Dashboard()),
      );
    }
  }

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
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/photos/crocodile-jaws-wild-animal-picture-id492989166?k=20&m=492989166&s=612x612&w=0&h=dj5Wm2ySf54tzlMA989ZqXDIzJd5TA-6C5cHvhclyeI="),
                          fit: BoxFit.cover)),
                ),
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
                            controller: _userController,
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
                            controller: _passwordController,
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
                      login(_userController.text, _passwordController.text);
                    },
                    child: const Text('Bottom Button!',
                        style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
