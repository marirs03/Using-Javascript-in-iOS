
function appendStrings(a,b){
	var c = a + ' ' + b;
	return c;
}

function sumOfNNumbers(arrayOfNumbers){
	var sum = 0;
    for(var i = 0; i < arrayOfNumbers.length; i++){
       sum += arrayOfNumbers[i];
    }
    return sum;
}

function playWithDictionary(inputObject){
    inputObject.name = inputObject.firstName + inputObject.lastName;
    return inputObject;
}


