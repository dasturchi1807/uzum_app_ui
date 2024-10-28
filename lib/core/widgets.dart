import 'package:uzum_app/core/importers.dart';
import 'package:carousel_slider/carousel_slider.dart';

//                            APLICATION APPBAR
PreferredSizeWidget appBar(BuildContext context, VoidCallback setSt) {
  return AppBar(
      // backgroundColor: Colors.grey,
      toolbarHeight: 68,
      actions: [
        Expanded(
          child: Container(
              height: (height(context) / 100) * 6,
              width: (width(context) / 100) * 80,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  onChanged: (String value) {
                    // setSt();
                    result = value;
                  },
                  controller: controller,
                  decoration: const InputDecoration(
                    icon: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                    border: InputBorder.none,
                    hintText: "Mahsuloat va toifalarni qidirish",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  ))),
        )
      ]);
}

//                            APLICATION BODYS
Widget carusel(BuildContext context,
    {int lsCnt = 0,
    double contHeight = 0.0,
    double contMargin = 0.0,
    double imgHeight = 0.0,
    double imgWidth = 0.0}) {
  return CarouselSlider(
      options: CarouselOptions(
        height: (height(context) / 100) * contHeight,
        viewportFraction: 0.9,
        autoPlay: true,
        enableInfiniteScroll: true,
        enlargeCenterPage: false,
      ),
      items: List.generate(
        lsCnt,
        (index) => Container(
            margin: EdgeInsets.all(contMargin),
            child: Column(children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Products()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    fit: BoxFit.cover,
                    height: (height(context) / 100) * imgHeight,
                    width: (width(context) / 100) * imgWidth,
                    image: AssetImage('images/adv/${index + 1}.jpg'),
                  ),
                ),
              ),
            ])),
      ));
}

Widget category(BuildContext context, List catgDesc,
    {int lsCnt = 0,
    double contHeight = 0.0,
    double contMargin = 0.0,
    double imgHeight = 0.0,
    double imgWidth = 0.0}) {
  return Container(
      height: (height(context) / 100) * contHeight,
      // color: Colors.pink,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              lsCnt,
              (index) => Container(
                  margin: EdgeInsets.all(contMargin),
                  child: Column(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Products()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          fit: BoxFit.cover,
                          height: (height(context) / 100) * imgHeight,
                          width: (width(context) / 100) * imgWidth,
                          image: AssetImage('images/adv/${index + 1}.jpg'),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        categoriesDescrpt[index],
                        style: const TextStyle(fontSize: 12),
                      ),
                    )
                  ])),
            ),
          )));
}

//                  NAVIGATION BAR GENERATE
BottomNavigationBarItem navBarItem(
    {Icon icon = const Icon(Icons.add), String label = ''}) {
  return BottomNavigationBarItem(
    icon: icon,
    label: label,
  );
}
