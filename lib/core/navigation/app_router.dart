import 'package:auto_route/auto_route.dart';
import 'package:demo/product/home_screen/home_screen.dart';
import 'package:demo/product/network_work/view/post_screen.dart';
import 'package:demo/product/setting_screen/setting_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouterItem.home.str(),
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: RouterItem.setting.str(),
          page: SettingRoute.page,
        ),
        AutoRoute(
          path: RouterItem.post.str(),
          page: PostRoute.page,
        ),
      ];
}

enum RouterItem {
  home,
  setting,
  post,
}

extension RouterItems on RouterItem {
  String str() {
    switch (this) {
      case RouterItem.home:
        return "/home";
      case RouterItem.setting:
        return "/setting";
      case RouterItem.post:
        return "/post";
    }
  }
}
