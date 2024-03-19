import 'package:flutter/material.dart';
import 'package:flutter_ruts/utility/app_constant.dart';
import 'package:flutter_ruts/utility/app_controller.dart';
import 'package:flutter_ruts/widgets/widget_form.dart';
import 'package:flutter_ruts/widgets/widget_icon_button.dart';
import 'package:flutter_ruts/widgets/widget_image_assets.dart';
import 'package:flutter_ruts/widgets/widget_text.dart';
import 'package:get/get.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  //นี่คือ Dependeccy สำหรับ Call ตัวแปลที่อยู่ใน Controller
  AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
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
                    Obx(() => WidgetForm(
                          hint: 'Password :',
                          obscu: appController.redEye.value,
                          subfixWidget: widgetIconButton(
                            iconData: Icons.remove_red_eye,
                            pressFunc: () {
                              appController.redEye.value =
                                  !appController.redEye.value;
                            },
                          ),  
                        )),
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
