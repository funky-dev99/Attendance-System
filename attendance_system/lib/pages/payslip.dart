import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class PaySlipUp extends StatefulWidget {
  const PaySlipUp({Key key}) : super(key: key);

  @override
  _PaySlipUpState createState() => _PaySlipUpState();
}

class _PaySlipUpState extends State<PaySlipUp> {
  int selectedEmployee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Pay Slip",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        leading: IconButton(
          icon: Image.asset("images/back.png"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<int>(
              hint: const Text('Select Employee'),
              value: selectedEmployee,
              items: List.generate(
                10,
                (index) => DropdownMenuItem<int>(
                  value: index,
                  child: Text('Employee ${index + 1}'),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  selectedEmployee = value;
                });
              },
            ),
            SizedBox(height: 20),
            selectedEmployee != null
                ? Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Selected Employee: Employee ${selectedEmployee + 1}',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                : Container(),
            const SizedBox(height: 20,),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 0.0),
                  margin: const EdgeInsets.only(left: 20.0,top: 5.0),
                  child: const Text(
                    'Upload Document :',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20,),

            ElevatedButton.icon(
              onPressed: () async {
                FilePickerResult result = await FilePicker.platform.pickFiles();

                if (result != null) {
                  PlatformFile file = result.files.first;
                  print('File path: ${file.path}');
                  print('File name: ${file.name}');
                  print('File size: ${file.size}');
                } else {
                  // User canceled the file picker
                }
              },
              icon: const Icon(
                Icons.cloud_upload,
                color: Colors.red,
              ),
              label: const Text(
                'Upload',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0), backgroundColor: Colors.grey[350],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ), // Background color
              ),
            ),




          ],
        ),
      ),
    );
  }
}
