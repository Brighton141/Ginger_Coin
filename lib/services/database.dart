import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future<void> uploadUserInfo(userMap) async {
    Firestore.instance.collection("users").add(userMap).catchError((e) {
      print(e.toString());
    });
  }

  getUserInfo(String userEmail) async {
    return Firestore.instance
        .collection("users")
        .where("email", isEqualTo: userEmail)
        .getDocuments()
        .catchError((e) {
      print(e.toString());
    });
  }

  getUserByUsername(String userName) async {
    return await Firestore.instance
        .collection("users")
        .where('name', isEqualTo: userName)
        .getDocuments();
  }

  getUserByEmail(String userEmail) async {
    return await Firestore.instance
        .collection("users")
        .where('email', isEqualTo: userEmail)
        .getDocuments()
        .catchError((e) {
      print(e.toString());
    });
  }

  createChatRoom(String chatRoomId, chatRoomMap) {
    return Firestore.instance
        .collection("ChatRoom")
        .document(chatRoomId)
        .setData(chatRoomMap)
        .catchError((e) {
      print(e.toString());
    });
  }

  addMessage(String chatRoomId, messageMap) {
    Firestore.instance
        .collection("ChatRoom")
        .document(chatRoomId)
        .collection("chats")
        .add(messageMap)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future getMessage(String chatRoomId) async {
    return await Firestore.instance
        .collection("ChatRoom")
        .document(chatRoomId)
        .collection("chats")
        .orderBy("time", descending: false)
        .snapshots();
  }

  getChatRooms(String userName) async {
    return await Firestore.instance
        .collection("ChatRoom")
        .where('users', arrayContains: userName)
        .snapshots();
  }
}
