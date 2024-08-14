import 'package:allergy_care/Couleur/Couleurs.dart';
import 'package:allergy_care/Widgets/Dialogue1.dart';
import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  final String nomAllergie;
  final String descAllergie;

  Card1({Key? key, required this.nomAllergie, required this.descAllergie}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          showDialog(context: context, builder: (BuildContext context){
            return Dialogue1();
          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/env.png",
                height: 70,
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nomAllergie, // Correction ici
                      style: TextStyle(
                          fontSize: 14,
                          color: Couleurs.secondaryColor,
                          fontFamily: "Martel",
                          fontWeight: FontWeight.bold
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),

                    Padding(padding: EdgeInsets.only(top: 5)),

                    Text(
                      widget.descAllergie, // Et là
                      style: TextStyle(
                        fontSize: 12,
                        color: Couleurs.lightColor,
                        fontFamily: "Martel",
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
