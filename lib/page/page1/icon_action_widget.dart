import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconActionWidget extends StatefulWidget {
  final String icon;
  final Color? background;
  final VoidCallback? onTap;
  const IconActionWidget({
    Key? key,
    required this.icon,
    this.background,
    this.onTap,
  }) : super(key: key);

  @override
  State<IconActionWidget> createState() => _IconActionWidgetState();
}

class _IconActionWidgetState extends State<IconActionWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.background ?? const Color(0xFF131316),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          widget.icon,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
