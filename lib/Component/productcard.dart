// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:quantity_input/quantity_input.dart';

class productcard extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const productcard(
      {Key? key,
      required this.hyperlink,
      required this.text1,
      required this.text2,
      required this.text3,})
      : super(key: key);

  final String hyperlink;
  final String text1;
  final String text2;
  final String text3;
  

  @override
  // ignore: library_private_types_in_public_api
  _productcardState createState() => _productcardState();
}

class _productcardState extends State<productcard> {
  _productcardState();

  @override
  Widget build(BuildContext context) {
    int simpleIntInput = 0;

    var hyperlinkq = widget.hyperlink;

    return Container(
        height: 530,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            SizedBox(
              height: 300,
              child: WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: hyperlinkq,
              ),
            ),
            Positioned(
              top: 310,
              child: Text(
                widget.text1,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 340,
              child: Chip(
                label: Text(widget.text2),
                backgroundColor: Colors.blueAccent.withOpacity(0.4),
              ),
            ),
            Positioned(
              top: 340,
              left: 120,
              child: Chip(
                label: Text(widget.text3),
                backgroundColor: Colors.blueAccent.withOpacity(0.4),
              ),
            ),
            const Positioned(
              top: 400,
              child: Text(
                'THIS IS A PRODUCT DESCRIPTION',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Positioned(
              top: 420,
              child: QuantityInput(
                  value: simpleIntInput,
                  onChanged: (value) => setState(() =>
                      simpleIntInput = int.parse(value.replaceAll(',', '')))),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueAccent.shade100,
                ),
                child: const Center(
                  child: Text('Add to cart'),
                ),
              ),
            )
          ],
        ));
  }
}
