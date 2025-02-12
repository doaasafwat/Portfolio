import 'package:doaa_safwat_portfolio/app/sections/content/content_desktop.dart';
import 'package:doaa_safwat_portfolio/app/sections/content/content_mobile.dart';
import 'package:doaa_safwat_portfolio/core/res/responsive.dart';
import 'package:flutter/material.dart';





class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
