/**
 * @param {Array} arr
 * @param {Function} fn
 * @return {Array}
 */
var sortBy = function(arr, fn) {
    // Step 1: Map each element to a pair [element, fn(element)]
    const mapped = arr.map(element => [element, fn(element)]);
    
    // Step 2: Sort the array of pairs based on the second element (the value returned by fn)
    mapped.sort((a, b) => a[1] - b[1]);
    
    // Step 3: Extract the original elements in sorted order
    const sortedArr = mapped.map(pair => pair[0]);
    
    return sortedArr;
};