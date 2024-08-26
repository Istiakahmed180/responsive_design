import 'package:flutter/material.dart';
import 'package:responsive_design/presentation/view/home/device_view/desktop_home_view.dart';
import 'package:responsive_design/presentation/view/home/device_view/mobile_home_view.dart';
import 'package:responsive_design/presentation/view/home/device_view/tablet_home_view.dart';
import 'package:responsive_design/responsive/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveBuilder(
        mobile: MobileHomeView(),
        tablet: TabletHomeView(),
        desktop: DesktopHomeView(),
      ),
    );
  }
}
