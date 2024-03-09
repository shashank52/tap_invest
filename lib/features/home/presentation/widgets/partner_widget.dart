import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';

import '../../../../core/assets.dart';

class PartnerWidget extends StatelessWidget {
  const PartnerWidget({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.theme.primaryTextTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w500, color: AppColors.stone700),
        ),
        const SizedBox.square(
          dimension: 8,
        ),
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                  child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: SvgPicture.asset(Assets.googleLogo))),
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: SvgPicture.asset(Assets.googleLogo),
              )),
              Flexible(
                  child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: SvgPicture.asset(Assets.googleLogo)))
            ],
          ),
        )
        // ListView.builder(
        //     itemCount: 3,
        //     scrollDirection: Axis.horizontal,
        //     itemExtent: 23,
        //     itemBuilder: ((context, index) {
        //       return SvgPicture.asset(Assets.googleLogo);
        //     }))
      ],
    );
  }
}
