import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreProvider {
  Firestore _store=Firestore.instance;

  Stream<QuerySnapshot> getItems(){
    return _store.collection('items').snapshots();
  }
  
  Future<DocumentReference> addItems(Map<String, dynamic>item){
    return _store.collection('items').add(item);
  }
  Future<void> updateItem(String id, Map item){
    return _store.collection('items').document(id).setData(item);
  }
 void delete(id){
   _store.collection('items').document(id).delete();
 }
}
