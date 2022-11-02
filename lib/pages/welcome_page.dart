import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (_, index) {
              return Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1589754749467-6df95556396f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2FuZ2ElMjByaXZlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                        fit: BoxFit.cover
                    ),
                  ),
                  child: Container(
                      margin: const EdgeInsets.only(
                          top: 150, left: 20, right: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              AppLargeText(text: 'WELCOME'),
                              AppLargeText(text: 'TO KASHI'),
                              Container(
                                width: 370,
                                child: AppText(
                                  text: (" ॐ 𝓞𝓶 𝓝𝓪𝓶𝓪𝓱 𝓼𝓱𝓲𝓿𝓪𝔂 ॐ "),
                                ),
                              ),
                              SizedBox(height: 40,),
                              GestureDetector(
                                onTap: (){
                                  BlocProvider.of<AppCubits>(context).getData();
                                },
                                child: Container(
                                  width: 200,
                                  child:   Row(children: [ResponsiveButtton(),],),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                  )
              );
            }
        )
    );
  }
}