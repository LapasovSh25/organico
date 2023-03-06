import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:organico/provider/info_page_provider/info_page_provider.dart';
import 'package:provider/provider.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InfoPageProvider(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: SizedBox(
                    height: 210,
                    width: 238,
                    child: Image.asset(
                      "assets/paprika.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Paprika",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 185),
                      child: Text(
                        "Vegshop",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(105, 105, 116, 1),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: context.read<InfoPageProvider>().disscrement,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Icon(Icons.remove),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        context.watch<InfoPageProvider>().value.toString(),
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.read<InfoPageProvider>().add();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(child: Icon(Icons.add)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "S ${4.99 * context.watch<InfoPageProvider>().value} /Kg",
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Text(
                  'Details',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Paprika is a fruit-producing plant that tastes sweet and slightly spicy from the eggplant or Solanaceae tribe. Its green, yellow, red, or purple fru..Read more',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 240, 247, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(
                          image: AssetImage("assets/clock.png"),
                        )),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Time Delivery",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "25-30 Min",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(105, 105, 116, 1),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 240, 247, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(
                          image: AssetImage("assets/category.png"),
                        )),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Category",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Vegetable",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(105, 105, 116, 1),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 298,
                      height: 52,
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        label: Text(
                          "Add to cart",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: Color.fromRGBO(170, 0, 35, 1),
                      ),
                    ),
                     Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 240, 247, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(
                          image: AssetImage("assets/chat.png"),
                        )),
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
