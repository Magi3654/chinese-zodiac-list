import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inputs/widgets/input_personalizado.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> bestias = [
    {
      "name": "Rata",
      "image": "assets/rata.jpg",
      "description": "Inteligente, ambiciosa y astuta."
    },
    {
      "name": "Buey",
      "image": "assets/buey.jpg",
      "description": "Trabajador, confiable y fuerte."
    },
    {
      "name": "Tigre",
      "image": "assets/tigre.jpg",
      "description": "Valiente, poderoso e impulsivo."
    },
    {
      "name": "Conejo",
      "image": "assets/conejo.jpg",
      "description": "Gentil, amable y sensible."
    },
    {
      "name": "Dragón",
      "image": "assets/dragon.jpg",
      "description": "Carismático, enérgico y dominante."
    },
    {
      "name": "Serpiente",
      "image": "assets/serpiente.jpg",
      "description": "Sabia, intuitiva y misteriosa."
    },
    {
      "name": "Caballo",
      "image": "assets/caballo.jpg",
      "description": "Aventurero, enérgico y libre."
    },
    {
      "name": "Cabra",
      "image": "assets/cabra.jpg",
      "description": "Creativa, pacífica y amorosa."
    },
    {
      "name": "Mono",
      "image": "assets/mono.jpg",
      "description": "Divertido, astuto y encantador."
    },
    {
      "name": "Gallo",
      "image": "assets/gallo.jpg",
      "description": "Observador, honesto y trabajador."
    },
    {
      "name": "Perro",
      "image": "assets/perro.jpg",
      "description": "Leal, protector y amigable."
    },
    {
      "name": "Cerdo",
      "image": "assets/cerdo.jpg",
      "description": "Generoso, sincero y bondadoso."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF8E1),
      appBar: AppBar(
        title: Text(
          'Horóscopo Chino',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffB71C1C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: bestias.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    bestias[index]['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  bestias[index]['name']!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffB71C1C),
                  ),
                ),
                subtitle: Text(bestias[index]['description']!),
                trailing: Icon(
                  Icons.star,
                  color: Color(0xffFFD700),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'WOW Eres ${bestias[index]['description']} Como ${bestias[index]['name']}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      backgroundColor: Color(0xffB71C1C),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
