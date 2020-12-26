import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:resumen_gastos/widgets/bottomAction.dart';
import 'package:resumen_gastos/widgets/bodyWidgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller;
  int currentPage = 9;

  @override
  void initState() {
    super.initState();

    controller = PageController(
      initialPage: currentPage,
      viewportFraction: 0.4,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              bottomAction(FontAwesomeIcons.history),
              bottomAction(FontAwesomeIcons.chartPie),
              SizedBox(width: 48.0),
              bottomAction(FontAwesomeIcons.wallet),
              bottomAction(Icons.settings),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          selectorMes(),
          expenses(),
          graph(),
          list(),
        ],
      ),
    );
  }

  Widget selectorMes() {
    return SizedBox.fromSize(
      size: Size.fromHeight(70.0),
      child: PageView(
        onPageChanged: (newPage) {
          setState(() {
            currentPage = newPage;
          });
        },
        controller: controller,
        children: <Widget>[
          pageItem("Enero", 0, currentPage),
          pageItem("Febrero", 1, currentPage),
          pageItem("Marzo", 2, currentPage),
          pageItem("Abril", 3, currentPage),
          pageItem("Mayo", 4, currentPage),
          pageItem("Junio", 5, currentPage),
          pageItem("Julio", 6, currentPage),
          pageItem("Agosto", 7, currentPage),
          pageItem("Septiembre", 8, currentPage),
          pageItem("Octubre", 9, currentPage),
          pageItem("Noviembre", 10, currentPage),
          pageItem("Diciembre", 11, currentPage),
        ],
      ),
    );
  }
}
