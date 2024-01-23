//
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main()async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
//   runApp(EasyLocalization(
//       child: MyApp(),
//       supportedLocales:const [Locale('uz','UZ'), Locale('en', 'US')] ,
//       path: 'assets/translations'
//   ));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red,
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            const  Icon(Icons.sunny_snowing,size: 100,color: Colors.orange,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("images/w.svg",
                  width: 100,
                    height: 100,
                    // color: Colors.cyan,
                  ),
              const Gap(20),
               const Center(

                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                        Text("weather",
                           style :TextStyle(
                             fontSize : 30,
                             fontWeight: FontWeight.w500,
                             color : Color(0xFF000000),
                           )
                       ),
                        Text("App",style:
                       TextStyle(
                         fontSize: 30,
                         color: Color(0x80000000),
                         fontWeight: FontWeight.w500,
                       ),
                        ),

                     ],
                   ),
                )
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}


















