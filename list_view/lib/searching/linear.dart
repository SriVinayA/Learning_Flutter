import 'package:flutter/material.dart';

class LinearSearch extends StatelessWidget {

  final String title;
  LinearSearch(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(title),
        ),
      body: Text("""
      def search(arr, n, x): 
        
          for i in range (0, n): 
              if (arr[i] == x): 
                  return i; 
          return -1; 
        
      # Driver Code 
      arr = [ 2, 3, 4, 10, 40 ]; 
      x = 10; 
      n = len(arr); 
      result = search(arr, n, x) 
      if(result == -1): 
          print("Element is not present in array") 
      else: 
          print("Element is present at index", result);       
      """),
    );
  }
}
