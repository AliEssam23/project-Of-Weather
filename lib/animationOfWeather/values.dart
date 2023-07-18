import 'package:flutter/material.dart';
import 'dart:math';

num normalize(value, min, max) => ((value - min) / (max - min));

Color ColorOfBackgrond= Color.fromARGB(255, 23, 22, 39);
const double KDiameter = 300;
const double kMinDegree = 16;
const double kMaxDegree = 32;
