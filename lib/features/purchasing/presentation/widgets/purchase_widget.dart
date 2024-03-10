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
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 36, 24, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'ENTER AMOUNT',
                      style: context.theme.primaryTextTheme.titleSmall
                          ?.copyWith(
                              color: AppColors.stone500.withOpacity(0.7),
                              fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
              child: IntrinsicWidth(
                child: TextField(
                  inputFormatters: const [],
                  style: context.theme.primaryTextTheme.headlineMedium
                      ?.copyWith(color: AppColors.stone700),
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: ' Min 50,000',
                      prefixIcon: SvgPicture.asset(
                        Assets.ruppee,
                        matchTextDirection: true,
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 14, minHeight: 36)),
                  controller: _controller,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                ),
              ),
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
                        color: AppColors.stone400,
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
                                color: AppColors.stone400),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
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
