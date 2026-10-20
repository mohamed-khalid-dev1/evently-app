import 'package:evently_app/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final Function() onTap;
  final bool isLoading;

  const CustomBtn({
    super.key,
    required this.text,
    required this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: BorderRadius.circular(16),
      color: AppColors.primaryColor,
      onPressed: onTap,
      child: isLoading
          ? AnimatedCrossFade(
              firstChild: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              secondChild: CupertinoActivityIndicator(color: Colors.white),
              crossFadeState: isLoading
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: Duration(milliseconds: 50),
            )
          : Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
    );
  }
}
