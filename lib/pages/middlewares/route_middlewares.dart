import 'package:get/get.dart';

class RouteMiddlewares extends GetMiddleware{


  RouteMiddlewares({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {

    return super.onPageCalled(page);
  }
}