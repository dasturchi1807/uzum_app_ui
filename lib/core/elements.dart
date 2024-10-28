import 'package:uzum_app/feature/catalog_page.dart';
import 'package:uzum_app/feature/favourites_page.dart';

import 'importers.dart';

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

int curIndex = 0;

TextEditingController controller = TextEditingController();
String result = '';

List<String> categoriesDescrpt = [
  "Muddatli\nto'lov",
  "Taom\nyetkazish",
  "Arzon\nnarxlar",
  "Hovlimiz",
  "Hammasi\n99000 gacha",
  "Avto sotib\nolish",
  "Aksessuarlar",
  "Elektronika",
  "Sport\nva hordiq",
  "Poyabzal"
];

List<BottomNavigationBarItem> items = [
  navBarItem(icon: const Icon(Icons.power_settings_new_outlined), label: "Bosh menu"),
  navBarItem(icon: const Icon(Icons.search_outlined), label: "Katalog"),
  navBarItem(icon: const Icon(Icons.shopping_bag_outlined), label: "Savat"),
  navBarItem(icon: const Icon(Icons.favorite_outline), label: "Istaklar"),
  navBarItem(icon: const Icon(Icons.person_outline), label: "Kabinet")

];

bool iconBtn = false;

// BOTTOM NAVIGATION BAR LISTS
List<Widget> navigation = const [
  Main(),
  Catalog(title: "CATALOG"),
  Bag(title: "SAVAT"),
  Favourite(title: "ISTAKLAR"),
  Cabinet(title: "KABINET")
];
