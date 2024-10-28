import 'package:uzum_app/core/importers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  callback(value) {
    setState(() {
      iconBtn = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: appBar(context, () {
                setState(() {});
              }),
              body: navigation[curIndex],
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: curIndex,
                  onTap: (int value) {
                    setState(() {
                      curIndex = value;
                    });
                  },
                  backgroundColor: Colors.white,
                  showSelectedLabels: true,
                  selectedIconTheme:
                      const IconThemeData(color: Colors.deepPurple, size: 27),
                  selectedItemColor: Colors.deepPurple,
                  selectedLabelStyle:
                      const TextStyle(fontSize: 13, color: Colors.deepPurple),
                  unselectedItemColor: Colors.grey,
                  unselectedIconTheme: const IconThemeData(color: Colors.grey),
                  iconSize: 27,
                  unselectedLabelStyle: const TextStyle(color: Colors.grey),
                  showUnselectedLabels: true,
                  unselectedFontSize: 12,
                  items: items))),
    );
  }
}
