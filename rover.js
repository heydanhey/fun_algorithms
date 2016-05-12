function isVowel(letter) {
  var vowels = ["a","e","i","o","u"];
  for (var i=0;i<5;i++){
    if (letter==vowels[i]){
      return true;
    }
  }
  return false;
}

function translate(str) {

  var rovar = "";

  for(var i=0; i<str.length; i++){

    if (isVowel(str.charAt(i))) {
      rovar = rovar + str.charAt(i);
      alert(rovar);
    } else {
      rovar = rovar + str.charAt(i) + "o" + str.charAt(i);
      alert("!");
    }
  }
  return rovar;
}

console.log(translate("b"));