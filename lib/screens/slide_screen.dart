import 'package:flutter/material.dart';
import 'package:mock_project/models/content_model.dart';
import 'package:mock_project/screens/account_screen.dart';
import 'package:mock_project/screens/pageview_screen.dart';

import '../widgets/constant.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Container(
                  padding: const EdgeInsets.only(top: 246, left: 20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: 249 * getScreenWidth(context) / designWidth,
                        height:
                            220.16 * getScreenHeight(context) / designHeight,
                        child: Image.asset(
                          contents[i].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                          width: getScreenWidth(context),
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 265 * getScreenWidth(context) / designWidth,
                            child: Text(
                              contents[i].title,
                              style: const TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Mulish',
                                color: Color(0xff252525),
                              ),
                            ),
                          )),
                      Container(
                        width: getScreenWidth(context),
                        alignment: Alignment.topLeft,
                        child: Text(
                          contents[i].discription,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Mulish',
                              color: Color(0xff929292)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20, bottom: 60 * getScreenHeight(context) / designHeight),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDots(index, context),
                  ),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_arrow_right),
                    color: Colors.white,
                    onPressed: () {
                      if (currentIndex == contents.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const PageviewScreen(),
                          ),
                        );
                      }
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 10),
                          curve: Curves.bounceIn,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildDots(int index, BuildContext context) {
    return Container(
      height: 6,
      width: 13,
      margin: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? const Color(0xffFF3951)
            : const Color(0xffFFB6B6),
      ),
    );
  }
}
