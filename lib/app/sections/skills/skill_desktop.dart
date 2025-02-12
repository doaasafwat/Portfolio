import 'package:doaa_safwat_portfolio/app/sections/skills/widgets/skill_utils.dart';
import 'package:doaa_safwat_portfolio/app/widgets/custom_text_heading.dart';
import 'package:doaa_safwat_portfolio/core/configs/configs.dart';
import 'package:doaa_safwat_portfolio/core/configs/others/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'widgets/skill_card.dart';

class SkillDesktop extends StatefulWidget {
  const SkillDesktop({Key? key}) : super(key: key);

  @override
  State<SkillDesktop> createState() => _SkillDesktopState();
}

class _SkillDesktopState extends State<SkillDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nSkills"),
          Space.y(1.w)!,
          const CustomSectionSubHeading(
              text: "Showcasing my technical expertise!"),
          Space.y(1.5.w)!,
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 0.5.w,
            spacing: 2.w,
            children: skillUtils
                .asMap()
                .entries
                .map(
                  (e) => SkillCard(
                    skill: e.value,
                  ),
                )
                .toList(),
          ),
          Space.y(2.w)!,
        ],
      ),
    );
  }
}
