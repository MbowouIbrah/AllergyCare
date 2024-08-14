import 'package:allergy_care/Couleur/Couleurs.dart';
import 'package:allergy_care/Fonctionnalites/Discussions.dart';
import 'package:allergy_care/Widgets/CircularBottomNavigationItems.dart';
import 'package:allergy_care/Widgets/Dialogue2.dart';
import 'package:flutter/material.dart';

import '../Fonctionnalites/Alcaire.dart';
import '../Fonctionnalites/Symptomes.dart';
import '../Fonctionnalites/MesAllergies.dart';
import '../Fonctionnalites/Urgences.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  var fonctionnalites = [Symptomes(), MesAllergies(), Urgences(), Alcaire(), Discussions()];
  int _indexe = 0;

  void OnItemTap(int indexe)
  {
    setState(() {
      _indexe = indexe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Couleurs.primaryColor,

      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/images/logo.png",
            height: 90,
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                onPressed: (){
                  showModalBottomSheet(context: context, builder: (BuildContext context){
                    return Dialogue2();
                  });
                },
                icon: const Icon(
                  Icons.account_circle,
                  color: Couleurs.primaryColor,
                  size: 40,
                ),
              ),
            )]
      ),

      body: GestureDetector(
        onHorizontalDragEnd: (details){
          if (details.velocity.pixelsPerSecond.dx > 0) {
            if(_indexe > 0){
              OnItemTap(_indexe - 1);
            }
            else{
              OnItemTap(4);
            }
          } else if (details.velocity.pixelsPerSecond.dx < 0) {
            if((_indexe + 1) == 5 ){
              OnItemTap(0);
            }
            else{
              OnItemTap(_indexe + 1);
            }
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child:  AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(child: child, opacity: animation);
            },
            child: fonctionnalites[_indexe],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        height: 75,
        color: Colors.transparent,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Circularbottomnavigationitems(
                icone: Icons.search  ,
                label: "Sympto",
                isSelected: _indexe == 0,
                backgroundColor: _indexe == 0? Couleurs.lightColor : Colors.white,
                onTap: () => OnItemTap(0),
              ),
              Circularbottomnavigationitems(
                icone: Icons.coronavirus_outlined,
                label: "Mes All",
                isSelected: _indexe == 1,
                backgroundColor: _indexe == 1? Couleurs.lightColor : Colors.white,
                onTap: () => OnItemTap(1),
              ),
              Circularbottomnavigationitems(
                icone: Icons.add_alert,
                label: "Urgence",
                isSelected: _indexe == 2,
                backgroundColor: _indexe == 2? Couleurs.lightColor : Colors.white,
                onTap: () => OnItemTap(2),
              ),
              Circularbottomnavigationitems(
                icone: Icons.lightbulb,
                label: "AlCaire",
                isSelected: _indexe == 3,
                backgroundColor: _indexe == 3? Couleurs.lightColor : Colors.white,
                onTap: () => OnItemTap(3),
              ),
              Circularbottomnavigationitems(
                icone: Icons.messenger,
                label: "Tchats",
                isSelected: _indexe == 4,
                backgroundColor: _indexe == 4? Couleurs.lightColor : Colors.white,
                onTap: () => OnItemTap(4),
              )
            ],
          ),
        ),
      ),
    );
  }
}
