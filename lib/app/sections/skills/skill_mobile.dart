import 'package:doaa_safwat_portfolio/app/sections/skills/widgets/skill_utils.dart';
import 'package:doaa_safwat_portfolio/app/widgets/custom_text_heading.dart';
import 'package:doaa_safwat_portfolio/core/configs/configs.dart';
import 'package:doaa_safwat_portfolio/core/configs/others/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SkillMobileTab extends StatelessWidget {
  const SkillMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(text: "\nSkills"),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: const CustomSectionSubHeading(
              text: "Showcasing my technical expertise!"),
        ),
        Space.y(2.w)!,
        Column(
          children: [
            for (int i = 0; i < skillUtils.length; i += 2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SkillCardMobile(skill: skillUtils[i]),
                  ),
                  SizedBox(width: 3.w),
                  if (i + 1 < skillUtils.length)
                    Expanded(
                      child: SkillCardMobile(skill: skillUtils[i + 1]),
                    ),
                ],
              ),
          ],
        ),
        Space.y(1.w)!,
      ],
    );
  }
}

class SkillCardMobile extends StatelessWidget {
  final SkillUtils skill;

  const SkillCardMobile({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      skill.skillName,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    '${skill.skillPercentage.toStringAsFixed(0)}%',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Container(
                width: constraints.maxWidth,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    FractionallySizedBox(
                      widthFactor: skill.skillPercentage / 100,
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
