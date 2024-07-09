//
//
// import 'package:flutter/material.dart';
//
// class TestWidget extends StatelessWidget {
//   const TestWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             pinned: true,
//             expandedHeight: 200.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text('AppBar Title'),
//             ),
//             bottom: PreferredSize(
//               preferredSize: Size.fromHeight(48.0),
//               child: Column(
//                 children: [
//                   Container(
//                     color: Colors.orange,
//                     height: 50.0, // Height of your custom widget
//                     child: Center(child: Text('Your Custom Widget')),
//                   ),
//                   TabBar(
//                     controller: _tabController,
//                     tabs: [
//                       Tab(text: 'Tab 1'),
//                       Tab(text: 'Tab 2'),
//                       Tab(text: 'Tab 3'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 Center(child: Text('Content of Tab 1')),
//                 Center(child: Text('Content of Tab 2')),
//                 Center(child: Text('Content of Tab 3')),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
