import 'package:auto_route/auto_route.dart';
import 'package:faker_fectcher_exam/models/persons_model/persons_model.dart';
import 'package:faker_fectcher_exam/screens/faker_content_screen/components/faker_content_component.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainFakerContentPage extends StatelessWidget {
  const MainFakerContentPage({super.key, required this.personsData});
  final Persons personsData;

  @override
  Widget build(BuildContext context) {
    return FakerContentComponent(personsData: personsData);
  }
}
