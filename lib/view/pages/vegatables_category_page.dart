import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:organico/provider/home/home_page_provider.dart';
import 'package:provider/provider.dart';

class VegetablesCategoryPage extends StatelessWidget {
  final String categoryName;
  final Stream<QuerySnapshot> streamData;
  const VegetablesCategoryPage(
      {super.key, required this.streamData, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: StreamBuilder(
        stream: streamData,
        builder: (context, AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Server Error"),
            );
          } else if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Map<String, dynamic>> data = [];
            snapshot.data!.docs.map((DocumentSnapshot document) {
              data.add(document.data() as Map<String, dynamic>);
            }).toList();
            if (data.isEmpty) {
              return Center(
                child: Text("Mahsulot mavjud emas hali"),
              );
            } else {
              for (Map<String, dynamic> element in data) {
                Provider.of<HomeProvider>(context).searchList.add(element);
              }
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: GridView.builder(
                  itemCount: data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'InfoPage',
                            arguments: data[index]);
                      },
                      child: Container(
                        width: 176,
                        height: 234,
                        decoration: BoxDecoration(
                            color: Colors.purple[50],
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 97,
                                height: 79,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            data[index]['img'].toString()))),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                data[index]['name'].toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Text(
                                data[index]['market'].toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(105, 105, 116, 1),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "USD ${data[index]['price'].toString()} /Kg",
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
                                        color: const Color.fromRGBO(
                                            46, 204, 113, 1)),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          }
        },
      ),
    );
  }
}
