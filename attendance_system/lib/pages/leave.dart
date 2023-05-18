


import 'package:flutter/material.dart';

import 'home_page.dart';


class Leave extends StatefulWidget {
  const Leave({Key key}) : super(key: key);



class ListItem {
  final String title;
  final String subTitle;
  final String description;

  ListItem({ this.title,  this.subTitle,  this.description});
}



class LeavePage extends StatelessWidget {
  final List<ListItem> items = [
    ListItem(
      title: 'Item 1',
      subTitle: 'Sub Title 1',
      description: 'Description 1',
    ),
    ListItem(
      title: 'Item 2',
      subTitle: 'Sub Title 2',
      description: 'Description 2',
    ),
    ListItem(
      title: 'Item 3',
      subTitle: 'Sub Title 3',
      description: 'Description 3',
    ),
    ListItem(
      title: 'Item 4',
      subTitle: 'Sub Title 4',
      description: 'Description 4',
    ),
    ListItem(
      title: 'Item 5',
      subTitle: 'Sub Title 5',
      description: 'Description 5',
    ),
    ListItem(
      title: 'Item 6',
      subTitle: 'Sub Title 6',
      description: 'Description 6',
    ),
  ];

  @override
  Widget build(BuildContext context) {

    // var _controller3;
    // String _valueChanged3;
    // String _valueSaved3;

    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Leave Approval",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        leading: IconButton(
          icon: Image.asset("images/back.png"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),

      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(items[index].title),
            subtitle: Text(items[index].subTitle),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform approve action
                    print('Approve button pressed');
                  },
                  child: Text('Approve'),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform reject action
                    print('Reject button pressed');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Reject'),
                ),

              ],
            ),
            onTap: () {
              // Handle item tap
              print('Item $index tapped');

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
                value: selectedValue1,
                onChanged: (value) {
                  setState(() {
                    selectedValue1 = selectedValue1;
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
                // print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                // print(formattedDate); //formatted date output using intl package =>  2022-07-04
                //You can format date as per your need

                setState(() {
                  dateController.text = formattedDate; //set foratted date to TextField value.
                });
              }else{
                // print("Date is not selected");
              }

            },
          );
        },
      ),
    );
  }
}

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}



