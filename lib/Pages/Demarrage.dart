import 'package:flutter/material.dart';
import '../Couleur/Couleurs.dart';
import 'Accueil.dart';


class Demarrage extends StatelessWidget {
  const Demarrage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Couleurs.primaryColor,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/logo2.png',
                      fit: BoxFit.cover,
                      // width: 275,
                    ),
                  ),

                  const Padding(padding: EdgeInsets.all(20)),

                  const Text(
                    "Bienvenue dans AllergyCare",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Martel",
                        color: Colors.white,
                    ),
                  ),

                  const Padding(padding: EdgeInsets.all(5)),

                  const Text(
                    "l'application pour comprendre et traiter vos allergies",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Martel",
                        color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const Padding(padding: EdgeInsets.all(50)),

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 2.5,
                    ),

                    onPressed: () async{
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 300),
                          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                            return Accueil();
                          },
                          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(0.0, 1.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          },
                        )
                      );
                    },
                    label: const Text(
                      "Commencer",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Martel",
                        color: Couleurs.secondaryColor
                      ),
                    ),
                    icon: const Icon(
                        Icons.next_plan,
                      color: Couleurs.primaryColor
                    ),
                  ),
                ],
              ),
            ),
      )
    );
  }
}