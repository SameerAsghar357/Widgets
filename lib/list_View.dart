// // ignore_for_file: avoid_unnecessary_containers, avoid_print

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),

//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter HomePage')),
//         body: ListView(
//           // scrollDirection: Axis.horizontal,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Sameer',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Chand',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Asghar',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Shahzaib',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Faizan',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Abdullah',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Hazkeel',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Haider',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Taimoor',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Ahmet',
//                 style: TextStyle(fontSize: 70, fontWeight: FontWeight.w400),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ignore_for_file: avoid_unnecessary_containers, avoid_print

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var arrNames = [
//       'sameer',
//       'asghar',
//       'faizan',
//       'abdullah',
//       'shahzaib',
//       'ahmet',
//       'usman',
//       'haroon',
//     ];

//     return MaterialApp(
//       theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),

//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter HomePage')),
//         body: ListView.builder( // ListView contains ScrollView by default
//           itemBuilder: (context, index) {
//             return Text(
//               arrNames[index],
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
//             );
//           },
//           itemCount: arrNames.length,
//           itemExtent: 100,
//           // scrollDirection: Axis.horizontal,
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'sameer',
      'asghar',
      'faizan',
      'abdullah',
      'shahzaib',
      'ahmet',
      'usman',
      'haroon',
    ];

    return MaterialApp(
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),

      home: Scaffold(
        appBar: AppBar(title: Text('Flutter HomePage')),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                arrNames[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(height: 100, thickness: 2);
          },
          // scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
