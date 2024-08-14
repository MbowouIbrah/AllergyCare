import 'package:flutter/material.dart';
import 'package:allergy_care/Widgets/Message.dart';

class Alcaire extends StatefulWidget {
  const Alcaire({super.key});

  @override
  State<Alcaire> createState() => _AlcaireState();
}

class _AlcaireState extends State<Alcaire> {

  final requete = TextEditingController();
  ScrollController scrollController = ScrollController();

  var messages = [Message("Alcaire", "Bonjour je suis Alcaire pour vous servire. Que puis-je faire pour vous?")];

  void addRequete(String requete){
    setState(() {
      messages.add(Message("Vous", requete));
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: messages.length,
              controller: scrollController,
              itemBuilder: (context, indexe){
                return messages[indexe];
              }
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            controller: requete,
            style: TextStyle(
              fontFamily: "Martel",
              color: Colors.white
            ),

            decoration: InputDecoration(
              border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  if(!requete.text.toString().isEmpty){
                    addRequete(requete.text);
                    requete.clear();
                    }
                  },
                icon: Icon(Icons.send),
                color: Colors.white,
              ),

              contentPadding: EdgeInsets.only(top: 15)
            ),
          ),
        ),
      ],
    );
  }
}
