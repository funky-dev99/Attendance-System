
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:intl/intl.dart';

class Leave extends StatefulWidget {
  Leave({Key key}) : super(key: key);

  @override
  State<Leave> createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }

  void LeavesetState(Null Function() param0) {}

  String selectedValue1;

  List<String> items = [
    'Vacation',
    'Sick',
    'Holiday',
    'Special Leave',


  ];

  String selectedValue;

  List<String> day_part = [
    'Full Day',
    'Half Day',

  ];

  @override
  Widget build(BuildContext context) {
    var _controller3;
    String _valueChanged3;
    String _valueSaved3;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Leave Approval",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        leading: IconButton(
          icon: Image.asset("images/back.png"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        elevation: 0.0,
      ),
      body: Column(
        children:  [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text("New Leave",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
            ],
          ),
          const SizedBox(height: 20,),

          //leave type
          Row(
            children: const [
              Padding(padding: EdgeInsets.all(8.0)),
              Text("Leave Type",
                style: TextStyle(
                  fontSize: 15.0,
                ),),
            ],
          ),
          const SizedBox(
              height: 5.0
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint:  Row(
                  children: const [
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        'Leave Type',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: InkWell(
                    onTap: (){
                      selectedValue1 = item;
                    },
                    child: Text(
                      item,
                      style:  const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  width: 350,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.white54,
                  ),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.black,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 300,
                  padding: null,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white70,
                  ),
                  elevation: 8,
                  offset: const Offset(50, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all<double>(6),
                    thumbVisibility: MaterialStateProperty.all<bool>(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
              ),
            ),
          ),

          //day part
          Row(
            children: const [
              Padding(padding: EdgeInsets.all(8.0)),
              Text("Day Part",
                style: TextStyle(
                  fontSize: 15.0,
                ),),
            ],
          ),
          const SizedBox(
              height: 5.0
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint:  Row(
                  children: const [
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        'Day Part',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: day_part
                    .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style:  const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  width: 350,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.white54,
                  ),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.black,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 300,
                  padding: null,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white54,
                  ),
                  elevation: 8,
                  offset: const Offset(50, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all<double>(6),
                    thumbVisibility: MaterialStateProperty.all<bool>(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
          ),


          //select from date
          Row(
            children: const [
              Padding(padding: EdgeInsets.all(8.0)),
              Text("From Date",
                style: TextStyle(
                  fontSize: 15.0,
                ),),
            ],
          ),
          const SizedBox(
              height: 5.0
          ),

          TextField(


            controller: dateController, //editing controller of this TextField
            decoration: const InputDecoration(

                icon: Icon(Icons.calendar_today), //icon of text field
                labelText: "Enter Date" //label text of field
            ),
            readOnly: true,  // when true user cannot edit text
            onTap: () async {
              DateTime pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), //get today's date
                  firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101)
              );

              if(pickedDate != null ){
                print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                print(formattedDate); //formatted date output using intl package =>  2022-07-04
                //You can format date as per your need

                setState(() {
                  dateController.text = formattedDate; //set foratted date to TextField value.
                });
              }else{
                print("Date is not selected");
              }
            },
          ),


          const SizedBox(
              height: 8.0
          ),

          Row(
            children: const [
              Padding(padding: EdgeInsets.all(8.0)),
              Text("To Date",
                style: TextStyle(
                  fontSize: 15.0,
                ),),
            ],
          ),
          const SizedBox(
              height: 5.0
          ),

        ],
      ),

    );

  }
}