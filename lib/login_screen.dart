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
  // texxfi

  submit() {
    callApi();
    validate();
    // Todo: validate fields using text field controllers then call api
  }

  bool validate() {
    if (username == null) {
      print("Username is empty");
      return false;
    } else if (password == null) {
      print("Password is empty");
      return false;
    } else {
      return true;
    }

    // Todo: validate fields
  }

  callApi() async {
    // Todo: call api here
    var dio = Dio();

    // Get api response smaple
    await dio
        .get(
      "https://my-json-server.typicode.com/Brian1011/fake_api_json_server/books",
    )
        .then((response) {
      debugPrint('RESPONSE');
      debugPrint(response.toString());
    }).catchError((error) {
      debugPrint("ERROR " + error.toString());
    });
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
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
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
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
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
