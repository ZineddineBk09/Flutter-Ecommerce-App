import 'package:e_commerce_app/controllers/popularProductsController.dart';
import 'package:e_commerce_app/data/api/apiClient.dart';
import 'package:e_commerce_app/data/repository/popularProductsRepo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: ''));

// repos
  Get.lazyPut(
    () => PopularProductsRepo(
      apiClient: Get.find(),
    ),
  );

  // controllers
  Get.lazyPut(
    () => PopularProductsController(
      popularProductRepo: Get.find(),
    ),
  );
}
