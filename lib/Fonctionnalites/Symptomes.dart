import 'package:allergy_care/Couleur/Couleurs.dart';
import 'package:allergy_care/Widgets/Card1.dart';
import 'package:flutter/material.dart';

class Symptomes extends StatefulWidget {
  const Symptomes({super.key});

  @override
  State<Symptomes> createState() => _SymptomesState();
}

class _SymptomesState extends State<Symptomes> {
  late int indexe;
  @override
  Widget build(BuildContext context) {
    final controleur = TextEditingController();

    return CustomScrollView(
      slivers: [
        SliverAppBar(

          automaticallyImplyLeading: false,
          floating: true,
          pinned: false,
          backgroundColor: Colors.white,

          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          title: TextField(
              controller: controleur,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Martel",
                  color: Couleurs.lightColor
              ),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                hintText: "Décrivez nous vos symptomes",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent)
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: (){
                            controleur.clear();
                          },
                          icon: const Icon(Icons.clear)
                      ),
                      IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.search, color: Couleurs.primaryColor)
                      )
                    ],
                  )
              )
          )
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) => Card1(nomAllergie: "Nom de l'allergie", descAllergie: "Description de l'allergie"),
          ),
        ),
      ],
    );
  }
}
