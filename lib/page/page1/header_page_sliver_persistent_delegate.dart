import 'package:crypto_currency/gen/assets.gen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'icon_action_widget.dart';

class HeaderPageSliverPersistentDelegate
    extends SliverPersistentHeaderDelegate {
  final double paddingTop;

  HeaderPageSliverPersistentDelegate(this.paddingTop);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: ShapeDecoration(
        color: Theme.of(context).primaryColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              bottom: null,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Assets.images.avatarSample.image(width: 42),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back',
                            style:
                                Theme.of(context).primaryTextTheme.labelLarge,
                          ),
                          Text(
                            'Dang Ngoc Duc',
                            style:
                                Theme.of(context).primaryTextTheme.titleLarge,
                          ),
                        ],
                      ),
                    ),
                    IconActionWidget(
                      icon: Assets.icons.icWallet,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    IconActionWidget(
                      icon: Assets.icons.icScan,
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              top: null,
              bottom: 12,
              child: Container(
                height: 48,
                padding: const EdgeInsets.only(right: 4),
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(FluentIcons.search_24_regular),
                    ),
                    Expanded(
                        child: Text(
                      'Search...',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                    IconActionWidget(
                      icon: Assets.icons.icFilter,
                      background: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 132 + paddingTop;

  @override
  double get minExtent => 72 + paddingTop;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
