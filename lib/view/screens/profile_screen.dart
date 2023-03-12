import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_important_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.2),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 85.5,
                          backgroundImage: NetworkImage(
                              "https://source.unsplash.com/random/"),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Shaxzod",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "+998901238205",
                          style: TextStyle(
                              color: Color.fromRGBO(105, 105, 116, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Edit profile',
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.445),
                        const Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.file_copy_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('My Orders',
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.445),
                        const Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text('My Wishlist',
                          style: TextStyle(
                              fontSize: 16, fontStyle: FontStyle.normal)),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.445),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'WishList');
                          },
                          child: Icon(Icons.arrow_forward_ios_outlined)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('My Address',
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.445),
                        const Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.payment_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Payment Method',
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.35),
                        const Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Image(
                                  image: AssetImage("assets/headphone.png")),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Customer Service',
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.35),
                        const Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Change Password',
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.35),
                        const Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async {
                      await FirebaseAuth.instance.signOut();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.exit_to_app,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Logout',
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.55),
                        const Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
            itemCount: 1,
          )),
    );
  }
}
