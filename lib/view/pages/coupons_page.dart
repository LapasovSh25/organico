import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CuponsPage extends StatelessWidget {
  const CuponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Coupon',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: 374,
              height: 91,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(170, 0, 35, 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(
                          image: AssetImage("assets/cupon.png"),
                        )),
                    const SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "15% Discount all item",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,),
                          ),
                          Text(
                            "7 days remaining",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(105, 105, 116, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //ikkinchi cupon.....
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: 374,
                height: 91,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(170, 0, 35, 0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Image(
                            image: AssetImage("assets/cupon.png"),
                          )),
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Free Shipping",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,),
                            ),
                            Text(
                              "7 days remaining",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(105, 105, 116, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //uchunchi cupon.............
            Container(
              width: 374,
              height: 91,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(170, 0, 35, 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Image(
                          image: AssetImage("assets/cupon.png"),
                        )),
                    const SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "10% Discount all item",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,),
                          ),
                          Text(
                            "7 days remaining",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(105, 105, 116, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //to'rtinchi cupon..........
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: 374,
                height: 91,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Image(
                            image: AssetImage("assets/cupon.png"),
                          )),
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Free Shipping",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, ),
                            ),
                            Text(
                              "0 days remaining",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(105, 105, 116, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
