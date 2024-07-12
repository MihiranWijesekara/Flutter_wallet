import 'package:flutter/material.dart';
import 'package:flutter_wallet/RoundedImage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 224, 221, 221),
                Color.fromARGB(255, 224, 221, 221)
              ],
            ),
          ),
          child: const SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                HedarSection(),
                SizedBox(
                  height: 15,
                ),
                BalanceCard(),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Assets',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                WalletCard(),
                SizedBox(
                  height: 53,
                ),
                BottomNavigationBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HedarSection extends StatelessWidget {
  const HedarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0), // Optional padding for better layout
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center, // Center items vertically
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Distribute space between children
        children: [
          const RoundedImage(
            imageUrl: 'assets/image/images1.png',
            isAssetImage: true,
            radius: 50.0,
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold), // Optional style for text
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Center(
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 50,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: const Center(
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    const Text(
                      '4060',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    const RoundedImage(
                      imageUrl: 'assets/image/USA.png',
                      isAssetImage: true,
                      radius: 30.0,
                    ), // Pushes the next widget to the end
                    const Text(
                      'USD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16), // Spacer
            const Text(
              'Account Balance',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '\$190,560.00',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '\+120.54',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 77, 186, 80),
              ),
            ),
            const SizedBox(height: 25), // Spacer
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter, //bottomCenter
                      end: Alignment.topCenter,
                      colors: [
                        Color.fromARGB(255, 50, 1, 60),
                        Color.fromARGB(255, 190, 70, 246),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 55),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_outward,
                          color: Colors.white,
                        ),
                        Text(
                          'Load',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter, //bottomCenter
                      end: Alignment.topCenter,
                      colors: [
                        Color.fromARGB(255, 50, 1, 60),
                        Color.fromARGB(255, 190, 70, 246),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 55),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Icon(
                          Icons.download_sharp,
                          color: Colors.white,
                        ),
                        Text(
                          'Withdraw',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: const Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.credit_card,
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                Text(
                  ' Card',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                ),
                Text(
                  ' 9.9%',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  '\$187.0',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.money,
                  size: 30,
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                Text(
                  ' Cash',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                ),
                Text(
                  ' 9.9%',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  '\$345.0',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.currency_bitcoin,
                  size: 30,
                  color: Colors.orange,
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                Text(
                  ' Crypto',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                ),
                Text(
                  ' 9.9%',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  '\$470.0',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.credit_card,
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                Text(
                  ' Card',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                ),
                Text(
                  ' 9.9%',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  '\$247.0',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const GNav(
      backgroundColor: Color.fromARGB(255, 224, 221, 221),
      color: Color.fromARGB(255, 0, 0, 0),
      activeColor: Color.fromARGB(255, 255, 255, 255),
      tabBackgroundColor: Color.fromARGB(255, 14, 2, 74),
      padding: EdgeInsets.all(15),
      gap: 8,
      tabs: [
        GButton(
          icon: Icons.home,
          //text: 'Home',
        ),
        GButton(
          icon: Icons.man_2_rounded,
          //  text: 'Likes',
        ),
        GButton(
          icon: Icons.wallet,
          text: 'Search',
        ),
        GButton(
          icon: Icons.favorite,
          text: 'Settings',
        ),
      ],
    );
  }
}
