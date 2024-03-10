import 'package:flutter/material.dart';
import 'package:tap_invest/core/app_padding.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';
import 'package:tap_invest/features/home/presentation/widgets/metrics_stats_view.dart';

class KeyMetricsWidget extends StatelessWidget {
  const KeyMetricsWidget({super.key});
  static List<String> chips = [
    'FUNDING',
    'TRACTION',
    'FINANCIAL',
    'COMPETITION'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 36, 20),
          child: Text(
            'Key Metrics',
            style: context.theme.primaryTextTheme.titleLarge?.copyWith(
                color: AppColors.stone700, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 0, 20),
          child: SizedBox(
            height: 27,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chips.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: index == 2
                              ? AppColors.green700
                              : AppColors.stone300),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 6),
                        child: Text(
                          chips[index],
                          style: index == 2
                              ? context.theme.primaryTextTheme.labelSmall
                                  ?.copyWith(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w600)
                              : context.theme.primaryTextTheme.labelSmall
                                  ?.copyWith(
                                      color: AppColors.stone500,
                                      fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
        Flexible(
            child: Padding(
          padding: EdgeInsets.fromLTRB(AppPadding.mediumLeftPadding, 0,
              AppPadding.mediumRightPadding, 24),
          child: const MetricsStatsView(),
        ))
      ],
    );
  }
}
