import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_scale.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Get.theme.primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.volunteer_activism,
                size: size(100),
                color: Colors.white,
              ),
              SizedBox(height: size(24)),
              // App Name
              Text(
                'SimZakat',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: size(8)),
              Text(
                'Zakat Digital Baznas Lubuklinggau',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
              ),

              SizedBox(height: size(48)),
              SizedBox(
                width: size(100),
                child: LinearProgressIndicator(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  backgroundColor: Colors.white.withAlpha(40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
