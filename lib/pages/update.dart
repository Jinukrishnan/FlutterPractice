import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateDonor extends StatefulWidget {
  const UpdateDonor({super.key});

  @override
  State<UpdateDonor> createState() => _UpdateDonorState();
}

class _UpdateDonorState extends State<UpdateDonor> {
  final List bloodgroups = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
  String? selectedGroup;
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('donor');
  TextEditingController donorname = TextEditingController();
  TextEditingController donorphone = TextEditingController();
  void updateDonor(docid) {
    final data = {
      'name': donorname.text,
      'phonr': donorphone.text,
      'group': selectedGroup
    };
    donor.doc(docid).update(data);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    donorname.text = args['name'];
    donorphone.text = args['phone'].toString();
    selectedGroup = args['group'];
    final docid = args['id'];
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Update Member',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Doner Name')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: donorphone,
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Phone Number')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                  value: selectedGroup,
                  decoration:
                      InputDecoration(label: Text('Select Bolld Group')),
                  items: bloodgroups
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    print(val);
                    selectedGroup = val as String?;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () => updateDonor(docid),
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(Size(double.infinity, 50)),
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Text(
                    'Update',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
