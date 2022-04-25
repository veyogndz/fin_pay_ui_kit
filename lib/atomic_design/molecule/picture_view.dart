import 'package:flutter/material.dart';

class PictureView extends StatefulWidget {
  const PictureView({Key? key}) : super(key: key);

  @override
  State<PictureView> createState() => _PictureViewState();
}

class _PictureViewState extends State<PictureView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          debugPrint('page change gelen index $index');
        },
        children: <Widget>[
          Container(
            color: Colors.white,
            child: const Image(image: AssetImage("assets/onBoardOne.png"),fit: BoxFit.contain,),
          ),
          Container(
            color: Colors.white,
            child: const Center(
                child:Image(image: AssetImage("assets/onBoardTwo.png"),fit: BoxFit.cover,)
            ),
          ),
        ],
      ),
    );
  }
}
