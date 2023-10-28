import 'package:app_tarefas/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen  extends StatefulWidget {
  const InitialScreen ({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text ('Tarefas'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade? 1: 0,
          duration: const Duration(milliseconds:800 ),
          child: ListView(

            children:  const [
              // Task( 'Estudar Flutter',
              //     'assets/flutter.png',3),
              Task('Estudar Inglês',
                  'https://picsum.photos/250?image=9',2),
              Task('Meditar',
                  'https://picsum.photos/250?image=9',4 ),
              Task('Ler 10 min',
                  'https://picsum.photos/250?image=9',1),
              Task('Musculação','https://picsum.photos/250?image=9',5
              ),
              SizedBox( height: 80,)
            ],


          ),
        ),

        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {

          });
          opacidade= ! opacidade;
        },
          child: const Icon(Icons.remove_red_eye),
        )
    );
  }
}
