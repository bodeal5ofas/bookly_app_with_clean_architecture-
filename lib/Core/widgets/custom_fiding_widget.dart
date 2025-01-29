import 'package:flutter/material.dart';

class CustomFidingWidget extends StatefulWidget {
  const CustomFidingWidget({super.key, required this.child});
final Widget child;
  @override
  State<CustomFidingWidget> createState() => _CustomFidingWidgetState();
}

class _CustomFidingWidgetState extends State<CustomFidingWidget>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState(); 
    _animationController = AnimationController(vsync: this,duration:const Duration(milliseconds: 250));
    animation =
        Tween<double>(begin: 0.2, end: 0.8).animate(_animationController);
    animation.addListener(
      () {
        setState(() {});
      },
    );
    _animationController.repeat(reverse: true,);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Opacity(opacity: animation.value,child:widget.child ,);
  }
}
