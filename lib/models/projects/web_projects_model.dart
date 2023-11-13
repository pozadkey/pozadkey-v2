class WebProjectsModel {
  String title;
  String image;
  String info;
  List<String> stack;
  String live;
  String github;
  WebProjectsModel(
      {required this.title,
      required this.image,
      required this.info,
      required this.stack,
      required this.live,
      required this.github});
}

List<WebProjectsModel> webProjectsModelList = [
  WebProjectsModel(
      title: 'Mediweb',
      image: 'assets/images/mediweb.PNG',
      info:
          'A web-based medical diagnostic system designed to provide comprehensive and efficient medical assessments',
      stack: ['Dart', 'Flutter', 'Firebase', 'Riverpod', 'ApiMedic API'],
      live: 'http://medi-web.netlify.app',
      github: 'https://github.com/pozadkey/mediweb'),
  WebProjectsModel(
      title: 'Circlelyfe',
      image: '',
      info:
          'A RESTful backend service for Circlelyfe, an innovative social media application',
      stack: [
        'Typescript',
        'Node.js',
        'Express',
        'JWT',
        'Sqllite',
        'Prisma',
        'NodeMailer'
      ],
      live: '',
      github: 'https://github.com/pozadkey/circlelyfe-backend'),
  WebProjectsModel(
      title: 'Graphql-Auth-api',
      image: '',
      info:
          'A GraphQL authentication system designed to seamlessly authenticate users',
      stack: [
        'Typescript',
        'Node.js',
        'Express',
        'Postgres',
        'TypeORM',
        'Nexus'
      ],
      live: '',
      github: 'https://github.com/pozadkey/graphql-auth-api'),
  WebProjectsModel(
      title: 'Kenbayane',
      image: 'assets/images/kenbayane.png',
      info: 'A portfolio website for a renewable energy company',
      stack: ['Dart', 'Flutter'],
      live: 'https://kenbayanerenewable.netlify.app',
      github: 'https://github.com/pozadkey/kenbayane'),
  WebProjectsModel(
      title: 'Node-Auth',
      image: '',
      info:
          'An elegantly designed RESTful user authentication system that prioritizes simplicity and security. It boasts key features such as user registration, user login, email verification, and password recovery.',
      stack: [
        'Javascript',
        'Nodejs',
        'MongoDB',
        'Express',
        'JWT',
        'NodeMailer'
      ],
      live: '',
      github: 'https://github.com/pozadkey/node-auth'),
];
