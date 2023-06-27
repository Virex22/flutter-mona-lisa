import 'package:flutter/material.dart';
import 'package:monalisa/utils/data_provider.dart' as data_provider;

Container getDescriptionContainer({required bool show}) {
  return !show
      ? Container()
      : Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.fromBorderSide(
              BorderSide(
                color: Colors.brown,
                width: 2,
              ),
            ),
            color: Colors.white,
          ),
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(10),
          child: const SingleChildScrollView(
            child: Text(
              data_provider.jocondeDescription,
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 15,
                color: Colors.brown,
              ),
            ),
          ),
        );
}
