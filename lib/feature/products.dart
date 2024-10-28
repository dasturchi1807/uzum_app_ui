import 'package:uzum_app/core/importers.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context, () {}),
        body: GridView.count(

              crossAxisCount: 2,
              children: List.generate(
                  10,
                  (index) => Container(
                    margin: EdgeInsets.all(10),
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/products/${index + 1}.jpg"),
                      )))),
        );
  }
}
