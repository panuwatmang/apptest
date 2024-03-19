import 'package:flutter/material.dart';
import 'package:flutter_ruts/utility/app_constant.dart';
import 'package:flutter_ruts/utility/app_controller.dart';
import 'package:flutter_ruts/widgets/widget_button.dart';
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

  final keyForm = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: ListView(
          children: [
            Column(
              children: [
                displayImage(),
                displayAppName(),
                pathForm(),
                loginButton()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container loginButton() {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      width: 250,
      //color: Color.fromARGB(255, 228, 207, 24),
      child: widgetButton(
        text: 'Login',
        pressFunc: () {
          if (keyForm.currentState!.validate()) {
            print('Login Success');
          }
        },
      ),
    );
  }

  Form pathForm() {
    return Form(
      key: keyForm,
      child: Column(
        children: [
          widgetForm(textEditingController: userController,
            validateFunc: (p0) {
              if (p0!.isEmpty) {
                return 'enter your username';
              } else {
                return null;
              }
            },
            hint: 'Username :',
            subfixWidget: Icon(Icons.person_outline),
          ),
          Obx(() => widgetForm(textEditingController: passwordController,
                validateFunc: (p0) {
                  if (p0!.isEmpty) {
                    return 'enter your password';
                  } else {
                    return null;
                  }
                },
                hint: 'Password :',
                obscu: appController.redEye.value,
                subfixWidget: widgetIconButton(
                  iconData: appController.redEye.value
                      ? Icons.remove_red_eye
                      : Icons.remove_red_eye_outlined,
                  pressFunc: () {
                    appController.redEye.value = !appController.redEye.value;
                  },
                ),
              )
            ),
        ],
      ),
    );
  }

  WidgetText displayAppName() {
    return WidgetText(
      data: AppConstant.appName,
      textstyle: AppConstant().h1Style(),
    );
  }

  WidgetImageAsset displayImage() {
    return const WidgetImageAsset(
      size: 300,
    );
  }
}
