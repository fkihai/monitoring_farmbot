import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constant/size_config.dart';
import '../../controllers/singin_controller.dart';

class ButtonLogin extends GetView<SinginController> {
  const ButtonLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(45),
      decoration: BoxDecoration(
        color: Colors.green[300],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: () async {
          controller.doLogin();
        },
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateTextScale(16),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
