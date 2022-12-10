import 'package:flutter/material.dart';
import 'package:flutterexample/app_page.dart';
import 'package:flutterexample/web_view_test.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Permission.camera.request();
  await Permission.microphone.request();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const AppPage(),
    );
  }
}
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   formatNumber(dynamic myNumber) {
//     // Convert number into a string if it was not a string previously
//     String stringNumber = myNumber.toString();
//
//     // Convert number into double to be formatted.
//     // Default to zero if unable to do so
//     double doubleNumber = double.tryParse(stringNumber) ?? 0;
//
//     // Set number format to use
//     NumberFormat numberFormat = new NumberFormat.compact();
//
//     return numberFormat.format(doubleNumber);
//   }
//
//
//   String truncateNumber(int number){
//     String sign = (number < 0) ? "-" : "";
//
//     switch(number){
//       case 100_000_000_000...:
//         return;
//     }
//
//     return "";
//   }
//
//   List<String> longText = [];
//   List<String> shortText = [];
//
//   @override
//   void initState() {
//     super.initState();
//     longText.addAll([
//       getTimeSince(date: DateTime.now().subtract(const Duration(seconds: 3))),
//       getTimeSince(date: DateTime.now().subtract(const Duration(minutes: 3))),
//       getTimeSince(date: DateTime.now().subtract(const Duration(hours: 3))),
//       getTimeSince(date: DateTime.now().subtract(const Duration(days: 3))),
//       getTimeSince(date: DateTime.now().subtract(const Duration(days: (7 * 3)))),
//       getTimeSince(date: DateTime.now().subtract(const Duration(days: 90))),
//       getTimeSince(
//           date: DateTime(DateTime
//               .now()
//               .year - 3, DateTime
//               .now()
//               .month, DateTime
//               .now()
//               .day)),
//     ]);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 60),
//         child: Align(
//           alignment: Alignment.center,
//           child: ListView.separated(
//               padding: EdgeInsets.zero,
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemBuilder: (context, index) => Text(
//                     longText[index],
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(color: Colors.white, fontSize: 18,
//                     fontWeight: FontWeight.bold),
//                   ),
//               separatorBuilder: (context, index) => SizedBox(height: 10),
//               itemCount: longText.length),
//         ),
//       ),
//     );
//   }
// }
