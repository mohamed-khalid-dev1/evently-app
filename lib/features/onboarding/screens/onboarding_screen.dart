import 'package:animate_do/animate_do.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently_app/core/provider/app_provider.dart';
import 'package:evently_app/core/theme/app_colors.dart';
import 'package:evently_app/core/widgets/custom_btn.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context);
    var provider = Provider.of<AppProvider>(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: "logo",
                    child: Image.asset("assets/logo/app_logo.png", width: 50),
                  ),
                  SizedBox(width: 8),
                  Hero(
                    tag: "appName",
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Text(
                        localization!.title,
                        style: GoogleFonts.jockeyOne(
                          color: AppColors.primaryColor,
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Expanded(
                flex: 6,
                child: Center(
                  child: ZoomIn(
                    child: Image.asset("assets/images/onboarding_light.png"),
                  ),
                ),
              ),
              Spacer(),
              Text(
                localization.onboardingTitle,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                localization.onboardingDes,
                style: theme.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      localization.language,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AnimatedToggleSwitch<String>.rolling(
                      textDirection: TextDirection.ltr,
                      height: 40,
                      current: provider.local,
                      values: ["en", "ar"],
                      onChanged: (value) {
                        provider.changeLanguage(value);
                      },
                      iconList: [
                        Image.asset("assets/icons/en.png"),
                        Image.asset("assets/icons/ar.png"),
                      ],
                      indicatorIconScale: 1.2,
                      style: ToggleStyle(
                        backgroundColor: Colors.transparent,
                        borderColor: AppColors.primaryColor,
                        indicatorColor: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      localization.theme,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AnimatedToggleSwitch<ThemeMode>.rolling(
                      current: provider.themeMode,
                      values: [ThemeMode.light, ThemeMode.dark],
                      onChanged: (value) {
                        provider.changeThemeMode(value);
                      },
                      iconList: [
                        Image.asset("assets/icons/light.png"),
                        Image.asset(
                          "assets/icons/dark.png",
                          color: provider.themeMode == ThemeMode.dark
                              ? Colors.white
                              : null,
                        ),
                      ],
                      height: 40,
                      indicatorIconScale: 1.2,
                      style: ToggleStyle(
                        backgroundColor: Colors.transparent,
                        borderColor: AppColors.primaryColor,
                        indicatorColor: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: CustomBtn(
                      text: "Let's Start",
                      onTap: () {},
                      isLoading: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
