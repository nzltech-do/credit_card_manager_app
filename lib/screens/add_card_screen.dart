import 'package:flutter/material.dart';

class AddCardScreen extends StatefulWidget {
  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final _formKey = GlobalKey<FormState>();
  String cardName = '';
  int statementDay = 1;
  int paymentDay = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Card')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Card Name'),
                onSaved: (val) => cardName = val ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Statement Day'),
                keyboardType: TextInputType.number,
                onSaved: (val) => statementDay = int.parse(val ?? '1'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Payment Day'),
                keyboardType: TextInputType.number,
                onSaved: (val) => paymentDay = int.parse(val ?? '1'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Save'),
                onPressed: () {
                  _formKey.currentState?.save();
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
