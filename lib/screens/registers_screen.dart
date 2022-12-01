import 'package:flutter/material.dart';

import 'package:prime_laundry/screens/verification_acct.dart';

class RegistersScreen extends StatefulWidget {
  const RegistersScreen({super.key});

  @override
  State<RegistersScreen> createState() => _RegistersScreenState();
}

class _RegistersScreenState extends State<RegistersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Register",
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
                    "Create a New Account",
                    style: TextStyle(
                        color: Color(0xffCE1567),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "Create an account so you can manage your personal finances"),
                ),
                const SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter phone Number",
                      fillColor: const Color.fromARGB(255, 243, 243, 243),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password",
                      fillColor: const Color.fromARGB(255, 243, 243, 243),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ("Confirm Password"),
                      fillColor: const Color.fromARGB(255, 243, 243, 243),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffce1567),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const VerificationAcct())));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 105.0, right: 105.0, top: 20.0, bottom: 20.0),
                      child: Text("Register"),
                    ),
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
