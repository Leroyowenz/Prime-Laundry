import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     elevation: 0,

      //     // actions:Icon(Icons.backpack),
      //     title: const Text("")),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://viragtea.com/backend/img/admin-login.jpg",
              scale: 3,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(1, 50, 1, 1),
              child: Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "e.g leroyowenz@gmail.com",
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "enter password",
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 250, top: 10, bottom: 10),
              child: Text(
                "Forgot Password",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "or login with",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Icon(Icons.facebook),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  " Sign Up",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
