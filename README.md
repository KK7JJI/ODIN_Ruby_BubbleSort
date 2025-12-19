# TOP - Project Bubble Sort
## Requirements

Create a method to sort arrays using the bubble sort algorithm.

In addition to the project requirement additional features have been
added to facilitate the comparison of the performance of bubble sort
to the sort method included in the Array class.
- the bubblesort method accepts an array and sorts its elements in
  ascending order using the bubblesort algorithm implemented with
  nested for loops.

Additions include
- the "timestamp" method to help measure execution time in milliseconds
- the "random_array" method to generate an array of random numbers size
  "n" where each array element contains a random number from 0 to "m".
  Both "n" and "m" are supplied on the command line at execution time.
- the "sort_array" method will print out information about the selected
  sort method, array size sorted, and execution time in milliseconds.
- the "is_sorted?" method tests an array to see if its sorted in ascending
  order.
- the "rubysort" method sorts an array using the Array class sort method.
- the "main" method executes when the script file is executed directely
  from the command line.


**examples:**
Execution within the ruby interactive environment

```
irb(main):001> load "./bubblesort.rb"
=> true
irb(main):002> n = 10
irb(main):003> m = 1000
irb(main):004> main(10,1000)

================================================================================
   Unsorted: [518, 97, 195, 787, 448, 396, 992, 151, 935, 46]
  sort test: false

     Method: BUBBLESORT
 sort array: [46, 97, 151, 195, 396, 448, 518, 787, 935, 992]
  sort test: true
================================================================================
Execution Time: 0.02097 ms
================================================================================


================================================================================
   Unsorted: [720, 420, 909, 223, 909, 48, 391, 767, 187, 244]
  sort test: false

     Method: RUBYSORT
 sort array: [48, 187, 223, 244, 391, 420, 720, 767, 909, 909]
  sort test: true
================================================================================
Execution Time: 0.00352 ms
================================================================================

=> nil
```

```
irb(main):001> load "./bubblesort.rb"
=> true
irb(main):002> n = 1000
irb(main):003> m = 1000
irb(main):004> main(1000,1000)

================================================================================
 (sorting array of 1000 elements)
  sort test: false

     Method: BUBBLESORT
 (sorting array of 1000 elements)
  sort test: true
================================================================================
Execution Time: 70.15498 ms
================================================================================


================================================================================
 (sorting array of 1000 elements)
  sort test: false

     Method: RUBYSORT
 (sorting array of 1000 elements)
  sort test: true
================================================================================
Execution Time: 0.10162 ms
================================================================================

=> nil
```

Execution of the script from the command line:
```
ruby bubblesort.rb 10 1000

================================================================================
   Unsorted: [14, 169, 263, 550, 730, 487, 312, 915, 696, 995]
  sort test: false

     Method: BUBBLESORT
 sort array: [14, 169, 263, 312, 487, 550, 696, 730, 915, 995]
  sort test: true
================================================================================
Execution Time: 0.01587 ms
================================================================================


================================================================================
   Unsorted: [309, 447, 643, 988, 346, 864, 535, 768, 878, 629]
  sort test: false

     Method: RUBYSORT
 sort array: [309, 346, 447, 535, 629, 643, 768, 864, 878, 988]
  sort test: true
================================================================================
Execution Time: 0.00202 ms
================================================================================
```

```
ruby bubblesort.rb 10000 1000

================================================================================
 (sorting array of 10000 elements)
  sort test: false

     Method: BUBBLESORT
 (sorting array of 10000 elements)
  sort test: true
================================================================================
Execution Time: 5135.73321 ms
================================================================================


================================================================================
 (sorting array of 10000 elements)
  sort test: false

     Method: RUBYSORT
 (sorting array of 10000 elements)
  sort test: true
================================================================================
Execution Time: 0.99761 ms
================================================================================
```