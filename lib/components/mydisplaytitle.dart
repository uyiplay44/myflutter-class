import 'package:flutter/material.dart';

class ContainerTitle extends StatelessWidget {
  final Color color;
  final String imgPath;
  final String currencytitle;
  final String cardbalance;
  final Color cardTitle;

  const ContainerTitle({
    super.key,
    required this.cardbalance,
    required this.imgPath,
    required this.color,
    required this.currencytitle,
    required this.cardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 220,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //first container with flag and text
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Image.asset(imgPath, width: 30, fit: BoxFit.cover),
                    ),
                    Text(currencytitle, style: TextStyle(fontSize: 17.60)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          'Your Balance',
                          style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                            color: cardTitle,
                          ),
                        ),
                      ),
                      Text(
                        cardbalance,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: cardTitle,
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
    );
  }
}
