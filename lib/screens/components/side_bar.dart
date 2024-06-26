import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/screens/components/skills.dart';

import 'animated_progress_indicator.dart';
import 'area_info.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: "India",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Surat",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "18",
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xff24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset("assets/icons/linkedin.svg")),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg")),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg")),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
