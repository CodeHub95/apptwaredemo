import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray80009 = fromHex('#4a4a4a');

  static Color gray80008 = fromHex('#424242');

  static Color gray80007 = fromHex('#4b4b4b');

  static Color gray80006 = fromHex('#4d4d4d');

  static Color gray80005 = fromHex('#3f3f3f');

  static Color gray80004 = fromHex('#505050');

  static Color gray80003 = fromHex('#454545');

  static Color lightBlue500 = fromHex('#03a9f4');

  static Color gray80002 = fromHex('#4c4c4c');

  static Color gray80001 = fromHex('#3a3939');

  static Color amberA100 = fromHex('#ffec89');

  static Color yellow400 = fromHex('#fee353');

  static Color black90000 = fromHex('#00000000');

  static Color black90082 = fromHex('#82000000');

  static Color blueGray90002 = fromHex('#2b2b2b');

  static Color blueGray700 = fromHex('#515151');

  static Color blueGray90001 = fromHex('#2d2d2d');

  static Color blueGray900 = fromHex('#2f2f2f');

  static Color gray600 = fromHex('#6d6d6d');

  static Color gray400 = fromHex('#cacaca');

  static Color gray800 = fromHex('#4e4e4e');

  static Color black9008e = fromHex('#8e000000');

  static Color yellowA700B7 = fromHex('#b7fcd509');

  static Color gray80015 = fromHex('#444444');

  static Color yellow50 = fromHex('#fffced');

  static Color gray80014 = fromHex('#393939');

  static Color gray80013 = fromHex('#3b3b3b');

  static Color gray80012 = fromHex('#3d3d3d');

  static Color yellowA700 = fromHex('#fcd60a');

  static Color black9000c = fromHex('#0c000000');

  static Color gray80011 = fromHex('#474747');

  static Color gray200 = fromHex('#e9e9e9');

  static Color gray80010 = fromHex('#484848');

  static Color black9004f = fromHex('#4f000000');

  static Color whiteA70021 = fromHex('#21ffffff');

  static Color black900Ef = fromHex('#ef000000');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black900Af = fromHex('#af000000');

  static Color indigoA200 = fromHex('#4276e5');

  static Color red500 = fromHex('#ff3b3b');

  static Color yellowA70001 = fromHex('#fdd005');

  static Color black90021 = fromHex('#21000000');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#9c9c9c');

  static Color gray50002 = fromHex('#a3a3a3');

  static Color teal5001 = fromHex('#d8e6ec');

  static Color gray90002 = fromHex('#1f1f1f');

  static Color gray90003 = fromHex('#232323');

  static Color gray700 = fromHex('#635c60');

  static Color gray90004 = fromHex('#1e1e1e');

  static Color gray500 = fromHex('#a1a1a1');

  static Color gray90005 = fromHex('#242424');

  static Color gray60001 = fromHex('#757575');

  static Color lime600 = fromHex('#d0b62c');

  static Color blueGray400 = fromHex('#898989');

  static Color blueGray90005 = fromHex('#333333');

  static Color indigo50 = fromHex('#e8ecf4');

  static Color blueGray90004 = fromHex('#353535');

  static Color gray900 = fromHex('#1c1c1c');

  static Color gray90001 = fromHex('#2c2929');

  static Color blueGray90003 = fromHex('#303030');

  static Color black900A8 = fromHex('#a8000000');

  static Color whiteA700A8 = fromHex('#a8ffffff');

  static Color yellowA700Cc = fromHex('#ccfcd509');

  static Color teal50 = fromHex('#e0e9ed');

  static Color gray90006 = fromHex('#212121');

  static Color gray300 = fromHex('#e2e2e2');

  static Color gray30002 = fromHex('#dcdcdc');

  static Color gray30001 = fromHex('#dbdbdb');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color orange50 = fromHex('#ffecd6');

  static Color indigo900 = fromHex('#1f1367');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
