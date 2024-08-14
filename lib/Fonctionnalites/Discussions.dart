import 'package:allergy_care/Widgets/ConverseDialog.dart';
import 'package:flutter/material.dart';

import '../Couleur/Couleurs.dart';

class Discussions extends StatefulWidget {
  const Discussions({super.key});

  @override
  State<Discussions> createState() => _DiscussionsState();
}

class _DiscussionsState extends State<Discussions> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, indexe){
      return SizedBox(
        width: double.infinity,
        height: 70,
        child: Container(
          child: InkWell(
            onTap: (){
              showDialog(context: context, builder: (BuildContext context){
                return Conversedialog();
              });
            },
            borderRadius: BorderRadius.circular(10),
            child: ListTile(

              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
                ),
                child: Image.asset(
                  'assets/images/docteur.png',
                  fit: BoxFit.cover,
                  width: 50,
                  color: Couleurs.lightColor,
                ),
              ),
              title: Text(
                "Nom destinataire",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Martel",
                    color: Colors.white
                ),
              ),
              subtitle: Text(
                "Nbr messages",
                style: TextStyle(
                    fontFamily: "Martel",
                    color: Colors.white
                ),
              ),
              trailing: Text(
                "12-08-2024",
                style: TextStyle(
                    fontFamily: "Martel",
                    color: Colors.white
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
