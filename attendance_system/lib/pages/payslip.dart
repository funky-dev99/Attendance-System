import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class PaySlipUp extends StatefulWidget {
  const PaySlipUp({Key key}) : super(key: key);

  @override
  State<PaySlipUp> createState() => _PaySlipUpState();
}

class _PaySlipUpState extends State<PaySlipUp> {
  String selectedEmployeeType = '';
  final desController = TextEditingController();

  final List<String> _employeeTypes = [
    'Employee 1',
    'Employee 2',
    'Employee 3',
    'Employee 4',
    'Employee 5',
  ];

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
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 0.0),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: const Text(
                    'Select Employee :',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors
                        .grey[350], // Change the color to your desired color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(
                            0.5), // Change the shadow color if needed
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(
                            0, 3), // Adjust the offset for the drop shadow
                      ),
                    ],
                  ),
                  child: DropdownButton<String>(
                    value: selectedEmployeeType.isNotEmpty
                        ? selectedEmployeeType
                        : null,
                    hint: const Text('Employee'),
                    onChanged: (value) {
                      setState(() {
                        selectedEmployeeType = value ?? '';
                      });
                    },
                    items: _employeeTypes.map((String employeeType) {
                      return DropdownMenuItem<String>(
                        value: employeeType,
                        child: Text(employeeType),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            //Description Text
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 0.0),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: const Text(
                    'Any Note :',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: desController,
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                decoration: const InputDecoration(
                  hintText: 'Type here..',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 0.0),
                  margin: const EdgeInsets.only(left: 10.0, top: 5.0),
                  child: const Text(
                    'Upload Payment Slip :',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

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
                padding: const EdgeInsets.all(16.0),
                backgroundColor: Colors.grey[350],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ), // Background color
              ),
            ),

            const SizedBox(
              height: 80,
            ),

            ElevatedButton(
              onPressed: () {
                print('Employee Type: $selectedEmployeeType');
                print('Note: $desController');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black, // Sets the text color
                minimumSize:
                    const Size(150, 50), // Sets the minimum size of the button
              ),
              child: const Text(
                'Request',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
