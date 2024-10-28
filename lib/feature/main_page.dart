import 'package:uzum_app/core/importers.dart';


class Main extends StatefulWidget {

  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  callback(value) {
    setState(() {
      iconBtn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: ListView(
          children: [
            carusel(context,
                lsCnt: 10,
                contHeight: 25,
                contMargin: 0,
                imgHeight: 22,
                imgWidth: 85),
            category(context, categoriesDescrpt,
                lsCnt: 10,
                contHeight: 15,
                contMargin: 15,
                imgHeight: 6,
                imgWidth: 12),
            const Divider(
              thickness: 3,
              indent: 180,
              endIndent: 180,
            ),
            Column(
              children: [
                const TabBar(
                    dividerColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "Tavsiyalar",
                      ),
                      Tab(
                        text: "Arzon narxlar",
                      ),
                    ]),
                Container(
                    padding: EdgeInsets.all(5),
                    width: width(context),
                    height: 2000,
                    child: TabBarView(children: [
                      //          TAVSIYALAR
                      TabBarContainer(callbackFunction: callback, itemCnt: 10),
                      //          ARZON NARXLAR
                      TabBarContainer(callbackFunction: callback, itemCnt: 10),
                    ]))
              ],
            )
          ],
        ));
  }
}
