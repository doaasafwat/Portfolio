import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:doaa_safwat_portfolio/changes/strings.dart';
import 'package:doaa_safwat_portfolio/core/configs/others/app_typography.dart';



List<TyperAnimatedText> desktopList = [
  TyperAnimatedText(animationtxt1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 32)),
];

List<TyperAnimatedText> tabList = [
  TyperAnimatedText(animationtxt1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 20)),
];
List<TyperAnimatedText> mobileList = [
  TyperAnimatedText(animationtxt1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 16)),
];
