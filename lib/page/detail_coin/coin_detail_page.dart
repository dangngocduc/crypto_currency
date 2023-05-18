import 'dart:developer' as developer;
import 'package:crypto_currency/gen/assets.gen.dart';
import 'package:crypto_currency/page/page1/icon_action_widget.dart';
import 'package:crypto_currency/page/page1/page_1.dart';
import 'package:crypto_currency/widget/line_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'header_widget.dart';

class CoinDetailPage extends StatefulWidget {
  const CoinDetailPage({Key? key}) : super(key: key);

  @override
  State<CoinDetailPage> createState() => _CoinDetailPageState();
}

class _CoinDetailPageState extends State<CoinDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 64,
        leading: Center(
          child: IconActionWidget(
            onTap: () {
              GoRouter.of(context).pop();
            },
            background: const Color(0xFF2C2C33),
            icon: Assets.icons.icBack,
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.icons.icETH),
            const SizedBox(
              width: 8,
            ),
            const Text('ETH / USDT ')
          ],
        ),
        actions: [
          Center(
            child: IconActionWidget(
              background: const Color(0xFF2C2C33),
              icon: Assets.icons.icChart,
            ),
          ),
          const SizedBox(
            width: 12,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderWidget(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 8),
                            child: IntrinsicWidth(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ...List.generate(8, (index) => '${index}K')
                                      .reversed
                                      .expand((element) {
                                    return [
                                      Expanded(child: Container()),
                                      Text(
                                        element,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      )
                                    ];
                                  })
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white10,
                                  width: 1,
                                ),
                              ),
                              child: const LineChartWidget(points: [
                                0.1,
                                0.5,
                                0.3,
                                0.2,
                                0.15,
                                0.5,
                                0.7,
                                0.3,
                                0.5,
                                0.7,
                                0.3,
                                0.2,
                                0.4,
                                0.15,
                                0.5,
                                0.7,
                                0.3,
                                0.2,
                                0.4,
                                0.2,
                                0.15,
                                0.5,
                                0.7,
                                0.3,
                                0.2,
                                0.4
                              ]),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 8, left: 32),
                      width: 32,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...List.generate(8, (index) => '${index}')
                              .reversed
                              .expand((element) {
                            return [
                              Text(
                                element,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              Expanded(child: Container()),
                            ];
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FilledButton(
                    style: FilledButton.styleFrom(
                      fixedSize: Size(150, 48),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {},
                    child: Text('Buy'),
                  ),
                  FilledButton(
                    style: FilledButton.styleFrom(
                      fixedSize: Size(150, 48),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {},
                    child: Text('Sell'),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 12),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Quick watch'),
                  Text('See all'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const Column(
                children: [
                  ItemCoinWidget(),
                  SizedBox(
                    height: 24,
                  ),
                  ItemCoinWidget(),
                  SizedBox(
                    height: 24,
                  ),
                  ItemCoinWidget(),
                  SizedBox(
                    height: 24,
                  ),
                  ItemCoinWidget(),
                  SizedBox(
                    height: 24,
                  ),
                  ItemCoinWidget(),
                  SizedBox(
                    height: 24,
                  ),
                  ItemCoinWidget(),
                  SizedBox(
                    height: 24,
                  ),
                  ItemCoinWidget(),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
