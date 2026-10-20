import 'package:animate_do/animate_do.dart';
import 'package:evently_app/core/theme/app_colors.dart';
import 'package:evently_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInDownBig(
            duration: Duration(seconds: 2),
            child: Center(
              child: Hero(
                tag: "logo",
                child: Image.asset("assets/logo/app_logo.png"),
              ),
            ),
          ),
          FadeInUpBig(
            onFinish: (direction) {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(seconds: 1),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      OnboardingScreen(),
                ),
              );
            },
            duration: Duration(seconds: 2),
            child: Hero(
              tag: "appName",
              child: Material(
                elevation: 0,
                color: Colors.transparent,
                child: Text(
                  "Evently",
                  style: GoogleFonts.jockeyOne(
                    color: AppColors.primaryColor,
                    fontSize: 36,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
