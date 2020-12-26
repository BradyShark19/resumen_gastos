import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resumen_gastos/pages/home_page.dart';

import 'package:resumen_gastos/widgets/graph_widget.dart';
import 'package:resumen_gastos/widgets/listTile_widget.dart';

Widget expenses() {
  return Column(
    children: <Widget>[
      Text(
        "\$2361.41",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Colors.blueGrey,
        ),
      ),
      Text("Total Expenses"),
    ],
  );
}

Widget graph() {
  return Container(
    height: 250.0,
    child: GraphWidget(),
  );
}

Widget list() {
  return Expanded(
    child: ListView.separated(
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) =>
          itemList(FontAwesomeIcons.shoppingCart, "Shopping", 14, 145.12),
      // itemList(Icons.local_drink, "Alcohol", 5, 73.57),
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blueAccent.withOpacity(0.15),
          height: 8.0,
        );
      },
    ),
  );
}

Widget pageItem(String nombre, int posicion, int currentPage) {
  var alineacionBarra;

  if (posicion == currentPage) {
    alineacionBarra = Alignment.center;
  } else if (posicion > currentPage) {
    alineacionBarra = Alignment.centerRight;
  } else {
    alineacionBarra = Alignment.centerLeft;
  }

  return Align(
    alignment: alineacionBarra,
    child: Text(nombre),
  );
}
