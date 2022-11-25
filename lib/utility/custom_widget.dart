import 'package:flutter/material.dart';

Text textInfo(
  String text,
  FontWeight fontWeight,
  Color? color,
  double fontsize,
  String fontFamily,
) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: fontsize,
      fontFamily: fontFamily,
    ),
  );
}

// First Settings Box

class SettingsBox extends StatelessWidget {
  const SettingsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color.fromRGBO(236, 237, 242, 20),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 15),
                      child: Text(
                        "Account info",
                        style: (TextStyle(fontFamily: "Roboto-Regular")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25, top: 5),
                      child: Image.asset("assets/images/settingsimage4.png"),
                    )
                  ],
                ),
                const Divider(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "My Address",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25,
                      ),
                      child: Image.asset("assets/images/settingsimage5.png"),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Change Password",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25,
                      ),
                      child: Image.asset("assets/images/settingsimage6.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Second Settings
class SettingsBox2 extends StatelessWidget {
  const SettingsBox2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 170,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color.fromRGBO(236, 237, 242, 20),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 15),
                      child: Text(
                        "Reports & Feedback",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25, top: 5),
                      child: Image.asset("assets/images/settingsimage7.png"),
                    ),
                  ],
                ),
                const Divider(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Refer & Earn",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25,
                      ),
                      child: Image.asset("assets/images/settingsimage8.png"),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "App Notification",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25,
                      ),
                      child: Image.asset("assets/images/settingsimage9.png"),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Settings",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 25,
                      ),
                      child: Image.asset("assets/images/settingsimage10.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
