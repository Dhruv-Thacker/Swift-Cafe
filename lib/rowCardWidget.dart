import 'package:flutter/material.dart';

class RowCardWidget extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final double rating;

  const RowCardWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 150,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 131,
            height: 128,
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
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
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                rating.toString(),
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              const Spacer(),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}