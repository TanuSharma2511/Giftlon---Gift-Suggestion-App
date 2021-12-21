// import 'package:flutter/material.dart';
// import 'package:myapp/models/Product.dart';


// import 'itemCard.dart';

// class Body extends StatelessWidget {

// final kTextColor = Color(0xFF535353);
// final kTextLightColor = Color(0xFFACACAC);

// final kDefaultPaddin = 20.0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Text(
//             "Women",
//             style: Theme.of(context)
//                 .textTheme
//                 .headline5
//                 .copyWith(fontWeight: FontWeight.bold),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: GridView.builder(
//                 itemCount: products.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: kDefaultPaddin,
//                   crossAxisSpacing: kDefaultPaddin,
//                   childAspectRatio: 0.75,
//                 ),
//                 itemBuilder: (context, index) => ItemCard(
//                       product: products[index],
//                       // press: () => Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //       builder: (context) => DetailsScreen(
//                       //         product: products[index],
//                       //       ),
//                       //     ),
//                       //     ),
//                     )),
//           ),
//         ),
//       ],
//     );
//   }
// }
