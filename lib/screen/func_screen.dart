import 'package:flutter/material.dart';
import 'package:flutterhw11/provider/number_provider.dart';
import 'package:provider/provider.dart';

class FuncScreen extends StatefulWidget {
  const FuncScreen({Key? key}) : super(key: key);

  @override
  State<FuncScreen> createState() => _FuncScreenState();
}

class _FuncScreenState extends State<FuncScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Consumer(
              builder: (_, NumberProvider numberProvider, __) {
                if(numberProvider.currentState == Status.increasing){
                  return const CircularProgressIndicator(
                    color: Colors.blue,
                  );
                }
                return IconButton(
                  onPressed: (){
                    context
                        .read<NumberProvider>()
                        .increaseNum();
                  }, icon: const Icon(Icons.add,color: Colors.blue,size: 40,),);
              },
            ),
            Consumer(
              builder: (_,NumberProvider numberProvider,__){
                if(numberProvider.currentState == Status.decreasing){
                  return const CircularProgressIndicator(
                    color: Colors.blue,
                  );
                }
                return IconButton(
                  onPressed: (){
                    context
                        .read<NumberProvider>()
                        .decreaseNum();
                  }, icon: const Icon(Icons.remove,color: Colors.blue,size: 40,),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
