// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:faker_fectcher_exam/models/persons_model/persons_model.dart'
    as _i6;
import 'package:faker_fectcher_exam/screens/faker_content_screen/main_faker_content_screen.dart'
    as _i1;
import 'package:faker_fectcher_exam/screens/faker_list_screen/main_faker_list_screen.dart'
    as _i2;
import 'package:faker_fectcher_exam/screens/home_screen.dart' as _i3;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainFakerContentRoute.name: (routeData) {
      final args = routeData.argsAs<MainFakerContentRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.MainFakerContentPage(
          key: args.key,
          personsData: args.personsData,
        ),
      );
    },
    MainFakerListRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainFakerListPage(),
      );
    },
    MyHomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MyHomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainFakerContentPage]
class MainFakerContentRoute
    extends _i4.PageRouteInfo<MainFakerContentRouteArgs> {
  MainFakerContentRoute({
    _i5.Key? key,
    required _i6.Persons personsData,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          MainFakerContentRoute.name,
          args: MainFakerContentRouteArgs(
            key: key,
            personsData: personsData,
          ),
          initialChildren: children,
        );

  static const String name = 'MainFakerContentRoute';

  static const _i4.PageInfo<MainFakerContentRouteArgs> page =
      _i4.PageInfo<MainFakerContentRouteArgs>(name);
}

class MainFakerContentRouteArgs {
  const MainFakerContentRouteArgs({
    this.key,
    required this.personsData,
  });

  final _i5.Key? key;

  final _i6.Persons personsData;

  @override
  String toString() {
    return 'MainFakerContentRouteArgs{key: $key, personsData: $personsData}';
  }
}

/// generated route for
/// [_i2.MainFakerListPage]
class MainFakerListRoute extends _i4.PageRouteInfo<void> {
  const MainFakerListRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainFakerListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainFakerListRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MyHomePage]
class MyHomeRoute extends _i4.PageRouteInfo<void> {
  const MyHomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
