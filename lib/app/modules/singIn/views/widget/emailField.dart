import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constant/size_config.dart';
import '../../controllers/singin_controller.dart';

class EmailField extends GetView<SinginController> {
  const EmailField({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(50),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          Icon(
            Icons.email_outlined,
            size: getProportionateTextScale(20),
            color: Colors.grey,
          ),
          Expanded(
            child: Center(
              child: TextField(
                controller: controller.emailController,
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  isDense: true,
                  hintText: "Email Address",
                  hintStyle: TextStyle(fontSize: 12),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
