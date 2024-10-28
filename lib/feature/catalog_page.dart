import 'package:uzum_app/core/importers.dart';

class Catalog extends StatelessWidget {
  final String title;
  const Catalog({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: TextStyle(
        fontSize: 30
      ),),
    );
  }
}
