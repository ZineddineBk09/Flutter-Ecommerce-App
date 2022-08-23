import 'package:e_commerce_app/data/api/apiClient.dart';
import 'package:get/get.dart';

class PopularProductsRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductsRepo({required this.apiClient});

  Future<Response> getPopularProductsList() async {
    return await apiClient.getData('https://www/products/popular');
  }
}
