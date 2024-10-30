/**
 * @param {number[]} nums
 * @param {Function} fn
 * @param {number} init
 * @return {number}
 */
var reduce = function(nums, fn, init) {
    // Set the initial value of `val` to `init`
let val = init;

// Iterate over each element in `nums`
for (let i = 0; i < nums.length; i++) {
    // Apply the function `fn` with the current `val` and `nums[i]`
    val = fn(val, nums[i]);
}

// Return the accumulated result
return val;
};