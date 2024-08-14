import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Couleur/Couleurs.dart';

class Dialogue2 extends StatefulWidget {
  const Dialogue2({super.key});

  @override
  State<Dialogue2> createState() => _Dialogue2State();
}

class _Dialogue2State extends State<Dialogue2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 150,
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Couleurs.primaryColor,
                  size: 75,
                ),

                Text(
                  "Veuillez ajouter un compte svp",
                  style: TextStyle(
                      color: Couleurs.secondaryColor,
                      fontFamily: "Martel",
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "Se connecter",
                    style: TextStyle(
                        color: Couleurs.secondaryColor
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),

                TextButton(
                  onPressed: (){},
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Couleurs.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
