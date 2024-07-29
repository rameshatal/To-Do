import 'package:flutter/material.dart';

class DiscoverNearestLaundry extends StatefulWidget {
  const DiscoverNearestLaundry({super.key});

  @override
  State<DiscoverNearestLaundry> createState() => _DiscoverNearestLaundryState();
}

class _DiscoverNearestLaundryState extends State<DiscoverNearestLaundry> {
  int pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  void _nextPage() {
    if (pageIndex < 2) {
      _pageController.animateToPage(
        pageIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboard_background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Expanded(
                flex: 8,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: _onPageChanged,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/onboard1.png'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Discover Nearest Laundry',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFFF3F2F8),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Get ready to make your life easy with single click of app. which makes laundry things handle better.',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF999AA0),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: const EdgeInsets.only(right: 3),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: pageIndex == index
                                ? Colors.black
                                : Colors.grey.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'SKIP',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: _nextPage,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'NEXT ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFFF9922D),
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 15,
                                      color: Color(0xFFF9922D),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
