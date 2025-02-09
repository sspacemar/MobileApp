// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class SimpleApiCall extends StatefulWidget {
//   const SimpleApiCall({super.key});

//   @override
//   State<SimpleApiCall> createState() => _SimpleApiCallState();
// }

// class _SimpleApiCallState extends State<SimpleApiCall> {
//   get http => null;

//   Future<void> fetchData() async {
//     try {
//       var response = await http
//           .get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));
//       if (response.statusCode == 200) {
//         List<dynamic> jsonList = jsonDecode(response.body);
//       } else {
//         print('Invalid data');
//       }
//     } catch (e) {
//       print(e);
//     }

//     void initState() {
//       super.initState();
//       fetchData();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Simple API Call')),
//       body: ListView.separated(
//           separatorBuilder: (BuildContext context, int index) =>
//               const Divider(),
//           itemCount:10,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               leading: Text('${users[index].id}'),
//               title: Text('${users[index].name}'),
//             );
//           }),
//     );
//   }
// }
