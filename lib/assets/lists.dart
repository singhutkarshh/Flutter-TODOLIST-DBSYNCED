import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tasks"),
          centerTitle: true,
          leading: const Icon(Icons.login),
          backgroundColor: Colors.blue[300],
        ),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        width: 260,
                        child: Text(
                            "djkbcd vjbv djcbdsh cvhdbchds cbdcbd dhcvd dcvdcvhd fvfv vjkbkv vjsv sjbvsv vbvbds fgdgt frgr vrgr vdsjr bdsv vdsbvdv djvbdbv ")),
                    ElevatedButton(
                        onPressed: () {}, child: const Icon(Icons.delete))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        width: 260,
                        child: Text(
                            "djkbcd vjbv djcbdsh cvhdbchds cbdcbd dhcvd dcvdcvhd fvfv vjkbkv vjsv sjbvsv vbvbds fgdgt frgr vrgr vdsjr bdsv vdsbvdv djvbdbv ")),
                    ElevatedButton(
                        onPressed: () {}, child: const Icon(Icons.delete))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
