//: Playground - noun: a place where people can play
// Playground for test some swift algorithms capability

import UIKit

/**
 Insertion Sort
 Make a copy of the array. This is necessary because we cannot modify the contents of the array parameter directly. Like Swift's own sort(), the insertionSort() function will return a sorted copy of the original array.
 
 There are two loops inside this function. The outer loop looks at each of the elements in the array in turn; this is what picks the top-most number from the pile. The variable x is the index of where the sorted portion ends and the pile begins (the position of the | bar). Remember, at any given moment the beginning of the array -- from index 0 up to x -- is always sorted. The rest, from index x until the last element, is the unsorted pile.
 
 The inner loop looks at the element at position x. This is the number at the top of the pile, and it may be smaller than any of the previous elements. The inner loop steps backwards through the sorted array; every time it finds a previous number that is larger, it swaps them. When the inner loop completes, the beginning of the array is sorted again, and the sorted portion has grown by one element.
 
 The worst-case and average case performance of insertion sort is O(n^2).
 
 */

//func insertionSort(_ array: [Int]) -> [Int] {
//    var a = array                             // 1
//    for x in 1..<a.count {                    // 2
//        var y = x
//        while y > 0 && a[y] < a[y - 1] {        // 3
//            swap(&a[y - 1], &a[y])
//            y -= 1
//        }
//    }
//    return a
//}

func insertionSortA(_ array: [Int]) -> [Int] {
    var a = array
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y - 1] {
            a[y] = a[y - 1]                // 1
            y -= 1
        }
        a[y] = temp                      // 2
    }
    return a
}

/**
 Quick sort
 */

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }
    
    let pivot = a[a.count/2]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }
    
    return quicksort(less) + equal + quicksort(greater)
}
