import 'package:flutter/material.dart';

import '../Couleur/Couleurs.dart';

class Message extends StatelessWidget {
  String emetteur;
  String contenu;


  Message(this.emetteur, this.contenu);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
          Icons.account_circle_outlined,
          color: Couleurs.secondaryColor
      ),
      title: Text(
        emetteur,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Martel",
            color: Couleurs.secondaryColor
        ),
      ),
      subtitle: Text(
        contenu,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Martel",
            color: Colors.white
        ),
      ),
    );
  }
}
