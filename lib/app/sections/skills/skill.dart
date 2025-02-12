import 'package:doaa_safwat_portfolio/core/res/responsive.dart';
import 'package:flutter/material.dart';
import 'skill_desktop.dart';
import 'skill_mobile.dart';

class Skill extends StatelessWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: SkillMobileTab(),
      tablet: SkillMobileTab(),
      desktop: SkillDesktop(),
    );
  }
}
