import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gmda/widgets/big_text.dart';
import 'package:gmda/widgets/icon_and_text_widget.dart';
import 'package:gmda/widgets/small_text.dart';

class FullPageBody extends StatefulWidget {
  const FullPageBody({Key? key}) : super(key: key);

  @override
  State<FullPageBody> createState() => _FullPageBodyState();
}

class _FullPageBodyState extends State<FullPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        // color: Colors.red,
        height: 320,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: Colors.blue,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
      SizedBox(height: 20),

      Container(
          margin: EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: SmallText(text: "."),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(
                  text: "Most viewed in your area",
                  color: Colors.grey,
                ),
              )
            ],
          )),
// List of popular view house

      Container(
        height: 700,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white54,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/house2.jpeg"))),
                    ),
                    //Text Container Will start from here

                    Expanded(
                      child: Container(
                        height: 100,
                        // width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Colors.white),

                        child:
                        
                         Padding(
                            padding: EdgeInsets.only(left: 15, right:15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Bandhan Bank"),
                                SmallText(text: "Updated 2 days ago", color: Colors.grey,),

                                SizedBox(height:20),

                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      IconAndTextWidget(
                          icon: Icons.house,
                          text: "House",
                          color: Colors.grey,
                          iconColor: Colors.black),
                      // // SizedBox(
                      // //   width: 30,
                      // ),
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "2km",
                          color: Colors.grey,
                          iconColor: Colors.blue),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      IconAndTextWidget(
                          icon: Icons.family_restroom,
                          text: "Family",
                          color: Colors.grey,
                          iconColor: Colors.redAccent)
                    ],
                  )
                             
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              );
            }),
      )
    ]);
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor = (_currPageValue - index + 1) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }

    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Colors.blue : Colors.green,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/home1.jpeg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 5))
                ]),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Kahanwal Bhawan"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                )),
                      ),
                      SizedBox(width: 10),
                      SmallText(text: "4.5"),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "25"),
                      SizedBox(width: 10),
                      SmallText(text: "comments")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconAndTextWidget(
                          icon: Icons.house,
                          text: "House",
                          color: Colors.grey,
                          iconColor: Colors.black),
                      SizedBox(
                        width: 30,
                      ),
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "2km",
                          color: Colors.grey,
                          iconColor: Colors.blue),
                      SizedBox(
                        width: 30,
                      ),
                      IconAndTextWidget(
                          icon: Icons.family_restroom,
                          text: "Family",
                          color: Colors.grey,
                          iconColor: Colors.redAccent)
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
