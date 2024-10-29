/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function(arr, fn) {
    // Initialize an empty array to store the filtered elements
let filteredArr = [];

// Loop through each element in the array
for (let i = 0; i < arr.length; i++) {
    // If the function fn returns a truthy value for the element, add it to filteredArr
    if (fn(arr[i], i)) {
        filteredArr.push(arr[i]);
    }
}

return filteredArr;

};