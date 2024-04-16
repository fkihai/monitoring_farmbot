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
      body: Obx(
        () => SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(25),
                    vertical: getProportionateScreenHeight(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/img/logo.png',
                      width: getProportionateScreenWidth(50),
                    ),
                    SizedBox(height: getProportionateScreenHeight(50)),
                    Text(
                      "Welcome back. \nLet's check your plants",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateTextScale(20)),
                    ),
                    SizedBox(height: getProportionateScreenHeight(100)),
                    controller.isloginFailed.value
                        ? Text(
                            'Login Failed. Check your email and password',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: getProportionateTextScale(12),
                                color: Colors.red),
                          )
                        : Container(),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    const EmailField(),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    const PasswordField(),
                    SizedBox(height: getProportionateScreenHeight(70)),
                    const ButtonLogin(),
                    const Spacer(),
                    const LogoBottom(),
                  ],
                ),
              ),
              controller.isLoading.value ? const LoadingBaground() : Container()
            ],
          ),
        ),
      ),
    );
  }
}
