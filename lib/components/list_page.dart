import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final String title;
  final String date;
  final String balance;
  final String imgPath;

  const ListPage({
    super.key,
    required this.title,
    required this.date,
    required this.balance,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(child: Image.asset(imgPath, width: 50)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(date, style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Text(
              balance,
              style: TextStyle(
                fontSize: 20,
                color: Colors.red[300],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
