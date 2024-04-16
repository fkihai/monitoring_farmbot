import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/size_config.dart';
import '../../shared/widget/logoBottom.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Padding(
            padding: EdgeInsets.only(
                top: getProportionateScreenHeight(140),
                bottom: getProportionateScreenHeight(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: getProportionateScreenWidth(90),
                  child: Text(
                    controller.name.value.toUpperCase(),
                    style: TextStyle(
                        fontSize: getProportionateTextScale(80),
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  controller.fullname.value,
                  style: TextStyle(
                    fontSize: getProportionateTextScale(30),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                InkWell(
                  onTap: () {
                    controller.doLogout();
                  },
                  child: Icon(
                    Icons.logout,
                    color: Colors.red[600],
                  ),
                ),
                const Spacer(),
                const LogoBottom()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
