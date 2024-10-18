import "package:flutter/material.dart";
import 'package:intl_phone_number_input/intl_phone_number_input.dart';


class Phone extends StatelessWidget {
  final TextEditingController controller;
  const Phone({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    // PhoneNumber number = PhoneNumber(isoCode: "eg",dialCode: "+02",phoneNumber:);
    return 
          InternationalPhoneNumberInput(
        onInputChanged: (PhoneNumber number) {
          //print(number.phoneNumber);
        },
        onInputValidated: (bool value) {
          //print(value);
        },
        selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            setSelectorButtonAsPrefixIcon: true,
            leadingPadding: 15,
            trailingSpace: false),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        selectorTextStyle: const TextStyle(color: Colors.black),
        spaceBetweenSelectorAndTextField: 10,
        inputDecoration:const InputDecoration(
          label: Text("phoneNumber"),
        ),
        initialValue: PhoneNumber(isoCode: "EG",phoneNumber: controller.text),
        textFieldController: controller,
        formatInput: true,
        textStyle: Theme.of(context).textTheme.bodyMedium,
        keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: false),
        inputBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(30),
        ),
        searchBoxDecoration: InputDecoration(
          label: const Text("search"),
          counterStyle: Theme.of(context).textTheme.bodyMedium,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          //floatingLabelStyle: Theme.of(context).textTheme.bodyMedium,
        ),
        onSaved: (PhoneNumber number) {
          //print('On Saved: $number');
        },
      );
  }
}
