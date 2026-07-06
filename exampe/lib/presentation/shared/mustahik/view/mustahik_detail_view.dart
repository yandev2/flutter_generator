import 'package:flutter/material.dart';
import 'package:simzakat_baznas_lubuklinggau/core/shared/appbar_detail_view.dart';

class MustahikDetailView extends StatelessWidget {
  const MustahikDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [AppbarDetailView(title: "Detail Mustahik", isBack: true)],
      ),
    );
  }
}
