import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Couleur/Couleurs.dart';

class Dialogue1 extends StatefulWidget {
  const Dialogue1({super.key});

  @override
  State<Dialogue1> createState() => _Dialogue1State();
}

class _Dialogue1State extends State<Dialogue1> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      title: Text(
        "Nom de l'allergie",
          style: TextStyle(
            fontSize: 16,
            color: Couleurs.primaryColor,
            fontFamily: "Martel",
            fontWeight: FontWeight.bold
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/env.png",
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            "Description",
            style: TextStyle(
                fontSize: 16,
                color: Couleurs.lightColor,
                fontFamily: "Martel",
                fontWeight: FontWeight.bold
            ),
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              "Description de l'allergie  ",
              style: TextStyle(
                fontSize: 12,
                color: Couleurs.primaryColor,
                fontFamily: "Martel",
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            "Allergène(s)",
            style: TextStyle(
                fontSize: 16,
                color: Couleurs.lightColor,
                fontFamily: "Martel",
                fontWeight: FontWeight.bold
            ),
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              "Description de l'allergie  ",
              style: TextStyle(
                fontSize: 12,
                color: Couleurs.primaryColor,
                fontFamily: "Martel",
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            "Traitement",
            style: TextStyle(
                fontSize: 16,
                color: Couleurs.lightColor,
                fontFamily: "Martel",
                fontWeight: FontWeight.bold
            ),
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              "Description de l'allergie  ",
              style: TextStyle(
                fontSize: 12,
                color: Couleurs.primaryColor,
                fontFamily: "Martel",
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: (){},
            child: Text(
              "Ajouter aux allergies",
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
    );
  }
}
