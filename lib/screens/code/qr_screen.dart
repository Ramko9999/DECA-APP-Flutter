import 'package:deca_app/utility/InheritedInfo.dart';
import 'package:flutter/material.dart';
import 'package:deca_app/utility/navigation_drawer.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatelessWidget {
  String _uid;

  QrScreen();

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final container = StateContainer.of(context);
    _uid = container.uid;

    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth - 75,
          height: screenWidth - 75,
          child: QrImage(
            data: _uid,
            version: 9,
          ),
        ),
      ),
    );
  }
}
