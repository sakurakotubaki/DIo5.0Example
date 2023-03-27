// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   // finalだと使えない？lateをつけるとエラーが発生する
//   var jsonList;
//   // アプリが起動したときに実行する
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getData();
//   }
//
//   void getData() async {
//     try {
//       // APIからの応答を保持する変数
//       final response = await Dio()
//           .get('https://protocoderspoint.com/jsondata/superheros.json');
//       if (response.statusCode == 200) {
//         setState(() {
//           jsonList = response.data['superheros'] as List;
//         });
//       } else {
//         print(response.statusCode);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             child: ListTile(
//               // ネットワークから取得した画像を丸くす
//               // 画像の幅と高さは50に設定する
//               leading: ClipRRect(
//                 borderRadius: BorderRadius.circular(80),
//                 child: Image.network(
//                   jsonList[index]['url'],
//                   fit: BoxFit.fill,
//                   width: 50,
//                   height: 50,
//                 ),
//               ),
//               title: Text(jsonList[index]['name']),
//               subtitle: Text(jsonList[index]['power']),
//             ),
//           );
//         },
//         itemCount: jsonList == null
//             ? 0
//             : jsonList.length, // nullだったら0で、データがあれば存在する数だけ取得する
//       ),
//     );
//   }
// }
