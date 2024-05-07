import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/models/projects.dart';
import 'package:portfolio_website/models/recommendation.dart';
import 'package:portfolio_website/screens/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../components/animated_counter.dart';
import '../components/highlight_info.dart';

import '../components/project_card.dart';
import '../components/recommendation_card_all.dart';
import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        MyProjects(),
        RecommendationInfo()
      ],
    );
  }
}
