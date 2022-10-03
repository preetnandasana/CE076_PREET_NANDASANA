import 'package:flutter/material.dart';
import 'package:invoice_generator/api/pdf_api.dart';
import 'package:invoice_generator/api/pdf_invoice_api.dart';
import 'package:invoice_generator/main.dart';
import 'package:invoice_generator/model/customer.dart';
import 'package:invoice_generator/model/invoice.dart';
import 'package:invoice_generator/model/supplier.dart';
import 'package:invoice_generator/widget/button_widget.dart';
import 'package:invoice_generator/widget/custom_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({Key? key}) : super(key: key);

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  late SharedPreferences preferences;

  final TextEditingController _toTextController = TextEditingController();
  final TextEditingController _dueDateController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey();
  final GlobalKey<FormState> _keyItem = GlobalKey();
  // Invoice Items
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _qtyController = TextEditingController();
  final TextEditingController _unitController = TextEditingController();
  final TextEditingController _gstController = TextEditingController();

  List<InvoiceItem> itemList = [];

  bool _isValid = false, _isValidItem = false;
  int invoiceNumber = 0;

  // description, date, qty, unit price, GST, total
  @override
  void initState() {
    sharedPreferencesInitialization();
    super.initState();
  }

  Future sharedPreferencesInitialization() async {
    preferences = await SharedPreferences.getInstance();
    int? getCurrentIndex = preferences.getInt("invoiceNumber");
    if (getCurrentIndex == null) {
      preferences.setInt("invoiceNumber", 1);
      getCurrentIndex = 1;
    } else {
      ++getCurrentIndex;
      preferences.setInt("invoiceNumber", getCurrentIndex);
    }
    setState(() {
      invoiceNumber = getCurrentIndex!;
    });
  }

  String? commonValidator(String str, String errorMessage) {
    if (str.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  void addItem() {
    if (_keyItem.currentState!.validate()) {
      _keyItem.currentState!.save();
      InvoiceItem localObject = InvoiceItem(
        date: DateTime.now(),
        description: _descriptionController.text.toString().trim(),
        quantity: int.parse(_qtyController.text.toString().trim()),
        unitPrice: double.parse(_unitController.text.toString().trim()),
        gst: double.parse(_gstController.text.toString().trim()),
      );
      itemList.add(localObject);
    }
  }

  void showConfirmation(String msg) {
    final snackBar = SnackBar(
      backgroundColor: Colors.redAccent,
      content: Text(msg),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  String? nameValidator(String value) {
    if (value.isEmpty) {
      return 'Name is required...';
    } else if (value.length <= 1) {
      return 'Invalid Name';
    }
    return null;
  }

  void handleSubmitButton() async {
    if(itemList.isEmpty){
      showConfirmation("Please Add Item...!!");
    }else if (_key.currentState!.validate()) {
      _key.currentState!.save();
      final date = DateTime.now();
      final dueDate =
          date.add(Duration(days: int.parse(_dueDateController.text.trim())));

      final invoice = Invoice(
        supplier: const Supplier(
          name: 'From',
          address: "Preet's Company", // TODO: Take it constant
          paymentInfo: 'https://paypal.me/sarahfieldzz',
        ),
        customer: Customer(
          name: 'To',
          address: _toTextController.text.toString().trim(),
        ),
        info: InvoiceInfo(
          date: date,
          dueDate: dueDate,
          description: '',
          number: '${DateTime.now().year}-$invoiceNumber',
        ),
        // items: [
        //   InvoiceItem(
        //     description: 'Coffee',
        //     date: DateTime.now(),
        //     quantity: 3,
        //     gst: 0.19,
        //     unitPrice: 5.99,
        //   ),
        //   InvoiceItem(
        //     description: 'Water',
        //     date: DateTime.now(),
        //     quantity: 8,
        //     gst: 0.19,
        //     unitPrice: 0.99,
        //   ),
        //   InvoiceItem(
        //     description: 'Orange',
        //     date: DateTime.now(),
        //     quantity: 3,
        //     gst: 0.19,
        //     unitPrice: 2.99,
        //   ),
        //   InvoiceItem(
        //     description: 'Apple',
        //     date: DateTime.now(),
        //     quantity: 8,
        //     gst: 0.19,
        //     unitPrice: 3.99,
        //   ),
        //   InvoiceItem(
        //     description: 'Mango',
        //     date: DateTime.now(),
        //     quantity: 1,
        //     gst: 0.19,
        //     unitPrice: 1.59,
        //   ),
        //   InvoiceItem(
        //     description: 'Blue Berries',
        //     date: DateTime.now(),
        //     quantity: 5,
        //     gst: 0.19,
        //     unitPrice: 0.99,
        //   ),
        //   InvoiceItem(
        //     description: 'Lemon',
        //     date: DateTime.now(),
        //     quantity: 4,
        //     gst: 0.19,
        //     unitPrice: 1.29,
        //   ),
        // ],
        items: itemList,
      );

      final pdfFile = await PdfInvoiceApi.generate(invoice);

      PdfApi.openFile(pdfFile);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Form(
                    key: _key,
                    autovalidateMode: _isValid
                        ? AutovalidateMode.always
                        : AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        CustomTitleTextField(
                          controller: _toTextController,
                          hintText: "Company Name",
                          onChanged: (str) {},
                          onEditingComplete: () {},
                          onSaved: (str) {},
                          validator: (str) =>
                              commonValidator(str!, "Enter Company name"),
                        ),
                        CustomTitleTextField(
                          controller: _dueDateController,
                          hintText: "Due Day",
                          onChanged: (str) {},
                          onEditingComplete: () {},
                          onSaved: (str) {},
                          keyboardType: TextInputType.number,
                          validator: (str) =>
                              commonValidator(str!, "Enter Due Date"),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    key: _keyItem,
                    autovalidateMode: _isValidItem
                        ? AutovalidateMode.always
                        : AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: <Widget>[
                        const Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        CustomTitleTextField(
                          controller: _descriptionController,
                          hintText: "Description",
                          onChanged: (str) {},
                          onEditingComplete: () {},
                          onSaved: (str) {},
                          keyboardType: TextInputType.text,
                          validator: (str) =>
                              commonValidator(str!, "Enter Description"),
                        ),
                        CustomTitleTextField(
                          controller: _qtyController,
                          hintText: "QTY",
                          onChanged: (str) {},
                          onEditingComplete: () {},
                          onSaved: (str) {},
                          keyboardType: TextInputType.number,
                          validator: (str) =>
                              commonValidator(str!, "Enter QTY"),
                        ),
                        CustomTitleTextField(
                          controller: _gstController,
                          hintText: "GST",
                          onChanged: (str) {},
                          onEditingComplete: () {},
                          onSaved: (str) {},
                          keyboardType: TextInputType.number,
                          validator: (str) =>
                              commonValidator(str!, "Enter GST"),
                        ),
                        CustomTitleTextField(
                          controller: _unitController,
                          hintText: "UNIT",
                          onChanged: (str) {},
                          onEditingComplete: () {},
                          onSaved: (str) {},
                          keyboardType: TextInputType.number,
                          validator: (str) =>
                              commonValidator(str!, "Enter Units"),
                        ),
                        ButtonWidget(
                          text: 'Add Item',
                          onClicked: () => addItem(),
                        ),
                        const SizedBox(height: 48),
                        ButtonWidget(
                          text: 'Invoice PDF',
                          onClicked: () => handleSubmitButton(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
