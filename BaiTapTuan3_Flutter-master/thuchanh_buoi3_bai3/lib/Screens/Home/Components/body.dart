import 'package:flutter/material.dart';
import 'package:thuchanh_buoi3_bai3/constant.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 460) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Burger".toUpperCase(),
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: kTextcolor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labor",
                style: TextStyle(
                  fontSize: 21,
                  color: kTextcolor.withOpacity(0.34),
                ),
              ),
              FittedBox(
                // Now it just take the required spaces
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF372930),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 38,
                        width: 38,
                        decoration: const BoxDecoration(
                          color: kPrimaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFF372930),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        "Get Started".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment:
                Alignment.topLeft, // Align the Column to the top-left corner
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Burger".toUpperCase(),
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: kTextcolor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur \n"
                  "adipiscing elit, sed do eiusmod tempor \nincididunt ut labor",
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                FittedBox(
                  // Now it just takes the required spaces
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 100),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF372930),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Row(
                      children: <Widget>[
                        const SizedBox(width: 10),
                        Text(
                          "Get Started".toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }
    });
  }
}
