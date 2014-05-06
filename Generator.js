/**
* collect user input and display generated password in seperate field
* then also show the apply button
*/
function generatePassword() {
    length = document.getElementById('inputPasswordLength').value;
    lowerCase = document.getElementById('lowerLetters').checked;
    upperCase = document.getElementById('upperLetters').checked;
    numbers = document.getElementById('numbers').checked;
    specialChar = document.getElementById('specialChars').checked;

    generatedPassword = generateRandomPassword(length, lowerCase, upperCase, numbers, specialChar);

    document.getElementById('inputGenerated').value = generatedPassword;
    document.getElementById('generator-result').style.display = 'inline';
}

/**
* Apply the generated password from the generator field into the password field of the entry
*/
function applyPassword() {
    generatedValue = document.getElementById('inputGenerated').value;
    document.getElementById('inputPassword').value = generatedValue;
}


/**
* Generate a random password with the given parameters, if all options are false, an empty string is returned
*/
function generateRandomPassword(length, lowerCase, upperCase, numbers, specialChar) {
    var lowerChars = "abcdefghijklnopqrstuvwxyz";
    var upperChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var numbersSet = "0123456789";
    var specialChars = "-_.:,;{}?!=()[]*#@+§<>^";


    var charset = "",
        retVal = "";
    if (lowerCase) charset += lowerChars;
    if (upperCase) charset += upperCase;
    if (numbers) charset += numbersSet;
    if (specialChar) charset += specialChars;

    for (var i = 0, n = charset.length; i < length; ++i) {
        retVal += charset.charAt(Math.floor(Math.random() * n));
    }
    return retVal;
}