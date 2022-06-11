import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                color: Colors.grey[300],
                child: const Center(
                    child: Text(
                  "IMAGE",
                  style: TextStyle(fontSize: 18),
                )),
              ),
            ),
            Expanded(
                flex: 2,
                child: Center(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    color: Colors.yellow[500],
                    onPressed: () {
                      Navigator.of(context).pushNamed('/mainMenu');
                    },
                    child: const Text(
                      "Play",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
