import 'package:flutter/material.dart';
import 'package:textiletune/Components/allComponents.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final fabricController = TextEditingController();
  final gsmController = TextEditingController();
  final glmController = TextEditingController();
  final kilomtrController = TextEditingController();
  final ratekiloController = TextEditingController();
  final ratemtrController = TextEditingController();
  static List<String> fabList = <String>['INCH','CM','MM','MTR','YARD','FEET'];
  static List<String> gsmList = <String>['GRAM', 'KG', 'oz', 'lb'];
  static List<String> glmList = <String>['GRAM', 'KG', 'oz', 'lb'];
  static List<String> kiloMtrList = <String>['MTR', 'YARD', 'FEET'];
  static List<String> rateKiloList = <String>['GRAM', 'KG', 'OUNCE', 'POUND'];
  static List<String> rateMtrList = <String>['GRAM', 'KG', 'OUNCE', 'POUND'];
  String fabListValue = fabList.first;
  String gsmListValue = gsmList.first;
  String glmListValue = glmList.first;
  String kiloMtrListValue = kiloMtrList.first;
  String rateKiloListValue = rateKiloList.first;
  String rateMtrListValue = rateMtrList.first;
  double fabric = 0;
  double gsm = 0;
  double glm = 0;
  double kgmtr = 0;
  double ratekilo = 0;
  double ratemtr = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Textile Calculator'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 144, 143, 143),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      FabricReusableComponent(
                        title: 'Fabric Width',
                        controllerName: fabricController,
                        listname: fabList,
                        listNameValue: fabListValue,
                      ),
                      SquareReusableComponent(
                        title: 'GSM',
                        controllerName: gsmController,
                        listname: gsmList,
                        listNameValue: gsmListValue,
                      ),
                      SquareReusableComponent(
                        title: 'GLM',
                        controllerName: glmController,
                        listname: glmList,
                        listNameValue: glmListValue,
                      ),
                      ConversionReusableComponent(
                        title: 'Kg/Mtr',
                        controllerName: kilomtrController,
                        listname: kiloMtrList,
                        listNameValue: kiloMtrListValue,
                      ),
                      RateReusableComponent(
                        title: 'Rate(Rs/Kg)',
                        controllerName: ratekiloController,
                        listname: rateKiloList,
                        listNameValue: rateKiloListValue,
                      ),
                      RateReusableComponent(
                        title: 'Rate(Rs/Mtr)',
                        controllerName: ratemtrController,
                        listname: rateMtrList,
                        listNameValue: rateMtrListValue,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                try {
                                  fabric = double.parse(
                                      fabricController.text.toString());
                                } catch (e) {
                                  fabric = 0;
                                }
                                try {
                                  gsm = double.parse(
                                      gsmController.text.toString());
                                } catch (e) {
                                  gsm = 0;
                                }
                                try {
                                  glm = double.parse(
                                      glmController.text.toString());
                                } catch (e) {
                                  glm = 0;
                                }
                                try {
                                  kgmtr = double.parse(
                                      kilomtrController.text.toString());
                                } catch (e) {
                                  kgmtr = 0;
                                }
                                try {
                                  ratekilo = double.parse(
                                      ratekiloController.text.toString());
                                } catch (e) {
                                  ratekilo = 0;
                                }
                                try {
                                  ratemtr = double.parse(
                                      ratemtrController.text.toString());
                                } catch (e) {
                                  ratemtr = 0;
                                }
                                // First Basic Condition
                                if (fabric != 0.0 &&
                                    gsm != 0.0 &&
                                    ratemtr != 0.0 &&
                                    kgmtr != 0.0) {
                                  glm = gsm * (fabric / 39.37);
                                  double avg = (1000 / glm);
                                  double kg = kgmtr / avg;
                                  ratekilo = ratemtr * avg;
                                  glmController.text = glm.toStringAsFixed(2);
                                  kilomtrController.text = kg.toStringAsFixed(2);
                                  ratekiloController.text = ratekilo.toStringAsFixed(2);
                                }

                                else if (glm != 0.0 && gsm != 0.0) {
                                  fabric = (glm / gsm) * 39.37;
                                  ratekilo = 1000 / glm;
                                  ratekiloController.text = '$ratekilo';
                                  fabricController.text = '$fabric';
                                } else if (ratekilo != 0.0) {
                                  ratemtrController.text = 'ratekilo * 4.17';
                                }

                                setState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 40,
                                width: 150,
                                child: const Center(
                                  child: Text(
                                    'Calculate',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                fabricController.text = '';
                                gsmController.text = '';
                                glmController.text = '';
                                kilomtrController.text = '';
                                ratekiloController.text = '';
                                ratemtrController.text = '';

                                setState(() {});
                              },
                              child: Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.green.shade200,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                  child: Text(
                                    'Reset Data',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
