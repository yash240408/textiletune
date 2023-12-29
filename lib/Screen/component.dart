import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  const MyInput({Key? key}) : super(key: key);

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  @override
  Widget build(BuildContext context) {
    List<String> fabList = <String>[
      'UNITS',
      'INCH',
      'CM',
      'MM',
      'MTR',
      'YARD',
      'FEET'
    ];
    String fabListValue = fabList.first;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
          width: 150,
          child: TextField(
            // maxLength: 6,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              errorText: 'Enter 6 digit only',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              label: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: Text(
                        'Fabric Width',
                      ),
                    ),
                    WidgetSpan(
                      child: Text(
                        '*',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // controller: fabricController,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        DropdownButton<String>(
          value: fabListValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              fabListValue = value!;
            });
          },
          items: fabList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
      ],
    );
  }
}
