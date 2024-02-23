import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('donor');
  // final snapsot = await donor.snapshots();
  Future<void> getDonor() async {}
  deleteDonor(String id) {
    donor.doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    getDonor();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Blood Donation App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: StreamBuilder(
        stream: donor.orderBy('name').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot donorsnap = snapshot.data!.docs[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 211, 211, 211),
                            blurRadius: 5,
                            spreadRadius: 2,
                          )
                        ]),
                    height: 80,
                    // color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 30,
                              child: Text(
                                donorsnap['group'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(donorsnap['name'],
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            Text(
                              donorsnap['phone'].toString(),
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/update',
                                    arguments: {
                                      'name': donorsnap['name'],
                                      'group': donorsnap['group'].toString(),
                                      'phone': donorsnap['phone'],
                                      'id': donorsnap.id
                                    });
                              },
                              icon: Icon(Icons.edit),
                              iconSize: 30,
                              color: Colors.green,
                            ),
                            IconButton(
                              onPressed: () => deleteDonor(donorsnap.id),
                              icon: Icon(Icons.delete),
                              iconSize: 30,
                              color: Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.blue,
          size: 30,
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}
