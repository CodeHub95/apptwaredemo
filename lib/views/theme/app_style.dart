import 'package:flutter/material.dart';
import 'package:uploadaudiofile/views/theme/app_size.dart';
import 'package:uploadaudiofile/views/theme/color_constant.dart';

class AppStyle {
  static TextStyle txtPoppinsMedium12Gray80013 = TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  static TextStyle txtCategory = TextStyle(
    color: Color(0xff000000),
    fontSize: getFontSize(
      19,
    ),
    fontFamily: 'Muli',
    fontWeight: FontWeight.bold,
  );
  static TextStyle txtTip = TextStyle(
    color: Color(0xff7E7E7E),
    fontSize: getFontSize(
      19,
    ),
    fontFamily: 'Muli',
    fontWeight: FontWeight.normal,

  );


  static TextStyle txtText = TextStyle(
    color: Color(0xff242D43),
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Supreme Variable',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtPoppinsMedium10Gray80013 = TextStyle(
    color: Color(0xFF686E7E), // Set the text color to #686E7E
    fontSize: getFontSize(16), // Use 16pt size
    fontFamily: 'Supreme Variable',
    fontWeight: FontWeight.normal,
  );

  static TextStyle txtSFProTextRegular12 = TextStyle(
    color: ColorConstant.gray700,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w600,
  );
  static TextStyle txtSFProTextRegular24 = TextStyle(
    color: Color(0xFF242D43), // Set the text color to #242D43
    fontSize: getFontSize(24), // Use 24pt size
    fontFamily: 'Supreme Variable',
    fontWeight: FontWeight.normal,
  );

  static TextStyle txtSFProTextRegular10 = TextStyle(
    color: ColorConstant.gray500,
    fontSize: getFontSize(
      10,
    ),
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
  );
  static TextStyle txtSFProTextRegular18 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
  );
}