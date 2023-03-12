import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:organico/provider/info_page_provider/info_page_provider.dart';
import 'package:provider/provider.dart';

class InfoPage extends StatelessWidget {
  final Map<String, dynamic> data;
  const InfoPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    InfoPageProvider infoProvider = Provider.of<InfoPageProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => InfoPageProvider(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {
                  infoProvider.addToWishList(data);
                },
                icon: infoProvider.wishList.contains(data)
                      ? const Icon(Icons.favorite_outlined, color: Colors.red,)
                      : const Icon(Icons.favorite_outline_sharp)
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
                    child: Image.network(
                      data['img'].toString(),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  data['name'].toString(),
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 155),
                      child: Text(
                        data['market'].toString(),
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
                      "USD ${double.parse(data['price'].toString()) * context.watch<InfoPageProvider>().value} /Kg",
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                const Text(
                  'Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Paprika is a fruit-producing plant that tastes sweet and slightly spicy from the eggplant or Solanaceae tribe. Its green, yellow, red, or purple fru..Read more',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(233, 240, 247, 1),
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
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(233, 240, 247, 1),
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
                const SizedBox(
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
                        label: const Text(
                          "Add to cart",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        backgroundColor: const Color.fromRGBO(170, 0, 35, 1),
                      ),
                    ),
                    Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(233, 240, 247, 1),
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
