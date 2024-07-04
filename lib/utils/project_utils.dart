class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/share_skill.png',
    title: 'Share Skill',
    subtitle:
        'ShareSkill allows users to connect with people in a community to offer and request local services.',
    webLink:
        'https://github.com/AryanC19/share_skill',
  ),
  ProjectUtils(
    image: 'assets/projects/eventhive.png',
    title: 'Event Hive',
    subtitle:
        'Event Hive is all-in-one platform for finding, managing and promoting university and organization events.',
    webLink:
        'https://github.com/AryanC19/_Event-Hive_',
  ),
  ProjectUtils(
    image: 'assets/projects/portfolio.png',
    title: 'Portfolio Website',
    subtitle:
        'My portfolio website is a showcase of my information , all built using the Flutter framework written in Dart',
    webLink:
        'https://github.com/AryanC19/portfolio',
  ),

  
  
];
