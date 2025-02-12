import 'package:doaa_safwat_portfolio/app/sections/content/content.dart';
import 'package:doaa_safwat_portfolio/app/sections/home/home.dart';
import 'package:doaa_safwat_portfolio/app/sections/project/portfolio.dart';
import 'package:doaa_safwat_portfolio/app/sections/services/services.dart';
import 'package:doaa_safwat_portfolio/app/sections/skills/skill.dart';
import 'package:doaa_safwat_portfolio/app/widgets/footer.dart';
import 'package:flutter/material.dart';



class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    Services(),
    Portfolio(),
    Skill(),
    Contact(),
    Footer(),
  ];
}
