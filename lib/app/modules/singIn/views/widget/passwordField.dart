import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitoring_farmbot/app/constant/size_config.dart';
import '../../controllers/singin_controller.dart';

class PasswordField extends GetView<SinginController> {
  const PasswordField({super.key});
  @override
  Widget build(BuildContext context) {
    final SizeConfig sizeConfig = SizeConfig(context);
    return Container(
      height: sizeConfig.getProportionateScreenHeight(50),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[100],
      ),
      child: Obx(
        () => Row(
          children: [
            const Icon(
              Icons.lock,
              size: 20,
              color: Colors.grey,
            ),
            Expanded(
              child: Center(
                child: TextField(
                  controller: controller.passwordController,
                  obscureText: controller.isHidePassword.value,
                  style: const TextStyle(fontSize: 14),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    isDense: true,
                    hintText: "password",
                    hintStyle: TextStyle(fontSize: 12),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                controller.isHidePassword.value =
                    !controller.isHidePassword.value;
              },
              child: Icon(
                controller.isHidePassword.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                size: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
