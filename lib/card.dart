import 'package:flutter/material.dart';

class MetalCard extends StatelessWidget {
  final List<String> metal = ["Gold", "Silver", "Platinum"];
  final List<String> price = ["22,265.64", "0.00", "0.00"];

  final List<String> metaloz = ["11.050", "0.000", "0.000"];
  final List<String> quantityper = ["0.97", "0.0", "0.0"];
  final List<String> metalPrice = ["1,999.00", "26.20", "1,102.30"];
  final List<String> change = ["0.4", "0.15", "0.08"];
  final List<Color> colors = [
    Colors.amberAccent,
    Colors.black,
    Colors.purpleAccent
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: metal.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      metal[index],
                      style: TextStyle(color: colors[index]),
                    ),
                    Text(
                      '\$${price[index]}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${metaloz[index]} oz",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '${quantityper[index]} %',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 0.3,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Metal Price",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Change",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${metalPrice[index]}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '-${change[index]} %',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
