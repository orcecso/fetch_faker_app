import 'package:auto_route/auto_route.dart';
import 'package:faker_fectcher_exam/screens/faker_list_screen/bloc/faker_list_bloc.dart';
import 'package:faker_fectcher_exam/screens/faker_list_screen/components/faker_list_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MainFakerListPage extends StatelessWidget {
  const MainFakerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FakerListBloc(),
        ),
      ],
      child: const FakerListComponent(),
    );
  }
}
