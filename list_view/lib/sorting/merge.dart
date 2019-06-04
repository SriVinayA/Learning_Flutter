import 'package:flutter/material.dart';

class MergeSort extends StatelessWidget {

  final String title;
  MergeSort(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(title),
        ),
      body: Text("""
      def merge_sort(unsorted_list):
          if len(unsorted_list) <= 1:
              return unsorted_list
      # Find the middle point and devide it
          middle = len(unsorted_list) // 2
          left_list = unsorted_list[:middle]
          right_list = unsorted_list[middle:]

          left_list = merge_sort(left_list)
          right_list = merge_sort(right_list)
          return list(merge(left_list, right_list))

      # Merge the sorted halves

      def merge(left_half,right_half):

          res = []
          while len(left_half) != 0 and len(right_half) != 0:
              if left_half[0] < right_half[0]:
                  res.append(left_half[0])
                  left_half.remove(left_half[0])
              else:
                  res.append(right_half[0])
                  right_half.remove(right_half[0])
          if len(left_half) == 0:
              res = res + right_half
          else:
              res = res + left_half
          return res

      unsorted_list = [64, 34, 25, 12, 22, 11, 90]

      print(merge_sort(unsorted_list))
      """),
    );
  }
}
