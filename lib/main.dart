import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card en Columna 1284'),
          backgroundColor: Color(0xffb591e1),
        ),
        body: Center(
          child: MyCard(),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final List<Map<String, String>> datos = [
    {"etiqueta": "Dato 1", "valor": "Valor 1"},
    {"etiqueta": "Dato 2", "valor": "Valor 2"},
    {"etiqueta": "Dato 3", "valor": "Valor 3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 200, // Ancho reducido para mejor aspecto en columna
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xfff58dd4),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: datos.map((dato) => _buildDato(dato)).toList(),
        ),
      ),
    );
  }

  Widget _buildDato(Map<String, String> dato) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dato["etiqueta"]!,
            style: TextStyle(fontSize: 14.0, color: Colors.black),
          ),
          SizedBox(height: 4),
          Text(
            dato["valor"]!,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
