import 'package:stacked_services/stacked_services.dart';

class ProfileController extends GetxController {
  static ProfileController instance = Get.find();

  RxBool isEdit = false.obs;
  toggleedit() {
    if (isEdit.isTrue) {
      isEdit.toggle();
    } else {
      isEdit.value = true;
    }
  }
}
