// https://projecteuler.net/problem=2

// Each new term in the Fibonacci sequence is generated by adding 
// the previous two terms. By starting with 1 and 2, the first 10 
// terms will be:

// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

// By considering the terms in the Fibonacci sequence whose values 
// do not exceed four million, find the sum of the even-valued terms.

var listFibNumbers = function(list, ceiling) {
  var nextItemInSequence = list[list.length-1] + list[list.length-2];

  if (nextItemInSequence <= ceiling) {
    list.push(nextItemInSequence);
    listFibNumbers(list, ceiling);
  }

  return list;
}

var getEvenNumbers = function(num) {
  return num % 2 === 0 ? num : 0;
};

var add = function(a, b) {
  return a + b;
};

var solve = function (list, ceiling) {
  return listFibNumbers(list, ceiling).map(getEvenNumbers).reduce(add);
};

console.log( solve([1, 2], 4000000) );