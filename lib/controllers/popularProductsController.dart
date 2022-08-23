import 'package:e_commerce_app/data/repository/popularProductsRepo.dart';
import 'package:get/get.dart';

class PopularProductsController extends GetxController {
  final PopularProductsRepo popularProductRepo;
  PopularProductsController({
    required this.popularProductRepo,
  });

  List<dynamic> _popularProductsList =
      []; // in flutter ordart "_" means private variable
  List<dynamic> get popularProductsList =>
      _popularProductsList; // getter in dart

  Future<void> getPopularProductsList() async {
    Response resp = await popularProductRepo.getPopularProductsList();
    if (resp.statusCode == 200) {
      _popularProductsList = [];
      // _popularProductsList.addAll({});
      update(); // update the state => similar to setState()
    } else {}
  }
}
