import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/types/gf_button_type.dart';

class widgetIconButton extends StatelessWidget {
  const widgetIconButton({
    Key? key,
    required this.iconData,
    required this.pressFunc,
  }) : super(key: key);

  final IconData iconData;
  final Function() pressFunc; //เก็บตัวแปลแบบ function

  @override
  Widget build(BuildContext context) {
    return GFIconButton(
      icon: Icon(iconData),
      onPressed: pressFunc,
      type: GFButtonType.transparent,
    );
  }
}
