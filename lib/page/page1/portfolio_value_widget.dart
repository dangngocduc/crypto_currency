import 'package:crypto_currency/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/line_chart_widget.dart';

class PortfolioValueWidget extends StatefulWidget {
  const PortfolioValueWidget({Key? key}) : super(key: key);

  @override
  State<PortfolioValueWidget> createState() => _PortfolioValueWidgetState();
}

class _PortfolioValueWidgetState extends State<PortfolioValueWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Portfolio value',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          //$47,412.65
                          Text(
                            '\$47,412.65',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.icons.icArrowUp,
                                width: 12,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '\$453.85(+1.6%)',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xFF40BF6A)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const LineChartWidget(
                      points: [
                        0.5,
                        0.8,
                        0.3,
                        0.5,
                        0.7,
                        0.9,
                        0.4,
                        0.3,
                        0.7,
                        0.2
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(Assets.icons.groupTopRightCard),
          ),
          Positioned(
              top: -24,
              right: -24,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.topRight,
                    colors: [
                      const Color(0xFF007BFF).withOpacity(0.3),
                      Colors.transparent
                    ],
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(Assets.icons.groupBottomLeftCard),
          )
        ],
      ),
    );
  }
}
