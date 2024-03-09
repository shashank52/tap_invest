import 'package:flutter/material.dart';
import 'package:tap_invest/features/home/presentation/widgets/home_widget.dart';
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
      body: const SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeWidget(),
          Divider(),
          Flexible(fit: FlexFit.loose, child: PartnerWrapperWidget()),
          Divider()
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        // color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(child: Text('FILLED')),
                    Flexible(child: Text('30%'))
                  ],
                ),
              ),
            ),
            const Spacer(),
            Flexible(
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
                    child: Text('Tap to Invest'),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
