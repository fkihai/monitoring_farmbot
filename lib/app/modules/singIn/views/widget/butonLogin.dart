import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/singin_controller.dart';

class ButtonLogin extends GetView<SinginController> {
  const ButtonLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.green[300],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: () async {
          controller.doLogin();
        },
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
