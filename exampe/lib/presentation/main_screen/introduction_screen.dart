import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/introduction_controller.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<IntroductionController>();
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndex,
            itemCount: controller.introData.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  //  image: DecorationImage(
                  //    image: AssetImage(introData[index]["image"]!),
                  //    fit: BoxFit.cover,
                  //  ),
                ),
              );
            },
          ),

          // 2. Konten Teks dan Button di bagian bawah
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              // Gradient overlay agar teks lebih mudah dibaca jika asset terang
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    theme.scaffoldBackgroundColor.withAlpha(0),
                    theme.scaffoldBackgroundColor.withAlpha(200),
                    theme.scaffoldBackgroundColor,
                  ],
                  stops: const [0.0, 0.3, 0.6],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Obx untuk memantau perubahan halaman dari controller
                  Obx(() {
                    int index = controller.currentPageIndex.value;
                    return Column(
                      children: [
                        Text(
                          controller.introData[index]["title"]!,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          controller.introData[index]["desc"]!,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    );
                  }),

                  const SizedBox(height: 32),

                  // Indikator Halaman (Dots)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      controller.introData.length,
                      (index) => Obx(
                        () => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(right: 8),
                          height: 8,
                          width: controller.currentPageIndex.value == index
                              ? 24
                              : 8,
                          decoration: BoxDecoration(
                            color: controller.currentPageIndex.value == index
                                ? theme.colorScheme.primary
                                : theme.colorScheme.primary.withAlpha(51),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: Obx(() {
                      bool isLastPage =
                          controller.currentPageIndex.value ==
                          controller.introData.length - 1;
                      return ElevatedButton(
                        onPressed: controller.nextPage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.colorScheme.primary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          isLastPage ? "Mulai" : "Lanjut",
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
