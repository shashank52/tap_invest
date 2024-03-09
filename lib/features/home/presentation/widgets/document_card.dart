import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/assets.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/app_theme.dart';
import 'package:tap_invest/core/theme/colors.dart';

class DocumentCard extends StatelessWidget {
  const DocumentCard(
      {required this.asset,
      required this.title,
      required this.description,
      super.key});
  final String asset;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DecoratedBox(
        decoration: AppTheme.boxDecoration,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(asset),
              const SizedBox.square(
                dimension: 16,
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: context.theme.primaryTextTheme.bodyMedium
                                ?.copyWith(
                                    color: AppColors.stone700,
                                    fontWeight: FontWeight.w500),
                          ),
                          Flexible(
                            child: Text(
                              description,
                              style: context.theme.primaryTextTheme.bodyMedium
                                  ?.copyWith(color: AppColors.stone500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: SvgPicture.asset(Assets.download),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
