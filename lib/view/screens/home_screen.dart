import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:organico/helpers/show_message.dart';
import 'package:organico/provider/home/home_page_provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> categoryImgList = [
    'assets/broccoli.png',
    'assets/banana.png',
    'assets/meat.png'
  ];
  List<String> categoryNameList = ['Vegatables', 'Fruits', 'Meats'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, right: 140, left: 140),
                child: Text(
                  "Your Location",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(105, 105, 116, 1)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bandung, Cimahi",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    hintText: "Search anything here",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: InkWell(
                  child: Row(
                    children: [
                      Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 240, 247, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Image(
                            image: AssetImage("assets/cupon.png"),
                          )),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "You have 0 coupon",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Let’s use this coupon",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(105, 105, 116, 1),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      const Icon(Icons.arrow_forward_ios,
                          color: Color.fromRGBO(105, 105, 116, 1))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Choose Category",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          color: Color.fromRGBO(105, 105, 116, 1),
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 134,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 123,
                        height: 134,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple[50]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(categoryImgList[index]),
                            SizedBox(
                              height: 15,
                            ),
                            Text(categoryNameList[index])
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 3,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Best Selling",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          color: Color.fromRGBO(105, 105, 116, 1),
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 196,
                      height: 242,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple[50]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/paprika.png"),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Paprika",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Text(
                              "Vegashop",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(105, 105, 116, 1),
                              ),
                            ),
                            SizedBox(
                              height: 26,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "S4.99 /Kg",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(46, 204, 113, 1)),
                                  child: Icon(Icons.add, color: Colors.white,),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 196,
                      height: 242,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple[50]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(categoryImgList[1]),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Banana",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Text(
                              "Fruitmarket",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(105, 105, 116, 1),
                              ),
                            ),
                            SizedBox(
                              height: 45,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "S4.68 /Kg",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(46, 204, 113, 1)),
                                  child: Icon(Icons.add, color: Colors.white,),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // body: StreamBuilder<QuerySnapshot>(
        //   stream: context.read<HomeProvider>().productsStream,
        //   builder: (context, AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
        //     if (snapshot.hasError) {
        //       return Center(
        //         child: Text("Server Error"),
        //       );
        //     } else if (!snapshot.hasData) {
        //       return Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     } else {
        //       List<Map<String, dynamic>> data = [];
        //       snapshot.data!.docs.map((DocumentSnapshot document) {
        //         data.add(document.data() as Map<String, dynamic>);
        //       }).toList();
        //       if (data.isEmpty) {
        //         return Center(
        //           child: Text("Mahsulot mavjud emas hali"),
        //         );
        //       } else {
        //         return ListView.builder(
        //           itemBuilder: (context, index) {
        //             return ListTile(
        //               leading: CircleAvatar(
        //                 backgroundImage:
        //                     NetworkImage(data[index]['img'].toString()),
        //               ),
        //               title: Text(data[index]['title'].toString()),
        //             );
        //           },
        //           itemCount: data.length,
        //         );
        //       }
        //     }
        //   },
        // ),
      ),
    );
  }
}
