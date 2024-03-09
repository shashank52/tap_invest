import 'package:flutter/material.dart';
import 'package:tap_invest/core/assets.dart';
import 'package:tap_invest/core/extensions/context.dart';
import 'package:tap_invest/core/theme/colors.dart';
import 'package:tap_invest/features/home/presentation/widgets/document_card.dart';

class DocumentWidget extends StatelessWidget {
  const DocumentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 36, 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Documents',
            style: context.theme.primaryTextTheme.titleLarge?.copyWith(
                color: AppColors.stone700, fontWeight: FontWeight.w500),
          ),
          const SizedBox.square(
            dimension: 8,
          ),
          Flexible(
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const DocumentCard(
                      asset: Assets.documentInvoice,
                      title: 'Invoice Discounting Contract',
                      description:
                          'All the legalese surrounding this deal and how it relates to you.',
                    );
                  }
                  return const DocumentCard(
                    asset: Assets.documentCompany,
                    title: 'Company Pitch Deck',
                    description:
                        'Read more about the company and see how they pitch to investors.',
                  );
                }),
          )
        ],
      ),
    );
  }
}
