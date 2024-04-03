import 'package:flutter/material.dart';
import 'package:swift/coffeeDetailScreen.dart';


class VerticalCardWidget extends StatelessWidget {
  final String name;
  final String description;
  final String image;

  const VerticalCardWidget({
    Key? key,
    required this.name,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to CoffeeDetailScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CoffeeDetailScreen()),
        );
      },
      child: Container(
        width: 390,
        height: 175,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(14),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          description,
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.2,
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Row(
                          children: [
                            Text(
                              '4.9',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 119,
                  height: 123,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(7),
                    ),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 13,
              right: 29,
              child: Container(
                width: 52,
                height: 19,
                decoration: const BoxDecoration(
                  color: Color(0xFF66A35C), // Green color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
