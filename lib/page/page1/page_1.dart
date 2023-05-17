import 'package:crypto_currency/gen/assets.gen.dart';
import 'package:crypto_currency/page/page1/portfolio_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../widget/line_chart_widget.dart';
import 'header_page_sliver_persistent_delegate.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverPersistentHeader(
              delegate: HeaderPageSliverPersistentDelegate(
                  MediaQuery.of(context).padding.top),
            )
          ];
        },
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12)
                    .copyWith(top: 24),
                child: const PortfolioValueWidget(),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                child: Text(
                  'Watchlist',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push('/detail');
                    },
                    child: const ItemCoinWidget(),
                  ),
                );
              },
              itemCount: 8,
            )
          ],
        ),
      ),
    );
  }
}

class ItemCoinWidget extends StatelessWidget {
  const ItemCoinWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF18181C),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.images.icBitcoin,
            width: 50,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bitcoin',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'BTC',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: const Color(0xFF575B66)),
              ),
            ],
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: LineChartWidget(
                height: 48,
                points: [0.5, 0.8, 0.3, 0.5, 0.7, 0.9, 0.4, 0.3, 0.7, 0.2],
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '47,412.65',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.icArrowUp),
                  Text(
                    '+1.6%',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: const Color(0xFF40BF6A)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
