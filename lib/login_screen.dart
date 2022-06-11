import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? username;
  String? password;

  submit() {
    // Todo: validate fields then call api
  }

  validate() {
    // Todo: validate fields
  }

  callApi() async {
    // Todo: call api here
    var dio = Dio();
    await dio.post('url', data: {}).then((value) {}).catchError((error) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: ListView(
          children: [
            Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Username", //babel text
                    hintText: "Enter your email", //hint text
                    prefixIcon: Icon(Icons.people), //prefix iocn
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold), //hint text style
                    labelStyle: TextStyle(
                        fontSize: 13, color: Colors.redAccent), //label style
                  ),
                  onChanged: (value) {},
                )),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Password", //babel text
                    hintText: "Enter your password", //hint text
                    prefixIcon: Icon(Icons.password), //prefix iocn
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold), //hint text style
                    labelStyle: TextStyle(
                        fontSize: 13, color: Colors.redAccent), //label style
                  ),
                  onChanged: (value) {},
                )),
            Center(
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                color: Colors.blue[500],
                onPressed: submit,
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
