import 'package:get/get.dart';

import '../../../data/repository/plant_repository.dart';

class DetailController extends GetxController {
  final Map<String, dynamic> arguments = Get.arguments;

  var weight = 0.obs;
  var pixel = 0.obs;
  var name = ''.obs;
  var id = 0.obs;
  var percentWeight = 0.0.obs;
  var percentPixel = 0.0.obs;
  var updated = "".obs;

  void getPlantById() async {
    var result = await PlantRepositoryById.getPlantById(arguments['id']);
    if (result != null) {
      id.value = result.data!.attributes!.idPlant!.toInt();
      weight.value = result.data!.attributes!.weight!.toInt();
      pixel.value = result.data!.attributes!.pixel!.toInt();
      name.value = result.data!.attributes!.name!.toString();
      updated.value = result.data!.attributes!.updated!.toString();

      percentPixel.value = (pixel.value / 20000 * 100).toDouble();
      percentWeight.value = (weight.value / 115 * 100).toDouble();
    }
  }

  @override
  void onInit() {
    getPlantById();
    super.onInit();
  }
}
