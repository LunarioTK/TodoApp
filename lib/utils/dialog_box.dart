import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        height: 120,
        child: Column(
          children: [
            //receber input do utilizador
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),

            //botão de guadar e cancelar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //botão guardar
                MyButton(text: 'Save', onPressed: () {}),

                //botão camcelar
                MyButton(text: 'Cancelar', onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
