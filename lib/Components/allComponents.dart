// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RateReusableComponent extends StatefulWidget {
  String title;
  dynamic controllerName, listNameValue;
  List<String> listname;
  RateReusableComponent(
      {Key? key,
      required this.title,
      required this.controllerName,
      required this.listname,
      required this.listNameValue})
      : super(key: key);

  @override
  State<RateReusableComponent> createState() => _RateReusableComponent();
}

class _RateReusableComponent extends State<RateReusableComponent> {
  List<String> lastValue = <String>[];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 90,
          height: 20,
          child: Text(widget.title),
        ),
        SizedBox(
          height: 30,
          width: 150,
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(7),
            ],
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            controller: widget.controllerName,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        DropdownButton<String>(
          value: widget.listNameValue,
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
              widget.listNameValue = value!;
              lastValue.add(value);              
            });
          },
          onTap: () {},
          items: widget.listname.map<DropdownMenuItem<String>>((String value) {
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

class ConversionReusableComponent extends StatefulWidget {
  String title;
  dynamic controllerName, listNameValue;
  List<String> listname;
  ConversionReusableComponent(
      {Key? key,
      required this.title,
      required this.controllerName,
      required this.listname,
      required this.listNameValue})
      : super(key: key);

  @override
  State<ConversionReusableComponent> createState() =>
      _ConversionReusableComponent();
}

class _ConversionReusableComponent extends State<ConversionReusableComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 90,
          height: 20,
          child: Text(widget.title),
        ),
        SizedBox(
          height: 30,
          width: 150,
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(7),
            ],
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            controller: widget.controllerName,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        DropdownButton<String>(
          value: widget.listNameValue,
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
              widget.listNameValue = value!;
            });
          },
          items: widget.listname.map<DropdownMenuItem<String>>((String value) {
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

class SquareReusableComponent extends StatefulWidget {
  String title;
  dynamic controllerName, listNameValue;
  List<String> listname;
  SquareReusableComponent(
      {Key? key,
      required this.title,
      required this.controllerName,
      required this.listname,
      required this.listNameValue})
      : super(key: key);

  @override
  State<SquareReusableComponent> createState() => _SquareReusableComponent();
}

class _SquareReusableComponent extends State<SquareReusableComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 90,
          height: 20,
          child: Text(widget.title),
        ),
        SizedBox(
          height: 30,
          width: 150,
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(7),
            ],
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            controller: widget.controllerName,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        DropdownButton<String>(
          value: widget.listNameValue,
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
              widget.listNameValue = value!;
            });
          },
          items: widget.listname.map<DropdownMenuItem<String>>((String value) {
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

class FabricReusableComponent extends StatefulWidget {
  String title;
  dynamic controllerName, listNameValue;
  List<String> listname;
  FabricReusableComponent(
      {Key? key,
      required this.title,
      required this.controllerName,
      required this.listname,
      required this.listNameValue})
      : super(key: key);

  @override
  State<FabricReusableComponent> createState() => _FabricReusableComponent();
}

class _FabricReusableComponent extends State<FabricReusableComponent> {
  List<String> lastValue = <String>['INCH'];
  List<double> intialFabricValue = <double>[];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 90,
          height: 20,
          child: Text(widget.title),
        ),
        SizedBox(
          height: 30,
          width: 150,
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(7),
            ],
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            controller: widget.controllerName,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        DropdownButton<String>(
          value: widget.listNameValue,
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
              widget.listNameValue = value!;
              lastValue.add(value);
              double newvalue = 0.0;

              try {
                intialFabricValue[0] = double.parse(widget.controllerName.text);
              } catch (e) {
                intialFabricValue[0] = 0.0;
              }

              if (lastValue.last == 'CM') {
                newvalue = intialFabricValue[0] * 2.54;
                widget.controllerName.text = newvalue.toStringAsFixed(2);
                lastValue.removeLast();
              } else if (lastValue.last == "INCH") {
                newvalue = intialFabricValue[0];
                widget.controllerName.text = newvalue.toStringAsFixed(2);
                lastValue.removeLast();
              } else if (lastValue.last == "MM") {
                newvalue = intialFabricValue[0] * 25.4;
                widget.controllerName.text = newvalue.toStringAsFixed(2);
                lastValue.removeLast();
              } else if (lastValue.last == "MTR") {
                newvalue = intialFabricValue[0] / 39.37;
                widget.controllerName.text = newvalue.toStringAsFixed(2);
                lastValue.removeLast();
              } else if (lastValue.last == "YARD") {
                newvalue = intialFabricValue[0] / 36;
                widget.controllerName.text = newvalue.toStringAsFixed(2);
                lastValue.removeLast();
              } else if (lastValue.last == "FEET") {
                newvalue = intialFabricValue[0] / 12;
                widget.controllerName.text = newvalue.toStringAsFixed(2);
                lastValue.removeLast();
              }
            });
          },
          items: widget.listname.map<DropdownMenuItem<String>>((String value) {
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
