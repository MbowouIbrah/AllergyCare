import 'package:allergy_care/Couleur/Couleurs.dart';
import 'package:flutter/material.dart';
import 'package:allergy_care/Widgets/Card2.dart';

class MesAllergies extends StatefulWidget {
  const MesAllergies({super.key});

  @override
  State<MesAllergies> createState() => _MesAllergiesState();
}

class _MesAllergiesState extends State<MesAllergies> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white70,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          automaticallyImplyLeading: false,
          floating: true,

          title: Text(
            "Vos allergie(s)",
            style: TextStyle(
              fontSize: 16,
              color: Couleurs.secondaryColor,
              fontFamily: "Martel",
              fontWeight: FontWeight.bold
            ),
          ),
        ),

        SliverGrid(
            delegate: SliverChildBuilderDelegate((BuildContext context, int indexe){
              return Card2(nomAllergie: "Nom de l'allergie", descAllergie: "Description de l'allergie bonjour");
            }),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
      ],
    );
  }
}
