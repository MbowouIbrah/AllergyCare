import 'package:allergy_care/Couleur/Couleurs.dart';
import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  final String nomAllergie;
  final String descAllergie;

  Card2({Key? key, required this.nomAllergie, required this.descAllergie}) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162,
      height: 162,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: (){
          },
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/env.png",
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 10)),

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
        ),
      ),
    );
  }
}
