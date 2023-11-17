import 'package:app_notas/src/core/controllers/theme_controller.dart';
import 'package:app_notas/src/ui/widgets/buttons/card_button.dart';
import 'package:app_notas/src/ui/widgets/buttons/simple_buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

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

              const SizedBox(height: 10),

              ElevatedButton(onPressed: ()=> theme.changetheme(),
               child:  const  Text('Accionar botón')
              ),

              const SizedBox(height: 10),

              ElevatedButton(onPressed: ()async{
                if (await canLaunchUrlString('https://pub.dev/packages/url_launcher/example')){
                  launchUrlString('https://pub.dev/packages/url_launcher/example');
                }
              },
               child:  const  Text('URL')
              ),

              const SizedBox(height: 10),

              MediumButton(
                title: 'Botón nuevo',
                primaryColor: true,
                //icon:  Icon(Icons.add),
                onPressed: (){},
              ),

              const SizedBox(height: 10),

              CardButton(
                title: 'PDF',
                primaryColor: true,
                icon:  Icons.document_scanner_outlined,
                onPressed: (){},
              ),
            ],
          )
        );
      },
    );
  }
}
