import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swipeable_button/swipeable_button.dart';
import 'package:tap_invest/core/assets.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';

class PurchaseWidget extends StatefulWidget {
  const PurchaseWidget({super.key});

  @override
  State<PurchaseWidget> createState() => _PurchaseWidgetState();
}

class _PurchaseWidgetState extends State<PurchaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Flexible(
            child: Padding(
              padding: EdgeInsets.fromLTRB(24, 36, 24, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Flexible(
                    child: Text(
                      'ENTER AMOUNT',
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
            child: TextField(),
          ),
          // error widget
          const SizedBox.square(
            dimension: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 26, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Returns',
                  style: context.theme.primaryTextTheme.titleSmall
                      ?.copyWith(color: AppColors.independence),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      Assets.ruppee,
                      height: 15,
                    ),
                    const SizedBox.square(
                      dimension: 2,
                    ),
                    Text('56,555',
                        style: context.theme.primaryTextTheme.titleLarge
                            ?.copyWith(
                                color: AppColors.independence,
                                fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 26, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Net Yield',
                      style: context.theme.primaryTextTheme.titleSmall
                          ?.copyWith(color: AppColors.independence),
                    ),
                    const SizedBox.square(
                      dimension: 8,
                    ),
                    Text(
                      'IRR',
                      style: context.theme.primaryTextTheme.titleSmall
                          ?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.green700),
                    ),
                    const SizedBox.square(
                      dimension: 8,
                    ),
                    const Icon(
                      Icons.info_outline,
                      color: AppColors.green700,
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('13.1',
                        style: context.theme.primaryTextTheme.titleLarge
                            ?.copyWith(
                                color: AppColors.independence,
                                fontWeight: FontWeight.w500)),
                    const SizedBox.square(
                      dimension: 2,
                    ),
                    const Icon(
                      Icons.percent,
                      color: AppColors.quickSilver,
                      weight: 8,
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 26, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tenure',
                  style: context.theme.primaryTextTheme.titleSmall
                      ?.copyWith(color: AppColors.independence),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('61',
                        style: context.theme.primaryTextTheme.titleLarge
                            ?.copyWith(
                                color: AppColors.independence,
                                fontWeight: FontWeight.w500)),
                    const SizedBox.square(
                      dimension: 4,
                    ),
                    Text(
                      'days',
                      style: context.theme.primaryTextTheme.bodyMedium
                          ?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.quickSilver),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 110,
        color: AppColors.stone50,
        surfaceTintColor: AppColors.stone50,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Balance: 1,00,000',
                      style: context.theme.primaryTextTheme.titleSmall
                          ?.copyWith(color: AppColors.stone700),
                    ),
                    Text('Required: 0',
                        style: context.theme.primaryTextTheme.titleSmall
                            ?.copyWith(color: AppColors.stone700))
                  ],
                ),
              ),
              const SizedBox.square(
                dimension: 12,
              ),
              SwipeableButton.simple(
                  height: 50,
                  minThumbWidth: 50,
                  label: const Center(
                      child: Text("Swipe To Pay",
                          style: TextStyle(
                              color: AppColors.eerieBlack, fontSize: 16.0))),
                  color: AppColors.stone200,
                  thumbColor: AppColors.green700,
                  thumbIcon: Icons.arrow_forward,
                  onSwipe: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Thank you for swiping!"),
                    ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
