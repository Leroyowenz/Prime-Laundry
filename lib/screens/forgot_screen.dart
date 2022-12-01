import 'package:flutter/material.dart';
import 'package:prime_laundry/screens/verification_acct.dart';

import 'momylaundry_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            "Forgot Password",
            style: TextStyle(color: Colors.black),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80.0),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Color(0xffCE1567),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum, dolor sit amet consectetur adipisicing elit."),
                  ),
                  const SizedBox(height: 50.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter email",
                        fillColor: const Color.fromARGB(255, 243, 243, 243),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffCE1567),
                            padding: const EdgeInsets.fromLTRB(98, 20, 98, 20)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const VerificationAcct())));
                        },
                        child: const Text("Recover Password")),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
