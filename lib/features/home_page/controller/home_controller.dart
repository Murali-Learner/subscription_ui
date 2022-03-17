import 'package:get/get.dart';
import 'package:subscription_app/core/subscription_content.dart';

class HomeLogic {
  HomeController controller = Get.put(HomeController());
  onCardPressed(index) {
    controller.showShadow = !controller.showShadow;
    showElevation(index);
  }

  showElevation(int index) {
    subscriptionItems[index]["isPick"] = controller.showShadow;
    print(subscriptionItems[index]["isPick"]);
  }
}

class HomeController extends GetxController {
  bool? _showShadow = false;
  bool get showShadow => _showShadow!;

  set showShadow(bool value) {
    _showShadow = value;
    // print(value);
    update();
  }
}
