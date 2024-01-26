import 'package:get/get.dart';
import 'package:tru_dating/views/app_navigation_screen.dart';
import 'package:tru_dating/views/basic_info_screen.dart';
import 'package:tru_dating/views/basics_screen.dart';
import 'package:tru_dating/views/chat_screen.dart';
import 'package:tru_dating/views/choose_plan_screen.dart';
import 'package:tru_dating/views/filter_screen.dart';
import 'package:tru_dating/views/home_container_screen.dart';
import 'package:tru_dating/views/interests_tab_container_screen.dart';
import 'package:tru_dating/views/it_s_a_match_screen.dart';
import 'package:tru_dating/views/likes_tab_container_screen.dart';
import 'package:tru_dating/views/message_screen.dart';
import 'package:tru_dating/views/more_info_screen.dart';
import 'package:tru_dating/views/my_personal_info_screen.dart';
import 'package:tru_dating/views/my_preferences_screen.dart';
import 'package:tru_dating/views/photos_screen.dart';
import 'package:tru_dating/views/prompt_questions_screen.dart';
import 'package:tru_dating/views/prompts_screen.dart';
import 'package:tru_dating/views/search_tab_container_screen.dart';
import 'package:tru_dating/views/select_country_screen.dart';
import 'package:tru_dating/views/select_education_screen.dart';
import 'package:tru_dating/views/signin_screen.dart';
import 'package:tru_dating/views/signup_one_screen.dart';
import 'package:tru_dating/views/signup_screen.dart';
import 'package:tru_dating/views/signup_two_screen.dart';
import 'package:tru_dating/views/some_more_info_screen.dart';
import 'package:tru_dating/views/splash_screen.dart';
import 'package:tru_dating/views/upload_photos_screen.dart';
import 'package:tru_dating/views/video_intro_screen.dart';
import 'package:tru_dating/views/video_record_screen.dart';
import 'package:tru_dating/views/video_screen.dart';
import 'package:tru_dating/views/view_my_profile_screen.dart';
import 'package:tru_dating/views/your_interests_screen.dart';

class AppRoutes {
  static const String yourInterestsScreen = '/your_interests_screen';

  static const String splashScreen = '/splash_screen';

  static const String signinScreen = '/signin_screen';

  static const String signupScreen = '/signup_screen';

  static const String signupOneScreen = '/signup_one_screen';

  static const String signupTwoScreen = '/signup_two_screen';

  static const String selectCountryScreen = '/select_country_screen';

  static const String videoIntroScreen = '/video_intro_screen';

  static const String videoRecordScreen = '/video_record_screen';

  static const String uploadPhotosScreen = '/upload_photos_screen';

  static const String basicInfoScreen = '/basic_info_screen';

  static const String promptQuestionsScreen = '/prompt_questions_screen';

  static const String someMoreInfoScreen = '/some_more_info_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String chatScreen = '/chat_screen';

  static const String messageScreen = '/message_screen';

  static const String honeyDoePage = '/honey_doe_page';

  static const String itSAMatchScreen = '/it_s_a_match_screen';

  static const String myPersonalInfoScreen = '/my_personal_info_screen';

  static const String viewMyProfileScreen = '/view_my_profile_screen';

  static const String photosScreen = '/photos_screen';

  static const String basicsScreen = '/basics_screen';

  static const String promptsScreen = '/prompts_screen';

  static const String moreInfoScreen = '/more_info_screen';

  static const String videoScreen = '/video_screen';

  static const String interestsPage = '/interests_page';

  static const String interestsTabContainerScreen =
      '/interests_tab_container_screen';

  static const String choosePlanScreen = '/choose_plan_screen';

  static const String likesPage = '/likes_page';

  static const String likesTabContainerScreen = '/likes_tab_container_screen';

  static const String matchesPage = '/matches_page';

  static const String myPreferencesScreen = '/my_preferences_screen';

  static const String selectEducationScreen = '/select_education_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String filterScreen = '/filter_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: yourInterestsScreen,
      page: () => YourInterestsScreen(),
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: signinScreen,
      page: () => SigninScreen(),
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
    ),
    GetPage(
      name: signupOneScreen,
      page: () => SignupOneScreen(),
    ),
    GetPage(
      name: signupTwoScreen,
      page: () => SignupTwoScreen(),
    ),
    GetPage(
      name: selectCountryScreen,
      page: () => SelectCountryScreen(),
    ),
    GetPage(
      name: videoIntroScreen,
      page: () => VideoIntroScreen(),
    ),
    GetPage(
      name: videoRecordScreen,
      page: () => VideoRecordScreen(),
    ),
    GetPage(
      name: uploadPhotosScreen,
      page: () => UploadPhotosScreen(),
    ),
    GetPage(
      name: basicInfoScreen,
      page: () => BasicInfoScreen(),
    ),
    GetPage(
      name: promptQuestionsScreen,
      page: () => PromptQuestionsScreen(),
    ),
    GetPage(
      name: someMoreInfoScreen,
      page: () => SomeMoreInfoScreen(),
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
    ),
    GetPage(
      name: messageScreen,
      page: () => MessageScreen(),
    ),
    GetPage(
      name: itSAMatchScreen,
      page: () => ItSAMatchScreen(),
    ),
    GetPage(
      name: myPersonalInfoScreen,
      page: () => MyPersonalInfoScreen(),
    ),
    GetPage(
      name: viewMyProfileScreen,
      page: () => ViewMyProfileScreen(),
    ),
    GetPage(
      name: photosScreen,
      page: () => PhotosScreen(),
    ),
    GetPage(
      name: basicsScreen,
      page: () => BasicsScreen(),
    ),
    GetPage(
      name: promptsScreen,
      page: () => PromptsScreen(),
    ),
    GetPage(
      name: moreInfoScreen,
      page: () => MoreInfoScreen(),
    ),
    GetPage(
      name: videoScreen,
      page: () => VideoScreen(),
    ),
    GetPage(
      name: interestsTabContainerScreen,
      page: () => InterestsTabContainerScreen(),
    ),
    GetPage(
      name: choosePlanScreen,
      page: () => ChoosePlanScreen(),
    ),
    GetPage(
      name: likesTabContainerScreen,
      page: () => LikesTabContainerScreen(),
    ),
    GetPage(
      name: myPreferencesScreen,
      page: () => MyPreferencesScreen(),
    ),
    GetPage(
      name: selectEducationScreen,
      page: () => SelectEducationScreen(),
    ),
    GetPage(
      name: searchTabContainerScreen,
      page: () => SearchTabContainerScreen(),
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
    )
  ];
}
