import 'package:flutter/material.dart';

class InsertionSort extends StatelessWidget {

  final String title;
  InsertionSort(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(title),
        ),
      body: Text("""
      def insertion_sort(InputList):
          for i in range(1, len(InputList)):
              j = i-1
              nxt_element = InputList[i]
      # Compare the current element with next one
          
              while (InputList[j] > nxt_element) and (j >= 0):
                  InputList[j+1] = InputList[j]
                  j=j-1
              InputList[j+1] = nxt_element

      list = [19,2,31,45,30,11,121,27]
      insertion_sort(list)
      print(list)
      """),
    );
  }
}
