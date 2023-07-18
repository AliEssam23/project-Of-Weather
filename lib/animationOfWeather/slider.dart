import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'package:the_weather_project/animationOfWeather/values.dart';

class SliderWidget extends StatefulWidget {
  SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double progressVal = 0.5;
  final slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
        customWidths: CustomSliderWidths(progressBarWidth: 10)),
    min: 10,
    max: 28,
    initialValue: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SleekCircularSlider(
        max: kMaxDegree,
        min: kMinDegree,
        initialValue: 16,
        appearance: CircularSliderAppearance(
          startAngle: 180,
          angleRange: 180,
          size: KDiameter,
          animDurationMultiplier: 10.0,
          customWidths: CustomSliderWidths(
            trackWidth: 6,
            shadowWidth: 0,
            progressBarWidth: 10,
            handlerSize: 10,
          ),
          customColors: CustomSliderColors(
            hideShadow: true,
            dynamicGradient: true,
            

            trackColors: [
              const Color(0XFFFf9c7cc),
              const Color(0XFFF5898f7),
              const Color(0XFFFf9c7cc),
            ],
            progressBarColors: [
              const Color(0XFFFf9c7cc),
              const Color(0XFFF5898f7),
              const Color(0XFFFf9c7cc),
            ],
            dotColor: Colors.white,
          ),
        ),
        onChange: (value) {
          // setState(() {
          //   //progressVal=normalize(value, kMinDegree, kMaxDegree).toDouble();
          // });
        },
        innerWidget: (percentage) {
          return Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    color: Colors.transparent,
                    width: 120,
                    height: 90,
                    child: Stack(children: [
                      Center(
                        child: Text(
                          "${percentage.toInt()}",
                          style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              decorationColor: Colors.white,fontWeight: FontWeight.bold),),
                      ),

                            const Positioned(
                              right: 15.0,
                              top: 0,
                              child: Text(
                                                    "c",
                                                    style: TextStyle(
                              fontSize:30,
                              color: Colors.white,
                              decorationColor: Colors.white),),
                            ),

                            const Positioned(
                               right: 27.0,
                              top: 4.0,
                              child: Text(
                                                    "°",
                                                    style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              decorationColor: Colors.white),),
                            ),
                    ]
                      ),
                    
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
