import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la barra de "Debug"
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Luis Orlando Sifuentes',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 24,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFFE10600), // Rojo brillante - Rayo McQueen
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFE10600), // Fondo rojo Rayo McQueen
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFFD800)
                          .withOpacity(0.5), // Amarillo como sombra
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCatInfo('marca', 'wilson'),
                  _buildCatInfo('calidad', 'piel'),
                  _buildCatInfo('precio', '3500'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCatInfo(String title, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFD800), // Amarillo vibrante
          ),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white, // Texto blanco para contraste
          ),
        ),
      ],
    );
  }
}
