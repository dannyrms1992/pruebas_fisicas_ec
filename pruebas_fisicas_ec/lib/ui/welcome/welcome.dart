import 'package:flutter/material.dart';
import 'package:pruebas_fisicas_ec/helpers/colors/colors.dart';
import 'package:pruebas_fisicas_ec/helpers/texts/texts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 350,
              color: Colors.red,
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            welcomeText1,
                            style: TextStyle(fontSize: 14),
                          ),
                         const  SizedBox(
                            height: 10,
                          ),
                           Text(
                            welcomeText2,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                           SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration:const BoxDecoration(
                            color: colorButtonWelcome,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              welcomeTextButton1,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          const  SizedBox(
                              width: 5,
                            ),
                          const  Icon(Icons.arrow_forward_ios_sharp)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
