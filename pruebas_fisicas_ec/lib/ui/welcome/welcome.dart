import 'package:flutter/material.dart';
import '../../helpers/export.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AQUI SE VISUALIZAN LOS DIFERENTES Swippers, las imagenes vienen de helpers/images/welcome.images.dart
            Expanded(
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    welcomeImagesPaths[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: welcomeImagesPaths.length,
                viewportFraction: 0.8,
                scale: 0.9,
                autoplay: true,
              ),
            ),
            // Widget que contiene los botones de iniciar sesion y de unirse
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 55, bottom: 55),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //boton de registrarse
                  ElevatedButton(
                      style: welcomeButtonStyle1,
                      onPressed: () {},
                      child: Text(
                        welcomeText1,
                        style: welcomeText1Style,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  // boton de iniciar sesion
                  TextButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50)),
                      onPressed: () {},
                      child: Text(
                        welcomeText2,
                        style: welcomeText2Style,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
