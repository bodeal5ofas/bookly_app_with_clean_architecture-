import 'package:flutter/material.dart';

customShowSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      content: Text(message,style:const TextStyle(color: Colors.white),),
      duration:const Duration(seconds: 3),
    ),
  );
}
