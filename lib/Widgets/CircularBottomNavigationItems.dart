import 'package:allergy_care/Couleur/Couleurs.dart';
import 'package:flutter/material.dart';

class Circularbottomnavigationitems extends StatelessWidget {
  final IconData icone;
  final String label;
  final bool isSelected;
  final Color backgroundColor;
  final VoidCallback onTap;

  const Circularbottomnavigationitems({
    super.key,
    required this.icone,
    required this.label,
    required this.isSelected,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.elasticInOut,
          width: isSelected? 80 : 45,
              height: 45,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 0.5,
                    offset: Offset(0.5, 0.5)
                  )
                ]
              ),

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icone,
                      color: isSelected? Colors.white : Couleurs.primaryColor,
                    ),
                    if(isSelected) Text(
                      label,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: "Martel",
                      ),
                    )
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
