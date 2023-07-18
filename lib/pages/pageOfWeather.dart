import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:the_weather_project/animationOfWeather/slider.dart';
import 'package:the_weather_project/animationOfWeather/values.dart';

class PageOfWeather extends StatefulWidget {
  PageOfWeather({Key? key}) : super(key: key);

  @override
  State<PageOfWeather> createState() => _PageOfWeatherState();
}

class _PageOfWeatherState extends State<PageOfWeather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorOfBackgrond,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorOfBackgrond,
        // IconOfGoOut
        leading: Center(
          child: IconButton(
            icon: const Icon(
              Icons.west_outlined,
              color: Colors.white70,
              size: 25,
            ),
            onPressed: () {
              print("Go Out");
            },
          ),
        ),

        // IconOfSetting
        actions: [
          Center(
            child: IconButton(
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.white70,
                size: 25,
              ),
              onPressed: (() {
                print("Setting");
              }),
            ),
          )
        ],
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: Text(
              "Air Conditioner",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Row(
                  children: const [
                    Text(
                      "Working Space",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.expand_more_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      left: 35,
                      child: Container(
                        width: 230,
                        height: 230,
                        decoration: BoxDecoration(
                          color: Color(0XFFF383344),
                          borderRadius: BorderRadius.circular(230),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 86, 108, 140),
                              blurRadius: 10,
                              spreadRadius: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    SliderWidget(),
                    Positioned(
                      top: 165,
                      child: SizedBox(
                        width: 300,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${kMinDegree.toInt()}°c",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "${kMaxDegree.toInt()}°c",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Text(
                                "Room",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const Text(
                              "Temperature",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Mode",
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Text(
                "Power Full",
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 95,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue.shade800,
                                Colors.blue.shade200
                              ],
                              begin: Alignment.topCenter,
                              end: AlignmentDirectional.bottomCenter),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    color: Colors.black,
                                    size: 25,
                                    Icons.ac_unit_outlined,
                                  ),
                                ),
                                Text("COLD",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 95,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color(0XFFF383344),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    size: 25,
                                    color: Colors.grey,
                                    Icons.water_outlined,
                                  ),
                                ),
                                Text(
                                  "FAN",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width:95,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color(0XFFF383344),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    color: Colors.grey,
                                    size: 25,
                                    Icons.water_drop_outlined,
                                  ),
                                ),
                                Text("DRY",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: ShaderMask(
                  
                  shaderCallback: ((bounds) => LinearGradient(
                          colors: [Colors.blue.shade800, Colors.blue.shade200],
                          stops: [0.1, 0.7],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)
                      .createShader(bounds)),
                  child: CircleAvatar(
                    
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      size: 35,
                      color: Colors.black,
                      Icons.power_settings_new_outlined,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  // containerWidget(String type) {
  //   return Container(
  //     width: 90,
  //     height: 100,
  //     decoration: BoxDecoration(
  //         color: Colors.red, borderRadius: BorderRadius.circular(10)),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             CircleAvatar(
  //               backgroundColor: Colors.white,
  //               child: Icon(
  //                 size: 25,
  //                 Icons.ac_unit_outlined,
  //               ),
  //             ),
  //             Text("${type}"),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}

// SliderWidget()
