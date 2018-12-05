function test_for_match(array) {
    for (let j = 0; j < array.length - 1; j++) {
        for (let z = j + 1; z < array.length; z++) {
            if (array[j] == array[z]) {
                console.log(array[j])
                return array[j];
            }
        }
    }
}

function add_elements_to_array(new_array, old_array) {
    let length = new_array.length
    for (let k = 0; k < length; k++) {
        new_array.push(new_array[new_array.length - 1] + old_array[k])
    }
    return new_array;
}

let array = [+7, +7, -2, -7, -4]
let updated_array = [array[0]];
let sum = array[0]

for (let i = 0; i < array.length - 1; i++) {
    sum += array[i + 1]
    updated_array.push(sum)
}

// while (!(test_for_match (updated_array))) {
//     add_elements_to_array(updated_array, array)
//     console.log(updated_array)
// }


let test = [7, 14, 12, 5, 1, 8, 15, 13, 6, 2, 9, 16, 14, 7, 3]
test_for_match(test)