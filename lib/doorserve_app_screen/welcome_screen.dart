import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'otp_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int pageIndex = 0;
  int currentIndex = 0;
  List screenLIst = [
    WelcomeScreen(),
    LoginScreen(),
    OtpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE0E0E0),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 220,
              child: Stack(children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0XFF252955),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu_outlined,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Welcome Back!',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFFC2C7FD)),
                            )),
                        Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.location_on_outlined,
                                size: 16,
                                color: Color(0XFFFFFFFF),
                              )),
                              TextSpan(
                                  text: '4614 W 26th, New York, USA',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white)),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 130,
                      viewportFraction: 1,
                      autoPlay: true,
                      enlargeCenterPage: false,
                      disableCenter: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                    ),
                    itemCount: 5,
                    itemBuilder: (context, index, _) {
                      return Container(
                          margin:
                              EdgeInsets.only(left: 15, right: 15, bottom: 15),
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.4),
                                blurRadius: 10,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              'https://img.freepik.com/free-vector/flat-travel-facebook-promo-template_23-2149061330.jpg',
                              fit: BoxFit.fill,
                            ),
                          ));
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 15,
                  right: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        5,
                        (index) => Container(
                              margin: EdgeInsets.only(right: 2),
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: pageIndex == index
                                      ? Colors.black
                                      : Colors.grey.withOpacity(.5)),
                            )),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                  "https://cdn-icons-png.freepik.com/512/3322/3322056.png")),
                          Text(
                            'Dry Cleaning',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cuurent Orders',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFFF9922D)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 100,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '#35685590',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                          Text(
                            'IN PROCESS',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                                color: Color(0XFF5785F4)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ORDER DATE',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Color(0XFF707070)),
                          ),
                          Text(
                            'DELIVERY DATE',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                                color: Color(0XFF707070)),
                          ),
                          Text(
                            'AMOUNT',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                                color: Color(0XFF707070)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '16 Feb 23',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                          Text(
                            '19 Feb 23',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                                color: Colors.black),
                          ),
                          Text(
                            '\$300',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                                color: Color(0XFF5785F4)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 20),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 20,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 20,),label: 'Home'),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
        backgroundColor: Colors.orange,
        elevation: 5,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        iconSize: 35,
        selectedItemColor: Colors.white,
        currentIndex: currentIndex,
      ),
    );
  }
}
