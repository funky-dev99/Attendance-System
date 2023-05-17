import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     Localization(
//       delegates: [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       child: MaterialApp(
//         // Your app's properties and configuration,
//       ),
//     );
//
//   }
//
//   void Localization({List<LocalizationsDelegate<Object>> delegates, MaterialApp child}) {}
// }
class Leave extends StatelessWidget {
  Leave({Key key}) : super(key: key);
  void setState(Null Function() param0) {}

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
          DateTimePicker(
            type: DateTimePickerType.date,
            //dateMask: 'yyyy/MM/dd',
            controller: _controller3,
            //initialValue: _initialValue,

            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            icon: Icon(Icons.event),
            dateLabelText: 'Date',
            locale: Locale('pt', 'BR'),
            onChanged: (val) => setState(() => _valueChanged3 = val),
            validator: (val) {
              String _valueToValidate3;
              setState(() => _valueToValidate3 = val ?? '');
              return null;
            },
            onSaved: (val) => setState(() => _valueSaved3 = val ?? ''),
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
          DateTimePicker(
            type: DateTimePickerType.date,
            //dateMask: 'yyyy/MM/dd',
            controller: _controller3,
            //initialValue: _initialValue,
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            icon: const Icon(Icons.event),
            dateLabelText: 'Date',
            locale: Locale('pt', 'BR'),
            onChanged: (val) => setState(() => _valueChanged3 = val),
            validator: (val) {
              String _valueToValidate3;
              setState(() => _valueToValidate3 = val ?? '');
              return null;
            },
            onSaved: (val) => setState(() => _valueSaved3 = val ?? ''),
          ),

        ],
      ),

    );

  }

}