import 'package:faker_fectcher_exam/utils/app_theme.dart';
import 'package:flutter/material.dart';

class VSpace extends StatelessWidget {
  final double size;

  const VSpace(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        height: size,
        width: 0.0,
      );

  static VSpace get xs => VSpace(Insets.xs);
  static VSpace get sm => VSpace(Insets.sm);
  static VSpace get med => VSpace(Insets.med);
  static VSpace get lg => VSpace(Insets.lg);
  static VSpace get xl => VSpace(Insets.xl);
  static VSpace get xxl => VSpace(Insets.xxl);
  static VSpace get xxxl => VSpace(Insets.xxxl);
}
