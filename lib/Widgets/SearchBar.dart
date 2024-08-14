import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {

  final controleur = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controleur,
        style: const TextStyle(
            fontSize: 16,
            fontFamily: "Martel",
            color: Colors.grey
        ),
        decoration: InputDecoration(
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
                    icon: const Icon(Icons.search)
                )
              ],
            )
        )
    );
  }
}

