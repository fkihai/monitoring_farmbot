import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/size_config.dart';
import '../../shared/widget/loadingBaground.dart';
import '../../shared/widget/logoBottom.dart';
import '../controllers/singin_controller.dart';
import 'widget/butonLogin.dart';
import 'widget/emailField.dart';
import 'widget/passwordField.dart';

class SinginView extends GetView<SinginController> {
  const SinginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SizeConfig sizeConfig = SizeConfig(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20,
          ),
          child: Obx(
            () => Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/img/logo.png',
                      width: 50,
                    ),
                    SizedBox(
                        height: sizeConfig.getProportionateScreenHeight(50)),
                    const Text(
                      "Welcome back. \nLet's check your plants",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(
                        height: sizeConfig.getProportionateScreenHeight(100)),
                    controller.isloginFailed.value
                        ? const Text(
                            'Login Failed. Check your email and password',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.red,
                            ),
                          )
                        : Container(),
                    SizedBox(
                        height: sizeConfig.getProportionateScreenHeight(10)),
                    const EmailField(),
                    SizedBox(
                        height: sizeConfig.getProportionateScreenHeight(20)),
                    const PasswordField(),
                    SizedBox(
                        height: sizeConfig.getProportionateScreenHeight(70)),
                    const ButtonLogin(),
                    const Spacer(),
                    const LogoBottom(),
                  ],
                ),
                controller.isLoading.value
                    ? const LoadingBaground()
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
