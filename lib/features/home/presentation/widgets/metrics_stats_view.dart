import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/assets.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';
import 'package:tap_invest/features/home/presentation/widgets/stats_tile.dart';

class MetricsStatsView extends StatelessWidget {
  const MetricsStatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.width * 0.88,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: StatsTile(
                      title: 'ACTIVE DEAL',
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(8)),
                      description: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '6',
                            style: context.theme.primaryTextTheme.titleLarge
                                ?.copyWith(
                                    color: AppColors.stone700,
                                    fontWeight: FontWeight.w500),
                          ),
                          const SizedBox.square(
                            dimension: 4,
                          ),
                          Text(
                            'of',
                            style: context.theme.primaryTextTheme.titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.quickSilver),
                          ),
                          const SizedBox.square(
                            dimension: 4,
                          ),
                          Text(
                            '18',
                            style: context.theme.primaryTextTheme.titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.quickSilver),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: StatsTile(
                        title: 'RAISED',
                        description: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              Assets.ruppee,
                              height: 18,
                            ),
                            const SizedBox.square(
                              dimension: 4,
                            ),
                            Text(
                              '6.94',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      color: AppColors.stone700,
                                      fontWeight: FontWeight.w500),
                            ),
                            const SizedBox.square(
                              dimension: 4,
                            ),
                            Text(
                              'Cr',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.quickSilver),
                            )
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8))),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: StatsTile(
                        title: 'MATURED DEALS',
                        description: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '12',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      color: AppColors.stone700,
                                      fontWeight: FontWeight.w500),
                            ),
                            const SizedBox.square(
                              dimension: 4,
                            ),
                            Text(
                              'of',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.quickSilver),
                            ),
                            const SizedBox.square(
                              dimension: 4,
                            ),
                            Text(
                              '18',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.quickSilver),
                            )
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8))),
                  ),
                  Expanded(
                    child: StatsTile(
                        title: "ON TIME PAYMENT",
                        description: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '100',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      color: AppColors.stone700,
                                      fontWeight: FontWeight.w500),
                            ),
                            const SizedBox.square(
                              dimension: 4,
                            ),
                            const Icon(
                              Icons.percent,
                              color: AppColors.quickSilver,
                            ),
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(8))),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
