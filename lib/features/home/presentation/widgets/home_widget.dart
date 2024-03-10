import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/app_padding.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';
import 'package:tap_invest/features/home/presentation/widgets/home_stats_view.dart';

import '../../../../core/assets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          AppPadding.mediumLeftPadding, 0, AppPadding.mediumRightPadding, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //Logo
          SvgPicture.asset(
            Assets.tapInvestLogo,
            width: 90,
            height: 90,
          ),
          const SizedBox.square(
            dimension: 16,
          ),
          // Content
          //  Heading
          Row(
            children: [
              Text(
                'Agrizy',
                style: context.theme.primaryTextTheme.headlineSmall?.copyWith(
                    color: AppColors.garkJungleGreen,
                    fontWeight: FontWeight.w600),
              ),
              const Icon(
                Icons.arrow_back_sharp,
                color: AppColors.stone500,
              ),
              Text(
                'Keshav Industries',
                style: context.theme.primaryTextTheme.headlineSmall?.copyWith(
                    color: AppColors.stone500, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox.square(
            dimension: 4,
          ),
          // Description
          Text(
            'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
            style: context.theme.primaryTextTheme.bodyMedium
                ?.copyWith(color: AppColors.stone500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox.square(
            dimension: 16,
          ),

          const Flexible(child: HomeStatsView()),
        ],
      ),
    );
  }
}
