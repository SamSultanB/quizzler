import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final VoidCallback selectHandler;
  final String button;

  Answer(this.selectHandler, this.button);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        onPressed: selectHandler,
        child: Text(button),
      ),
    );
  }
}
