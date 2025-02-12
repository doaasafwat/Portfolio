import 'package:doaa_safwat_portfolio/app/sections/skills/widgets/skill_utils.dart';
import 'package:doaa_safwat_portfolio/core/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SkillCard extends StatelessWidget {
  final SkillUtils skill;

  const SkillCard({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      width: 20.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                skill.skillName,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                 color: Theme.of(context).textColor,
                ),
              ),
              const Spacer(),
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
          SizedBox(height: 0.5.h),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 5.0,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              FractionallySizedBox(
                widthFactor: skill.skillPercentage / 100,
                child: Container(
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
