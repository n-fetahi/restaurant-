import 'package:flutter/material.dart';

 background(String img){
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage(img),
      fit: BoxFit.cover,
      opacity: 0.5,
    ),
  );
}