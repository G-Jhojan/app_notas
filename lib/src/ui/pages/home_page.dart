import 'package:app_notas/src/ui/configure.dart';
import 'package:flutter/material.dart';

GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const HOME_PAGE_ROUTE = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configure.PRIMARY_DARK,
      appBar: AppBar(),
      key: homePageKey,
      body: Container(
        child: const Center(
          child: Text('PRIMER TEXTO', style: TextStyle(fontSize: 30, color:Configure.PRIMARY_DARK ), ),
        ),
      ),
    );
  }
}
