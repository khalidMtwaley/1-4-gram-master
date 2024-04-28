import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:gram/presentation/employeList/employee_list.dart';
import 'package:gram/presentation/main_veiw/main_veiw.dart';
import '../../resource/styles_manager.dart';
import '../../shared/component/component.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  OutlineInputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.7),
          width: 2.0));
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: defaultAppBar(),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showProfileSheet(context: context);
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
          child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    'Payment',
                    style: getBoldStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  bankName: '',
                  showBackView: isCvvFocused,
                  obscureCardNumber: true,
                  obscureCardCvv: true,
                  isHolderNameVisible: true,
                  isSwipeGestureEnabled: true,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},

                ),
                Expanded(
                    child: SingleChildScrollView(
                        child: Column(
                            children: <Widget>[
                              CreditCardForm(
                                formKey: formKey,
                                obscureCvv: true,
                                obscureNumber: true,
                                cardNumber: cardNumber,
                                cvvCode: cvvCode,
                                isHolderNameVisible: true,
                                isCardNumberVisible: true,
                                isExpiryDateVisible: true,
                                cardHolderName: cardHolderName,
                                expiryDate: expiryDate,
                                themeColor: Colors.blue,
                                cardNumberDecoration: InputDecoration(
                                  labelText: 'Number',
                                  hintText: 'XXXX XXXX XXXX XXXX',
                                  focusedBorder: border,
                                  enabledBorder: border,
                                ),
                                expiryDateDecoration: InputDecoration(
                                  focusedBorder: border,
                                  enabledBorder: border,
                                  labelText: 'Expired Date',
                                  hintText: 'XX/XX',
                                ),
                                cvvCodeDecoration: InputDecoration(
                                  focusedBorder: border,
                                  enabledBorder: border,
                                  labelText: 'CVV',
                                  hintText: 'XXX',
                                ),
                                cardHolderDecoration: InputDecoration(
                                  focusedBorder: border,
                                  enabledBorder: border,
                                  labelText: 'Card Holder',
                                ),
                                onCreditCardModelChange: onCreditCardModelChange,
                              ),
                               SizedBox(
                                height: 20,
                              ),
                              defaultButton(
                                text:"Pay Now",
                                color: Color(0xff1895D2),
                                function: () {
                                  if (formKey.currentState!.validate()) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainVeiw()));
                                  } else {
                                    print('invalid!');
                                  }
                                },
                              ),
                            ]
                        )
                    )
                )
              ]
          ),
        ),
      ),
    );
  }
  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}





