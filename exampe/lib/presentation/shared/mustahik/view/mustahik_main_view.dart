import 'package:flutter/material.dart';
import 'package:simzakat_baznas_lubuklinggau/core/shared/appbar_main.dart';

class MustahikMainView extends StatelessWidget {
  const MustahikMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [AppbarMain(title: "Mustahik")],
      ),
    );
  }
}
