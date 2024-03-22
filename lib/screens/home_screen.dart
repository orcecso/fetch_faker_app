import 'package:auto_route/auto_route.dart';
import 'package:faker_fectcher_exam/router.gr.dart';
import 'package:faker_fectcher_exam/utils/app_theme.dart';
import 'package:faker_fectcher_exam/widgets/default_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return InitialScaffold(
      systemUiOverlayStyle: DefaultAppThemes.defaultSystemUIOverlayStyle,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Fetch Faker Data Exam App"),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                context.router.push(const MainFakerListRoute());
              },
              child: const Text('Press here'),
            ),
          ],
        ),
      ),
    );
  }
}
