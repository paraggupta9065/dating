import 'package:tru_dating/presentation/your_interests_screen/your_interests_screen.dart';
import 'package:tru_dating/presentation/your_interests_screen/binding/your_interests_binding.dart';
import 'package:tru_dating/presentation/splash_screen/splash_screen.dart';
import 'package:tru_dating/presentation/splash_screen/binding/splash_binding.dart';
import 'package:tru_dating/presentation/signin_screen/signin_screen.dart';
import 'package:tru_dating/presentation/signin_screen/binding/signin_binding.dart';
import 'package:tru_dating/presentation/signup_screen/signup_screen.dart';
import 'package:tru_dating/presentation/signup_screen/binding/signup_binding.dart';
import 'package:tru_dating/presentation/signup_one_screen/signup_one_screen.dart';
import 'package:tru_dating/presentation/signup_one_screen/binding/signup_one_binding.dart';
import 'package:tru_dating/presentation/signup_two_screen/signup_two_screen.dart';
import 'package:tru_dating/presentation/signup_two_screen/binding/signup_two_binding.dart';
import 'package:tru_dating/presentation/select_country_screen/select_country_screen.dart';
import 'package:tru_dating/presentation/select_country_screen/binding/select_country_binding.dart';
import 'package:tru_dating/presentation/video_intro_screen/video_intro_screen.dart';
import 'package:tru_dating/presentation/video_intro_screen/binding/video_intro_binding.dart';
import 'package:tru_dating/presentation/video_record_screen/video_record_screen.dart';
import 'package:tru_dating/presentation/video_record_screen/binding/video_record_binding.dart';
import 'package:tru_dating/presentation/upload_photos_screen/upload_photos_screen.dart';
import 'package:tru_dating/presentation/upload_photos_screen/binding/upload_photos_binding.dart';
import 'package:tru_dating/presentation/basic_info_screen/basic_info_screen.dart';
import 'package:tru_dating/presentation/basic_info_screen/binding/basic_info_binding.dart';
import 'package:tru_dating/presentation/prompt_questions_screen/prompt_questions_screen.dart';
import 'package:tru_dating/presentation/prompt_questions_screen/binding/prompt_questions_binding.dart';
import 'package:tru_dating/presentation/some_more_info_screen/some_more_info_screen.dart';
import 'package:tru_dating/presentation/some_more_info_screen/binding/some_more_info_binding.dart';
import 'package:tru_dating/presentation/home_container_screen/home_container_screen.dart';
import 'package:tru_dating/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:tru_dating/presentation/chat_screen/chat_screen.dart';
import 'package:tru_dating/presentation/chat_screen/binding/chat_binding.dart';
import 'package:tru_dating/presentation/message_screen/message_screen.dart';
import 'package:tru_dating/presentation/message_screen/binding/message_binding.dart';
import 'package:tru_dating/presentation/it_s_a_match_screen/it_s_a_match_screen.dart';
import 'package:tru_dating/presentation/it_s_a_match_screen/binding/it_s_a_match_binding.dart';
import 'package:tru_dating/presentation/my_personal_info_screen/my_personal_info_screen.dart';
import 'package:tru_dating/presentation/my_personal_info_screen/binding/my_personal_info_binding.dart';
import 'package:tru_dating/presentation/view_my_profile_screen/view_my_profile_screen.dart';
import 'package:tru_dating/presentation/view_my_profile_screen/binding/view_my_profile_binding.dart';
import 'package:tru_dating/presentation/photos_screen/photos_screen.dart';
import 'package:tru_dating/presentation/photos_screen/binding/photos_binding.dart';
import 'package:tru_dating/presentation/basics_screen/basics_screen.dart';
import 'package:tru_dating/presentation/basics_screen/binding/basics_binding.dart';
import 'package:tru_dating/presentation/prompts_screen/prompts_screen.dart';
import 'package:tru_dating/presentation/prompts_screen/binding/prompts_binding.dart';
import 'package:tru_dating/presentation/more_info_screen/more_info_screen.dart';
import 'package:tru_dating/presentation/more_info_screen/binding/more_info_binding.dart';
import 'package:tru_dating/presentation/video_screen/video_screen.dart';
import 'package:tru_dating/presentation/video_screen/binding/video_binding.dart';
import 'package:tru_dating/presentation/interests_tab_container_screen/interests_tab_container_screen.dart';
import 'package:tru_dating/presentation/interests_tab_container_screen/binding/interests_tab_container_binding.dart';
import 'package:tru_dating/presentation/choose_plan_screen/choose_plan_screen.dart';
import 'package:tru_dating/presentation/choose_plan_screen/binding/choose_plan_binding.dart';
import 'package:tru_dating/presentation/likes_tab_container_screen/likes_tab_container_screen.dart';
import 'package:tru_dating/presentation/likes_tab_container_screen/binding/likes_tab_container_binding.dart';
import 'package:tru_dating/presentation/my_preferences_screen/my_preferences_screen.dart';
import 'package:tru_dating/presentation/my_preferences_screen/binding/my_preferences_binding.dart';
import 'package:tru_dating/presentation/select_education_screen/select_education_screen.dart';
import 'package:tru_dating/presentation/select_education_screen/binding/select_education_binding.dart';
import 'package:tru_dating/presentation/search_tab_container_screen/search_tab_container_screen.dart';
import 'package:tru_dating/presentation/search_tab_container_screen/binding/search_tab_container_binding.dart';
import 'package:tru_dating/presentation/filter_screen/filter_screen.dart';
import 'package:tru_dating/presentation/filter_screen/binding/filter_binding.dart';
import 'package:tru_dating/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:tru_dating/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

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
      bindings: [
        YourInterestsBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signinScreen,
      page: () => SigninScreen(),
      bindings: [
        SigninBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: signupOneScreen,
      page: () => SignupOneScreen(),
      bindings: [
        SignupOneBinding(),
      ],
    ),
    GetPage(
      name: signupTwoScreen,
      page: () => SignupTwoScreen(),
      bindings: [
        SignupTwoBinding(),
      ],
    ),
    GetPage(
      name: selectCountryScreen,
      page: () => SelectCountryScreen(),
      bindings: [
        SelectCountryBinding(),
      ],
    ),
    GetPage(
      name: videoIntroScreen,
      page: () => VideoIntroScreen(),
      bindings: [
        VideoIntroBinding(),
      ],
    ),
    GetPage(
      name: videoRecordScreen,
      page: () => VideoRecordScreen(),
      bindings: [
        VideoRecordBinding(),
      ],
    ),
    GetPage(
      name: uploadPhotosScreen,
      page: () => UploadPhotosScreen(),
      bindings: [
        UploadPhotosBinding(),
      ],
    ),
    GetPage(
      name: basicInfoScreen,
      page: () => BasicInfoScreen(),
      bindings: [
        BasicInfoBinding(),
      ],
    ),
    GetPage(
      name: promptQuestionsScreen,
      page: () => PromptQuestionsScreen(),
      bindings: [
        PromptQuestionsBinding(),
      ],
    ),
    GetPage(
      name: someMoreInfoScreen,
      page: () => SomeMoreInfoScreen(),
      bindings: [
        SomeMoreInfoBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: messageScreen,
      page: () => MessageScreen(),
      bindings: [
        MessageBinding(),
      ],
    ),
    GetPage(
      name: itSAMatchScreen,
      page: () => ItSAMatchScreen(),
      bindings: [
        ItSAMatchBinding(),
      ],
    ),
    GetPage(
      name: myPersonalInfoScreen,
      page: () => MyPersonalInfoScreen(),
      bindings: [
        MyPersonalInfoBinding(),
      ],
    ),
    GetPage(
      name: viewMyProfileScreen,
      page: () => ViewMyProfileScreen(),
      bindings: [
        ViewMyProfileBinding(),
      ],
    ),
    GetPage(
      name: photosScreen,
      page: () => PhotosScreen(),
      bindings: [
        PhotosBinding(),
      ],
    ),
    GetPage(
      name: basicsScreen,
      page: () => BasicsScreen(),
      bindings: [
        BasicsBinding(),
      ],
    ),
    GetPage(
      name: promptsScreen,
      page: () => PromptsScreen(),
      bindings: [
        PromptsBinding(),
      ],
    ),
    GetPage(
      name: moreInfoScreen,
      page: () => MoreInfoScreen(),
      bindings: [
        MoreInfoBinding(),
      ],
    ),
    GetPage(
      name: videoScreen,
      page: () => VideoScreen(),
      bindings: [
        VideoBinding(),
      ],
    ),
    GetPage(
      name: interestsTabContainerScreen,
      page: () => InterestsTabContainerScreen(),
      bindings: [
        InterestsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: choosePlanScreen,
      page: () => ChoosePlanScreen(),
      bindings: [
        ChoosePlanBinding(),
      ],
    ),
    GetPage(
      name: likesTabContainerScreen,
      page: () => LikesTabContainerScreen(),
      bindings: [
        LikesTabContainerBinding(),
      ],
    ),
    GetPage(
      name: myPreferencesScreen,
      page: () => MyPreferencesScreen(),
      bindings: [
        MyPreferencesBinding(),
      ],
    ),
    GetPage(
      name: selectEducationScreen,
      page: () => SelectEducationScreen(),
      bindings: [
        SelectEducationBinding(),
      ],
    ),
    GetPage(
      name: searchTabContainerScreen,
      page: () => SearchTabContainerScreen(),
      bindings: [
        SearchTabContainerBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
