import 'package:flutter/material.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/routes.dart';
import 'package:tap_invest/core/theme/colors.dart';
import 'package:tap_invest/features/home/presentation/widgets/documents_widget.dart';
import 'package:tap_invest/features/home/presentation/widgets/highlight_widget.dart';
import 'package:tap_invest/features/home/presentation/widgets/home_widget.dart';
import 'package:tap_invest/features/home/presentation/widgets/key_metrics_widget.dart';
import 'package:tap_invest/features/home/presentation/widgets/partners_wrapper_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.arrow_back_sharp),
            SizedBox.square(
              dimension: 4,
            ),
            Text(
              'Back to Deals',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      // Single child view for scrolling
      // it will be replaced once data is received from api with
      // ListView.separated where separation will be divider
      body: const SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeWidget(),
          Divider(),
          Flexible(fit: FlexFit.loose, child: PartnerWrapperWidget()),
          Divider(),
          Flexible(child: HighlightWidget()),
          Divider(),
          Flexible(child: KeyMetricsWidget()),
          Divider(),
          Flexible(child: DocumentWidget())
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        height: 84,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: Text(
                    'FILLED',
                    style: context.theme.primaryTextTheme.labelSmall
                        ?.copyWith(color: AppColors.charcoal.withOpacity(0.6)),
                  )),
                  Expanded(
                    child: Text(
                      '30%',
                      style: context.theme.primaryTextTheme.titleLarge
                          ?.copyWith(
                              color: AppColors.charcoal,
                              fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.purchasing);
                  },
                  child: Text(
                    'Tap to Invest',
                    style: context.theme.primaryTextTheme.bodyMedium?.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
