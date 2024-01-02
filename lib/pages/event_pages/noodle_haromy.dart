import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/button.dart';
import '../../models/cart_model.dart';

class NoodleHamoryPage extends StatelessWidget {
  const NoodleHamoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(builder: (context, cartModel, child) => Scaffold(
      backgroundColor: Color.fromARGB(255,215,165,187),
      appBar: AppBar(
        title: Text("J A P A N"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {},
            icon: Icon(Icons.dark_mode),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "lib/images/japan3.png",
              height: 200,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
                Text(
                  "4,0",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              "Noodle Hamory Japan",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              "Das erwartet Sie",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
              "Das Noodle Hamory in Tokio ist mehr als nur ein restaurant, es ist eine Oase für alle Liebhaber authentischer ",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(255, 61, 91, 212),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "18,00 €",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: cartModel.removeNudelsuppe,
                                icon: Icon(Icons.remove)),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            cartModel.nudelsuppe.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: cartModel.addNudelsuppe,
                                icon: Icon(Icons.add)),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  MyButton(
                    mytext: "Zum Einkaufswagen",
                    event: () => Navigator.pushNamed(context, '/cartpage'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}
