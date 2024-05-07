import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';

import '../../constants.dart';
import '../../models/projects.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: ProjectsGridview(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: ProjectsGridview(
              crossAxisCount: 2,
              // childAspectRatio: 1.5,
            ),
            tablet: ProjectsGridview(
              childAspectRatio: 1.1,
            ),
            desktop: ProjectsGridview())
      ],
    );
  }
}

class ProjectsGridview extends StatelessWidget {
  const ProjectsGridview({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });
  final crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: (Responsive.isMobileLarge(context)) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                height: (Responsive.isMobileLarge(context)) ? 1.4 : 1.5),
          ),
          Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                "Read More >>",
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}
