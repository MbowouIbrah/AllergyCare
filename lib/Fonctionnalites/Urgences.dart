import 'package:allergy_care/Couleur/Couleurs.dart';
import 'package:flutter/material.dart';

class Urgences extends StatefulWidget {
  const Urgences({super.key});

  @override
  State<Urgences> createState() => _UrgencesState();
}

class _UrgencesState extends State<Urgences> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white70,
          ),
          width: double.infinity,
          child: Text(
            "Rappels médicaments",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Martel",
                color: Couleurs.secondaryColor,
            ),
          ),
        ),

        SizedBox(
          height: 70,
          child: Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indexe){
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add_alarm, size: 30,
                          color: Couleurs.primaryColor,
                        ),
                        Text(
                          "Nouveau Rappel",
                          style: TextStyle(
                              color: Couleurs.primaryColor,
                              fontFamily: "Martel",
                              fontSize: 10
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              );
            })
          ),
        ),

        Padding(padding: EdgeInsets.symmetric(vertical: 5)),

        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white70,
          ),
          width: double.infinity,
          child: Text(
            "Plan d'urgence",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Martel",
              color: Couleurs.secondaryColor,
            ),
          ),
        ),

        Expanded(
            child: ListView.builder(itemBuilder: (context, indexe){
              return SizedBox(
                width: double.infinity,
                height: 70,
                child: Container(
                  child: InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(10),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0), // Annule le padding horizontal

                      leading: Icon(
                        Icons.local_hospital,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Nom du traimetment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Martel",
                            color: Couleurs.secondaryColor
                        ),
                      ),
                      subtitle: Text(
                        "Instructions sur le traitement",
                        style: TextStyle(
                            fontFamily: "Martel",
                            color: Couleurs.lightColor
                        ),
                      ),
                    ),
                  ),
                ),
              );
            })
        )
      ],
    );
  }
}
