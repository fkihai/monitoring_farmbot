import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/size_config.dart';
import '../../../routes/app_pages.dart';
import '../../shared/widget/logoBottom.dart';
import '../controllers/detail_controller.dart';
import 'widget/barIndicator.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.HISTORY,
                  arguments: {'id': controller.id.value});
            },
            child: const Icon(Icons.history),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
        ],
        title: const Text(
          'Detail Plant',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
          vertical: getProportionateScreenHeight(20),
        ),
        child: Obx(
          () => Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(50)),
              Center(
                child: Image.asset(
                  'assets/img/lettuceDetail.png',
                  width: getProportionateScreenWidth(250),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(60)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Pixel',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      BarIndicator(
                        value: controller.pixel.value,
                        percent: controller.percentPixel.value,
                        satuan: 'px',
                        barColor: Colors.blue,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      BarIndicator(
                        value: controller.weight.value,
                        percent: controller.percentWeight.value,
                        satuan: 'g',
                        barColor: Colors.green[300],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(40)),
              Row(
                children: [
                  Column(
                    children: [
                      const Text(
                        'plant id',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Text('${controller.id.value}')
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Text(
                        'plant type',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Text(controller.name.value)
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Text(
                        'plant update',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Text(controller.updated.value),
                    ],
                  )
                ],
              ),
              const Spacer(),
              const LogoBottom()
            ],
          ),
        ),
      ),
    );
  }
}
