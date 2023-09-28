import 'package:flutter/material.dart';

//create a variable that will store the converted cureency value
// Create a function that multiplies the value given by the text field
//Store the value in the variable that we created
// Display the variable
class CurrencyConverterMaterialPagee extends StatefulWidget {
  const CurrencyConverterMaterialPagee({super.key});

  @override
  State<CurrencyConverterMaterialPagee> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPagee> {
  // @override
  // Widget build(BuildContext context) {
  //   return const Scaffold();
  // }

  // late double result;
  // @override
  // void initState() {
  //   super.initState();
  // }
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 800;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(197, 111, 104, 250),
        width: 3.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );
    // return const Text(
    //   "Hello World",
    //   textDirection: TextDirection.rtl,
    // );
    return Scaffold(
      // backgroundColor: Color.fromRGBO(255, 255, 244, 200),
      backgroundColor: const Color.fromARGB(255, 121, 187, 242),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 187, 242),
        title: const Text("Currency Converter"),
        elevation: 0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Text(
                'Naira ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            //pading, container
            Padding(
              // padding: EdgeInsets.all(8.0),
              //  padding: EdgeInsets.only(left:8.0),
              padding: const EdgeInsets.fromLTRB(4.0, 20, 4.0, 0),
              child: TextField(
                controller: textEditingController,
                // ignore: unnecessary_const
                style: const TextStyle(
                  color: Color.fromARGB(126, 241, 53, 53),
                ),
                decoration: const InputDecoration(
                  hintText: "Please Enter amount in usd",
                  // ignore: unnecessary_const
                  hintStyle:
                      TextStyle(color: Color.fromARGB(153, 226, 106, 106)),
                  prefixIcon: Icon(Icons.monetization_on_sharp),
                  prefixIconColor: Color.fromARGB(197, 76, 69, 207),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: border,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(197, 76, 69, 207),
                      width: 2.5,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    //  borderRadius: BorderRadius.horizontal (
                    //   left:Radius.circular(50)
                    //    ),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    // onPressed: () {
                    //   setState(() {
                    //     result = double.parse(textEditingController.text) * 800;
                    //   });
                    //   // print(double.parse(textEditingController.text) * 800);
                    // },
                    onPressed: convert,
                    style: TextButton.styleFrom(
                        elevation: 20,
                        backgroundColor: (Colors.black),
                        foregroundColor: (Colors.white),
                        minimumSize: const Size(double.infinity, 50)),
                    // minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),

                    child: const Text("Convert ")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CurrconMaterialPage extends StatelessWidget {
//   const CurrconMaterialPage({super.key});

// }
