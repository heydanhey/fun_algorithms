function num_to_array(num){
    
    var array = [];
    var div = 100000;
    var digit = 0;
    
    while (div >= 1){
        if ((Math.floor(num / div)) > 0){
            digit = Math.floor(num / div);
            console.log(digit);
            array.push(digit);
            num = num - (div * digit);
        }
        div = div/10;
    }
        
    return array;
}

var num = 12345;

console.log(num);
console.log(num_to_array(num));