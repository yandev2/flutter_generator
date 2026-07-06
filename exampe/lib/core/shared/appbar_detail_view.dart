import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_scale.dart';

class AppbarDetailView extends StatelessWidget {
  const AppbarDetailView({
    super.key,
    required this.title,
    required this.isBack,
  });

  final String title;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      toolbarHeight: 0,
      collapsedHeight: 0,
      expandedHeight: size(75),
      backgroundColor: Get.theme.primaryColor,
      leading: null, // Dikosongkan karena dipindah ke flexibleSpace
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: size(16)),
                  child: Text(
                    title,
                    style: Get.theme.textTheme.titleLarge?.copyWith(
                      fontSize: size(14),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              if (isBack)
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: size(14), left: size(16)),
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.arrow_back,
                        size: size(20),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(size(30)),
        child: Container(
          height: size(30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Get.theme.scaffoldBackgroundColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(size(20))),
          ),
        ),
      ),
    );
  }
}
