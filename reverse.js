function reverse(array){
    
    var front = 0;
    var back = array.length-1;
    
    for(var i=0; i<=(Math.floor(array.length/2)); i++){
        var temp = array[front];
        array[front] = array[back];
        array[back] = temp;
        front++;
        back--;
    }
    
    return array;
}
var thisArray = [1,2,3,4,5];
console.log(reverse(thisArray));