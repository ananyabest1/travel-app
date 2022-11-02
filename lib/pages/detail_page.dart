import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

import '../cubit/app_cubits.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child:Stack(
          children: [
            Positioned(
                left:0,
                right: 0,
                child: Container(
                  width:double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('https://www.deccanherald.com/sites/dh/files/gallery_images/2021/12/13/file7it39sqcijbouyq81z6.jpg'),
                          fit:BoxFit.cover
                      )
                  ),
                )
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(onPressed: () {
                    BlocProvider.of<AppCubits>(context).goHome();
                  },
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppLargeText(text: "Kashi ",color: Colors.black54,),
                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppLargeText(text: "Vishwanath",color: Colors.black54,)
                          ]
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_on,),
                          SizedBox(height: 10,),
                          AppText(text: "Varanasi, Uttar Pradesh"),
                        ],
                      )

                    ],
                  )
              ),
            ),

          ],

        ) ,
      ),
    );
  }
}