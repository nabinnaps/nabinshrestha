// import 'package:flutter/material.dart';
// import 'package:nabinshrestha/widget/textdesign.dart';

// class FooterScreen extends StatelessWidget {
//   const FooterScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final double width=MediaQuery.of(context).size.width;
//     return Container(
//       width: width<=600? width:width*0.6,
//       height: 80,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
      
//         children: [

//           TextDesign(text: "Find me on social media.",fontsize: 15,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               IconButton(onPressed: (){}, icon: Image.asset("images/instagram.png",height: 25,)),
//               IconButton(onPressed: (){}, icon: Image.asset("images/facebook.png",height: 25,)),
//             ],
//           ),


//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:nabinshrestha/widget/textdesign.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  // Define methods to launch URLs


  @override
  Widget build(BuildContext context) {
  Future<void> _launchURL(String url) async {
    final Uri _url = Uri.parse(url);

  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width <= 600 ? width : width * 0.6,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextDesign(
            text: "Find me on social media.",
            fontsize: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  _launchURL("https://www.instagram.com/mr_nabinstha/?igsh=MXB2enp0MDFiMHAwMQ%3D%3D"); // Replace with your URL
                },
                icon: Image.asset(
                  "assets/images/instagram.png",
                  height: 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  _launchURL("https://www.facebook.com/napsnabin"); // Replace with your URL
                },
                icon: Image.asset(
                  "assets/images/facebook.png",
                  height: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
