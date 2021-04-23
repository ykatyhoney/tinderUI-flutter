import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_swipe/utils/toast.dart';

import '../common/flutter_tindercard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin {
  List<String> images = [
    "assets/model1.jpeg",
    "assets/model2.png",
    "assets/model3.png",
    "assets/model4.jpg",
    "assets/model5.jpg",
    "assets/model6.jpg",
    "assets/model7.jpg",
    "assets/model1.jpeg",
    "assets/model2.png",
    "assets/model3.png",
    "assets/model4.jpg",
    "assets/model5.jpg",
    "assets/model6.jpg",
    "assets/model7.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller;

    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tinder Swipe",
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        child: new TinderSwapCard(
          swipeUp: true,
          swipeDown: true,
          orientation: AmassOrientation.bottom,
          totalNum: images.length,
          stackNum: 3,
          swipeEdge: 5.0,
          maxWidth: MediaQuery.of(context).size.width * 0.95,
          maxHeight: MediaQuery.of(context).size.width * 0.95,
          minWidth: MediaQuery.of(context).size.width * 0.85,
          minHeight: MediaQuery.of(context).size.width * 0.85,
          cardBuilder: (context, index) => Card(
            child: Image.asset('${images[index]}'),
          ),
          cardController: controller = CardController(),
          swipeUpdateCallback:
              (DragUpdateDetails details, Alignment align) {
                if (align.x < 0) {
                 // showToast('LEFT swipe');
                } else if (align.x > 0) {
                //  showToast('RIGHT swipe');
                }

              },
          swipeCompleteCallback:
              (CardSwipeOrientation orientation, int index) {},
        ),
      ),
    );
  }
}
