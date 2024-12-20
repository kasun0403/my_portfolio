import 'package:kasun_tharanga/models/project_model.dart';

class ProjectData {
  static final List<ProjectModel> projects = [
    ProjectModel(
      actionLink: '#',
      imgURL: 'assets/images/simple_weather_app.png',
      projectName: 'Simple weather application',
    ),
    ProjectModel(
      actionLink: '#',
      imgURL: 'assets/images/my_portfolio_site.png',
      projectName: 'Portolio site',
    ),
    ProjectModel(
      actionLink: '#',
      imgURL: 'assets/images/authentication_app.png',
      projectName: 'Authentication application',
    ),
  ];
}
