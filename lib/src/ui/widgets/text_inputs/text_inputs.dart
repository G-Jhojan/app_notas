import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {

  final TextEditingController? controller;
  final String title;
  final Function(String?)? textEntry;

  const TextInput({
    super.key,
    this.controller,
    this.title = '',
    this.textEntry
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //alieanacion horizontal
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),

          const SizedBox(height: 4,),

          Container(
            width: double.infinity,
            height: 50,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[500],
            ),

            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                contentPadding:  EdgeInsets.symmetric(horizontal: 8),
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Ingrese un texto',
                hintStyle: TextStyle(
                  color: Colors.white
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class LargeTextInput extends StatelessWidget {

  final TextEditingController? controller;
  final String title;
  final Function(String?)? textEntry;

  const LargeTextInput({
    super.key,
    this.controller,
    this.title = '',
    this.textEntry
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //alieanacion horizontal
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),

          const SizedBox(height: 4,),

          Container(
            width: double.infinity,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[500],
            ),

            child: TextField(
              maxLines: 6,
              controller: controller,
              decoration: const InputDecoration(
                contentPadding:  EdgeInsets.symmetric(horizontal: 8, vertical: 5 ),
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Ingrese un texto',
                hintStyle: TextStyle(
                  color: Colors.white
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
