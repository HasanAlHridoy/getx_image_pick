import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var selectedImagePath = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedImage = await ImagePicker().getImage(source: imageSource);

    if (pickedImage != null) {
      selectedImagePath.value = pickedImage.path;
    } else {
      selectedImagePath.value = pickedImage!.path;
      Get.snackbar('title', 'message', snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
