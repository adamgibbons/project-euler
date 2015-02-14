// If we list all the natural numbers below 10 that are multiples of 3
// or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

var add = function(a, b) {
  return a + b;
};

var subtract = function(a, b) {
  return a - b;
};

var multiply = function(a, b) {
  return a * b;
};

var getSumOfList = function(list) {
  return list.reduce(add);
};

var listMultiples = function(ceiling, num) {
  var i = num, list = [];
  while (i < ceiling) {
    list.push(i);
    i += num;
  }
  return list;
};

var listCommonDenominators = function(ceiling, a, b) {
  return listMultiples(ceiling, multiply(a, b));
}

var findSumOfMultiples = function(ceiling, a, b) {
  var multiplesOfThreeAndFive = getSumOfList((listMultiples(ceiling, a).concat(listMultiples(ceiling, b))));
  var commonDenominators = getSumOfList(listCommonDenominators(ceiling, a, b));
  var solution = subtract(multiplesOfThreeAndFive, commonDenominators);

  console.log(solution);
};

findSumOfMultiples(1000, 3, 5);
