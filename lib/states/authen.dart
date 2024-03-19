import 'package:flutter/material.dart';
import 'package:flutter_ruts/utility/app_constant.dart';
import 'package:flutter_ruts/widgets/widget_form.dart';
import 'package:flutter_ruts/widgets/widget_icon_button.dart';
import 'package:flutter_ruts/widgets/widget_image_assets.dart';
import 'package:flutter_ruts/widgets/widget_text.dart';

class Authen extends StatelessWidget {
  const Authen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: ListView(
          children: [
            Column(
              children: [
                const WidgetImageAsset(
                  size: 300,
                ),
                WidgetText(
                  data: AppConstant.appName,
                  textstyle: AppConstant().h1Style(),
                ),
                Column(
                  children: [
                    WidgetForm(
                      hint: 'Username :',
                      subfixWidget: Icon(Icons.android),
                    ),
                    WidgetForm(
                      hint: 'Password :',
                      obscu: true,
                      subfixWidget: widgetIconButton(
                        iconData: Icons.remove_red_eye,
                        pressFunc: () {},
                      ),
                      
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
