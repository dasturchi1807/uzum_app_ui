
import 'package:uzum_app/core/importers.dart';

class TabBarContainer extends StatelessWidget {
  final int itemCnt;
  final Function callbackFunction;

  const TabBarContainer(
      {super.key, required this.itemCnt, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.red,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisExtent: 400,
                mainAxisSpacing: 12.0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: itemCnt,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  Container(
                      child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/products/${index + 1}.jpg",
                            fit: BoxFit.cover,
                          )),
                      Column(
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                  onPressed: () {
                                    callbackFunction(iconBtn = true);
                                  },
                                  color: Colors.black,
                                  icon: iconBtn == false
                                      ? const Icon(
                                          Icons.favorite_border_outlined)
                                      : const Icon(
                                          Icons.favorite,
                                          color: Colors.deepPurple,
                                        ))),
                          Padding(
                              padding: const EdgeInsets.only(top: 170, right: 120),
                              child: Container(
                                width: (width(context) / 100) * 20,
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Center(child: Text(
                                  "Aksiya",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              )),)
                        ],
                      )
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                      const Row(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(Icons.star, size: 15, color: Colors.amber,)),
                          Text("4.9 (700 ta buyurtma)", style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                          ),)
                        ],
                      ),
                       Column(
                          children: [
                           const Align(
                              alignment: Alignment.centerLeft,
                              child: Text("698.000 so'm", style: TextStyle(
                                color: Colors.grey,
                              ),),
                            ),
                            Row(
                              children: [
                                const Text("488.000 so'm", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17
                                ),),
                               const SizedBox(
                                  width: 30,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Stack(
                                    children: [
                                      IconButton(onPressed: () {},
                                          style: IconButton.styleFrom(
                                            side: const BorderSide(color: Colors.grey, width: 1)
                                          ),
                                          icon: const Icon(Icons.shopping_bag_outlined))
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],

                        ),
                    ],
                  ))
                ],
              );
            }));
  }
}
