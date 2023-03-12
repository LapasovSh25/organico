import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organico/provider/info_page_provider/info_page_provider.dart';
import 'package:provider/provider.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({super.key});

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    InfoPageProvider infoProvider = InfoPageProvider();
    List<Map<String, dynamic>> list =
        Provider.of<InfoPageProvider>(context).wishList;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'My Wishlist',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              width: 180,
              height: 179,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple[50]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 92,
                          height: 74.42,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage(list[index]['img'].toString()),
                            ),
                          ),
                        ),
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: IconButton(
                            onPressed: () {
                          infoProvider.deleteFromWishList(
                              list[index], list);
                          setState(() {});
                            },
                            icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      list[index]['name'].toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Text(
                      '1 Kilogram',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(105, 105, 116, 1),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      // body: ListView.separated(
      //     itemBuilder: (context, index) {
      //       return Container(
      //         width: 180,
      //         height: 180,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(20),
      //             color: Colors.purple[50]),
      //         child: Column(
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Image.network(list[index]['img'].toString()),
      //                 Container(
      //                   width: 36,
      //                   height: 36,
      //                   decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(20),
      //                       color: Colors.red),
      //                   child: Center(
      //                       child: IconButton(
      //                     onPressed: () {
      //                       infoProvider.deleteFromWishList(list[index], list);
      //                       setState(() {});
      //                     },
      //                     icon: Icon(
      //                       Icons.favorite_outline,
      //                       color: Colors.white,
      //                     ),
      //                   )),
      //                 )
      //               ],
      //             )
      //           ],
      //         ),
      //       );
      //       // return ListTile(
      //       //   onTap: (){
      //       //     Navigator.pushNamed(context, 'InfoPage',arguments: list[index]);
      //       //   },
      //       //   leading: Container(
      //       //     height: 50,
      //       //     width: 50,
      //       //     decoration: BoxDecoration(
      //       //         color: const Color(0xffE9F0F7),
      //       //         borderRadius: BorderRadius.circular(10)),
      //       //     child: const Center(child: Icon(Icons.favorite)),
      //       //   ),
      //       //   title: Text(list[index]['name'].toString()),
      //       //   trailing: IconButton(
      //       //       onPressed: () {
      //       //         infoProvider.deleteFromWishList(list[index], list);
      //       //         setState(() {});
      //       //       },
      //       //       icon: const Icon(Icons.delete_rounded)),
      //       // );
      //     },
      //     separatorBuilder: (context, index) {
      //       return const SizedBox(
      //         height: 15,
      //       );
      //     },
      //     itemCount: list.length),
    );
  }
}
