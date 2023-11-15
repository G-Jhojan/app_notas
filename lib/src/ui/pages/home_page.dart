import 'package:app_notas/src/core/controllers/theme_controller.dart';
import 'package:app_notas/src/core/models/note.dart';
import 'package:flutter/material.dart';

GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
   HomePage({super.key});

  static const HOME_PAGE_ROUTE = 'home_page';



  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder(
      valueListenable:  ThemeController.instance.brightness,
      builder: (BuildContext context, dynamic value, Widget? child) {

        final theme = ThemeController.instance;

        return  Scaffold(
          backgroundColor: theme.background(),
          key: homePageKey,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
              child: Center(
                child: Text(
                  'Hola Mundo',
                    style: TextStyle(
                      fontSize: 20,
                       color: theme.primary()
                  ),
                 )
                ),
              ),

              ElevatedButton(onPressed: ()=> theme.changetheme(),
               child:  const  Text('Accionar botón')
              )
            ],
          )
        );
      },
    );
  }
}
