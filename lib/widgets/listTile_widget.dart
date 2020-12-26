import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemList(IconData icon, String nombre, int percent, double value) {
  return ListTile(
    leading: Icon(icon, size: 32.0),
    title: Text(
      nombre,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
    subtitle: Text(
      "$percent% de gastos",
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.blueGrey,
      ),
    ),
    trailing: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("\$$value",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              )),
        )),
  );
}
