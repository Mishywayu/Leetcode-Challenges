/**
 * @param {number} n
 * @return {Function} counter
 */
var createCounter = function(n) {
    var count = n;
    return function() {
    var currentCount = count;
    count += 1;
    return currentCount;
    };
};