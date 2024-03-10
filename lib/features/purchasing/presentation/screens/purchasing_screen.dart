import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/assets.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';
import 'package:tap_invest/features/purchasing/presentation/widgets/purchase_widget.dart';

class PurchasingScreen extends StatelessWidget {
  const PurchasingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SvgPicture.asset(Assets.backButton))),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Purchasing',
                style: context.theme.primaryTextTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.black),
              ),
              Row(
                children: [
                  Text(
                    'Agrizy',
                    style: context.theme.primaryTextTheme.bodyMedium?.copyWith(
                      color: AppColors.stone500,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_back_sharp,
                    color: AppColors.stone500,
                  ),
                  Text(
                    'Keshav Industries',
                    style: context.theme.primaryTextTheme.bodyMedium
                        ?.copyWith(color: AppColors.stone500),
                  )
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        const Expanded(child: PurchaseWidget())
      ]),
    );
  }
}
