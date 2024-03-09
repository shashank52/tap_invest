import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/assets.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/app_theme.dart';
import 'package:tap_invest/core/theme/colors.dart';

class HighlightWidget extends StatelessWidget {
  const HighlightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 0, 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Highlights',
            style: context.theme.primaryTextTheme.titleLarge?.copyWith(
                color: AppColors.stone700, fontWeight: FontWeight.w500),
          ),
          const SizedBox.square(
            dimension: 24,
          ),
          SizedBox(
            height: 175,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: SizedBox(
                      width: context.width * 0.85,
                      child: DecoratedBox(
                        decoration: AppTheme.boxDecoration,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(Assets.lightBulb),
                                Text(
                                  'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.',
                                  style: context
                                      .theme.primaryTextTheme.bodyMedium
                                      ?.copyWith(color: AppColors.stone500),
                                )
                              ],
                            )),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox.square(
            dimension: 12,
          )
        ],
      ),
    );
  }
}
