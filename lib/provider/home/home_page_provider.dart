import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';


class HomeProvider extends ChangeNotifier {
  
  final Stream<QuerySnapshot> productsStream = FirebaseFirestore.instance
      .collection('products')
      .orderBy('created_at')
      .snapshots();
}
