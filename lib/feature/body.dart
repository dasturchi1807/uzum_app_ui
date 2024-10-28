import 'package:uzum_app/core/importers.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: (height(context) / 100) * 25,
            // color: Colors.pink,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: List.generate(10, (index) => Container(
                  margin: EdgeInsets.all(5),
                child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                    fit: BoxFit.cover,
                    height: (height(context) / 100) * 25,
                    width: (width(context) / 100) * 85,
                    image: AssetImage('images/adv/${index+1}.jpg'),
                  ),
                ),
              )),
            ),
          )))
        ],
      ),
    );
  }
}
