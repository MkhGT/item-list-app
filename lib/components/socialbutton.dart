import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:item_list_app/color-palette/palette.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final double widthIcon;

  const SocialButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 80,
    this.widthIcon = 35,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: widthIcon,
      ),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 15,
          color: Palette.whiteColor,
        ),
      ),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: 22, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Palette.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
