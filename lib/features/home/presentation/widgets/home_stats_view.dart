import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/assets.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';
import 'package:tap_invest/features/home/presentation/widgets/stats_tile.dart';

class HomeStatsView extends StatelessWidget {
  const HomeStatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: context.width * 0.85,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: StatsTile(
                      title: 'MIN INVT',
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(8)),
                      description: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            Assets.ruppee,
                            width: 8,
                            height: 21,
                          ),
                          const SizedBox.square(
                            dimension: 4,
                          ),
                          Text(
                            '1',
                            style: context.theme.primaryTextTheme.titleLarge
                                ?.copyWith(
                                    color: AppColors.stone700,
                                    fontWeight: FontWeight.w500),
                          ),
                          const SizedBox.square(
                            dimension: 8,
                          ),
                          Text(
                            'Lakhs',
                            style: context.theme.primaryTextTheme.bodyMedium
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
                        title: 'TENURE',
                        description: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '61',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      color: AppColors.stone700,
                                      fontWeight: FontWeight.w500),
                            ),
                            const SizedBox.square(
                              dimension: 8,
                            ),
                            Text(
                              'days',
                              style: context.theme.primaryTextTheme.bodyMedium
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
                        title: 'NET YIELD',
                        description: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '13.23',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      color: AppColors.stone700,
                                      fontWeight: FontWeight.w500),
                            ),
                            const SizedBox.square(
                              dimension: 8,
                            ),
                            const Icon(
                              Icons.percent,
                              color: AppColors.quickSilver,
                            ),
                          ],
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8))),
                  ),
                  Expanded(
                    child: StatsTile(
                        title: "RAISED",
                        description: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '70',
                              style: context.theme.primaryTextTheme.titleLarge
                                  ?.copyWith(
                                      color: AppColors.stone700,
                                      fontWeight: FontWeight.w500),
                            ),
                            const SizedBox.square(
                              dimension: 8,
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
