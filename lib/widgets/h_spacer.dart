

import 'package:faker_fectcher_exam/utils/app_theme.dart';
import 'package:flutter/material.dart';

class HSpace extends StatelessWidget {
  final double size;

  const HSpace(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(width: size);

  static HSpace get xs => HSpace(Insets.xs);
  static HSpace get sm => HSpace(Insets.sm);
  static HSpace get med => HSpace(Insets.med);
  static HSpace get lg => HSpace(Insets.lg);
  static HSpace get xl => HSpace(Insets.xl);
}
