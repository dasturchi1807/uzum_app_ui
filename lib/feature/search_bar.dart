import 'package:uzum_app/core/importers.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}


class _SearchBarState extends State<SearchBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.grey,
        leading: Container(
          height: (height(context) / 100) * 5,
          width: (width(context) / 100) * 80,
          margin: const EdgeInsets.only(left: 100),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            onChanged: (value) {
              setState(() {
              });
            },
              controller: controller,
              decoration: const InputDecoration(
                  icon: Icon(Icons.search)
              )
          ),
        )
    );
  }

}
