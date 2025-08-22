import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mycustom_project/components/customtitle_page.dart';
import 'package:mycustom_project/components/list_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        items: [
          Icon(Icons.home, size: 30, color: Colors.green),
          Icon(Icons.wallet, size: 30, color: Colors.green),
          Icon(
            Icons.screen_lock_rotation_outlined,
            size: 30,
            color: Colors.green,
          ),
          Icon(Icons.person, size: 30, color: Colors.green),
        ],
        // animationDuration: Duration(milliseconds: 1000),
        onTap: (index) {
          //Handle button tap
        },
      ),
      extendBodyBehindAppBar: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 168, 116, 177),
              const Color.fromARGB(255, 241, 215, 176),
              const Color.fromARGB(255, 190, 204, 174),
            ],
            begin: Alignment(5, -10),
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.person, size: 35, color: Colors.black),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 109, 111, 207),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'lib/image/person.png',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Arafat!',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Control your financial spending here.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      width: 380,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 161, 152, 67),
                            const Color.fromARGB(186, 5, 170, 11),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Current Balance',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(
                                    255,
                                    253,
                                    252,
                                    252,
                                  ),
                                ),
                              ),
                              Text(
                                '\$4,580.90',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'My Wallets',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),

                //display wallets
                SizedBox(
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ContainerTitle(
                          imgPath: 'lib/image/iconusd.png',
                          currencytitle: 'US Dollars',
                          color: Colors.green,
                          cardbalance: "\$40,600.70",
                          cardTitle: Colors.black,
                        ),
                        SizedBox(width: 10),
                        ContainerTitle(
                          imgPath: 'lib/image/euroc.png',
                          currencytitle: 'EURO',
                          color: const Color.fromARGB(255, 248, 248, 248),
                          cardbalance: "€12,850.70",
                          cardTitle: Colors.black,
                        ),
                        SizedBox(width: 10),
                        ContainerTitle(
                          imgPath: 'lib/image/ukflg.png',
                          currencytitle: 'POIND STERLING',
                          color: Colors.blue,
                          cardbalance: "£15,750.52",
                          cardTitle: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Transactions',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Sell all',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //list of currency
                Expanded(
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        ListPage(
                          imgPath: 'lib/image/apple.png',
                          balance: '-\$230.50',
                          date: '2 Sep 03:02 PM',
                          title: 'Apple Inc.',
                        ),
                        SizedBox(height: 20),
                        ListPage(
                          imgPath: 'lib/image/amazon.png',
                          balance: '-\$130.50',
                          date: '10 Sep 03:02 PM',
                          title: 'Amazon.',
                        ),
                        SizedBox(height: 20),
                        ListPage(
                          imgPath: 'lib/image/tesla.png',
                          balance: '-\$430.50',
                          date: '2 Sep 03:02 PM',
                          title: 'Tesla.',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
