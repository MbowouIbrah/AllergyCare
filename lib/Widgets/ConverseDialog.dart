import 'package:flutter/material.dart';

import '../Couleur/Couleurs.dart';

class Conversedialog extends StatefulWidget {
  const Conversedialog({super.key});

  @override
  State<Conversedialog> createState() => _ConversedialogState();
}

class _ConversedialogState extends State<Conversedialog> {
  final message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      title: Text(
        "Nom du medecin",
        style: TextStyle(
            fontSize: 16,
            color: Couleurs.primaryColor,
            fontFamily: "Martel",
            fontWeight: FontWeight.bold
        ),
      ),

      content: Container(

      ),

      actions: [
        TextField(
          controller: message,
          style: TextStyle(
              fontFamily: "Martel",
              color: Couleurs.darkColor
          ),

          decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Couleurs.primaryColor),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  if(!message.text.toString().isEmpty){
                    message.clear();
                  }
                },
                icon: Icon(Icons.send),
                color: Couleurs.primaryColor,
              ),

              contentPadding: EdgeInsets.only(top: 17)
          ),
        ),
      ],
    );
  }
}
