import 'package:auto_route/auto_route.dart';
import 'package:faker_fectcher_exam/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MyHomeRoute.page, initial: true),
        AutoRoute(page: MainFakerListRoute.page),
        AutoRoute(page: MainFakerContentRoute.page),
      ];
}
