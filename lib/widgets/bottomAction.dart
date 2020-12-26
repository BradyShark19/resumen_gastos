import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

Widget bottomAction(IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      child: Icon(icon),
      onTap: () {},
    ),
  );
}
