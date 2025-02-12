class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
   ProjectUtils(
    banners: 'assets/imgs/Frame 10.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Online Courses App',
    description:
        'The Online Courses App offers a variety of courses with personalized recommendations, progress tracking, and certificate generation. Its user-friendly interface allows learners to easily access lessons, quizzes, and resources.',
    links: 'https://github.com/doaasafwat/Online_Courses_App.git',
  ),
   ProjectUtils(
    banners: 'assets/imgs/Frame 8.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Ecommerce App',
    description:
        'This Ecommerce App provides a seamless shopping experience with product data fetched via APIs. It features Search, adding items to Cart or Favorites using Provider, and secure payments through Stripe and PayPal.',
    links: 'https://github.com/doaasafwat/Ecommerce_App.git',
  ),
  ProjectUtils(
    banners: 'assets/imgs/Frame2.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Bookly App',
    description:
        'It is an Application fetch books from Free Google Books API and Display them and the Newest and Similar Books and Review it',
    links: 'https://github.com/doaasafwat/bookly.git',
  ),
  ProjectUtils(
    banners: 'assets/imgs/Frame 4.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Diary App',
    description:
        'Diary App is a user-friendly app that helps users conveniently organize their ideas, appointments, and important information.',
    links: 'https://github.com/doaasafwat/Note_App.git',
  ),
  

  ProjectUtils(
    banners: 'assets/imgs/Frame 7.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Weather Forecasting App',
    description:
        'This Weather Forecasting App, developed with Flutter, provides real-time weather updates, including secure authentication, location-based search, notifications, and a 7-day forecast for easy daily planning and safety.',
    links: 'https://github.com/doaasafwat/Weather_Forecasting_App.git',
  ),
 
  ProjectUtils(
    banners: 'assets/imgs/Frame 3.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Store App',
    description:
        'A Flutter application that utilizes APIs to provide users with a seamless and dynamic shopping experience.',
    links: 'https://github.com/doaasafwat/Store_App.git',
  ),

 
];
