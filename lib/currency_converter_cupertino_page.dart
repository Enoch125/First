import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPagee extends StatefulWidget {
  const CurrencyConverterCupertinoPagee({super.key});

  @override
  State<CurrencyConverterCupertinoPagee> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPagee> {
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
  
  void convert(){
      result = double.parse(textEditingController.text) * 800;
      setState(() {
        
      });
  }


  @override
  Widget build(BuildContext context) {

    // return const Text(
    //   "Hello World",
    //   textDirection: TextDirection.rtl,
    // );
    return CupertinoPageScaffold(
      // backgroundColor: Color.fromRGBO(255, 255, 244, 200),
      backgroundColor: const Color.fromARGB(255, 121, 187, 242),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 121, 187, 242),
        middle: Text("Currency Converter"),
        
        
      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Text(
                'Naira ${result!=0 ?result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.black),
              ),
            ),
            //pading, container
            Padding(
              // padding: EdgeInsets.all(8.0),
              //  padding: EdgeInsets.only(left:8.0),
              padding: const EdgeInsets.fromLTRB(4.0, 20, 4.0, 0),
              child: CupertinoTextField(
                controller: textEditingController,
                placeholder: "Enter amount in usd",
                prefix: const Icon(CupertinoIcons.money_dollar),
                // ignore: unnecessary_const
                style: const TextStyle(
                  color: Color.fromARGB(126, 241, 53, 53),
                ),
                decoration:  BoxDecoration(
                  border: Border.all( ),
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(5),



                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true
                    ),
                ),
                
              ),
        

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoButton(
                    onPressed: convert,
                    color: CupertinoColors.black,
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
