import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomAppBarItem extends StatelessWidget {
  const BottomAppBarItem({
    Key? key,
    required this.svgAsset,
    this.title,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  final String svgAsset;
  final String? title;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: isSelected
          ? Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: const Color(0XFF333742),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  svgAsset,
                  height: 24,
                  width: 24,
                  color: isSelected ? Colors.white : Colors.grey,
                ),
                // if (title?.isNotEmpty ?? false)
                Text(title ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: isSelected ? Colors.white : Colors.grey))
              ],
            ),
          )
          : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svgAsset,
                height: 24,
                width: 24,
                color: isSelected ? Colors.white : Colors.grey,
              ),
              // if (title?.isNotEmpty ?? false)
              Text(title ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: isSelected ? Colors.white : Colors.grey))
            ],
          ),
    );
  }
}
