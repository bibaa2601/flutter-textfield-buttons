import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/my_elevated_button.dart';
import 'package:flutter_application_1/presentation/widgets/my_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(backgroundColor: Colors.red),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyIconButton(
                onPressed: () {}
              ),
              MyElevatedButton(
                title: 'Сохранить',
                onPressed: () {},
              ),
              TextButton(
                onPressed: () {}, 
                child: const Text(
                  'TextButton',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onDoubleTap: () {},
                onTapDown:(details) => print('onTapDown'),
                onTapUp: (details) =>  print('tap up'),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration:  BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius:BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child:  Text(
                      'Container',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
               const SizedBox(height: 30),
               Padding(
                padding:  const EdgeInsets.all(15),
                child: TextField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 100,
                  maxLines: 1,
                  style: const TextStyle(),
                  decoration: InputDecoration(
                    fillColor: Colors.indigo,
                    filled: true,
                    prefix:  const Icon(Icons.search),
                    suffix:  const Icon(Icons.settings),
                    hintText: 'Hint Text',
                    labelText: 'Label Text',
                    helperText: 'Helper Text',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


