import 'package:flutter/material.dart';
import 'package:tap_invest/features/home/presentation/widgets/partner_widget.dart';

class PartnerWrapperWidget extends StatelessWidget {
  const PartnerWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(24, 20, 36, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: PartnerWidget(title: 'Clients'),
          ),
          SizedBox.square(
            dimension: 32,
          ),
          Flexible(child: PartnerWidget(title: 'Backed By'))
        ],
      ),
    );
  }
}
