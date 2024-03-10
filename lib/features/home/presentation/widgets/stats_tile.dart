import 'package:flutter/material.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';

class StatsTile extends StatelessWidget {
  const StatsTile(
      {required this.borderRadius,
      required this.title,
      required this.description,
      super.key});
  final BorderRadius borderRadius;
  final Widget description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: AppColors.stone200.withOpacity(0.25),
          border: Border.all(color: AppColors.stone300, width: 1)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 12, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.theme.primaryTextTheme.labelSmall?.copyWith(
                  color: AppColors.stone500, fontWeight: FontWeight.w600),
            ),
            const SizedBox.square(
              dimension: 4,
            ),
            description
          ],
        ),
      ),
    );
  }
}
