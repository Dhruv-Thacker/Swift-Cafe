import 'package:flutter/material.dart';
import 'package:swift/allOtherPages.dart';
import 'package:swift/rowCardWidget.dart';
import 'package:swift/verticalCardWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  IconData? _selectedIcon;

   @override
  void initState() {
    super.initState();
    _selectedIcon = Icons.home_outlined; // Set initial value to home icon
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Translucent black overlay
            Container(
              color: Colors.grey.withOpacity(0.8),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 55),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/hello.png',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 15),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '02/04/24',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                height: 15.73 / 13,
                                letterSpacing: 0.2,
                              ),
                            ),
                            Text(
                              'Joshua Scanlan',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: 21.78 / 18,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // Delete action
                          },
                        ),
                        Container(
                          width: 39,
                          height: 39,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/user.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 380,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Search favorite Beverages!',
                            hintStyle: TextStyle(color: Color(0xffC7C7C7)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.filter_list,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(right: 140),
                    child: Text(
                      'Most Popular Beverages',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 17),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RowCardWidget(
                          image: 'assets/c1.png',
                          name: 'Hot Cappuccino',
                          description: 'Espresso, Steamed Milk',
                          rating: 4.9,
                        ),
                        RowCardWidget(
                          image: 'assets/c2.png',
                          name: 'Iced Latte',
                          description: 'Espresso, Cold Milk',
                          rating: 4.5,
                        ),
                        RowCardWidget(
                          image: 'assets/c3.png',
                          name: 'Black Coffee',
                          description: 'Espresso, Chocolate, Milk, Ice',
                          rating: 4.7,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(right: 230, top: 5),
                    child: Text(
                      'Get it instantly',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Column(
                    children: [
                      VerticalCardWidget(
                        name: 'Lattè',
                        description:
                            'Caffè latte is a milk coffee that is made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                        image: 'assets/vc1.png',
                      ),
                      VerticalCardWidget(
                        name: 'Cappuccino',
                        description:
                            'Cappuccino is a coffee drink that is composed of double espresso and hot milk, with the surface topped with foamed milk.',
                        image: 'assets/vc2.png',
                      ),
                      VerticalCardWidget(
                        name: 'Caffè mocha',
                        description:
                            'A caffè mocha, also called mocaccino, is a chocolate-flavoured warm beverage that is a variant of a caffè latte.',
                        image: 'assets/vc1.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 32, 32, 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconButton(Icons.home_outlined),
            _buildIconButton(Icons.person_2_outlined),
            _buildIconButton(Icons.account_balance_wallet_outlined),
            _buildIconButton(Icons.delete_outline),
            _buildIconButton(Icons.chat_bubble_outline),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData iconData) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIcon = iconData;
        });
        if (_selectedIcon == Icons.home_outlined) {
         //no need
        }
           else if (_selectedIcon == Icons.person_2_outlined) {
          // Navigate to Home Page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()), // Replace HomePage with your desired home page
          );
        }
           else if (_selectedIcon == Icons.account_balance_wallet_outlined) {
          // Navigate to Home Page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WalletPage()), // Replace HomePage with your desired home page
          );
        }
           else if (_selectedIcon == Icons.delete_outline) {
          // Navigate to Home Page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DeletePage()), // Replace HomePage with your desired home page
          );
        }
           else if (_selectedIcon == Icons.chat_bubble_outline) {
          // Navigate to Home Page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatPage()), // Replace HomePage with your desired home page
          );
        }

      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selectedIcon == iconData ? Colors.black.withOpacity(0.5) : Colors.transparent,
        ),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}


