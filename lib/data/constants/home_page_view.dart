


import 'package:ge/presentation/widgets/home_page_view/page_1.dart';
import 'package:ge/presentation/widgets/home_page_view/page_2.dart';

import '../model/home_page_view.dart';

List<HomePageViewModel> homePageViewList = [
  HomePageViewModel(title: "Tokens", page: Page1()),
  HomePageViewModel(title: "Leasing", page: Page2()),
];