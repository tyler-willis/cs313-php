function changeValidity(isValid, theClass) {
    if (isValid) {
        document.getElementsByClassName(theClass)[0].style.visibility = 'hidden';
    } else {
        document.getElementsByClassName(theClass)[0].style.visibility = 'visible ';
    }
}

function validateName(theName, theClass) {
    var regex = /^\s*[A-Z]\w*\s+[A-Z]\w*$/;
    changeValidity(regex.test(theName), theClass);
    return regex.test(theName);
}

function validateAddress(theAddress, theClass) {
    var regex = /^\s*\d+\s+(\S+\s*)+\s*$/
    changeValidity(regex.test(theAddress), theClass);
}

function validateCity(theCity, theClass) {
    var regex = /^\s*(\w+\s*)+\s*$/
    changeValidity(regex.test(theCity), theClass);
}

function validateState(theState, theClass) {
    var regex = /^\s*[A-Z]{2}\s*$/
    changeValidity(regex.test(theState), theClass);
}

function validateZip(theZip, theClass) {
    var regex = /^\s*\d{5}\s*$/
    changeValidity(regex.test(theZip), theClass);
}

function validatePhone(thePhone, theClass) {
    var regex = /^\s*\D?\d{3}\D?\d{3}\D?\d{4}\s*$/
    changeValidity(regex.test(thePhone), theClass);
}

function printTotals() {
    var totalCost = Math.round(sessionStorage.total * 100) / 100,
        totalGigs = sessionStorage.gigs;
    
    document.getElementById("totals").innerHTML = "You have chosen to purchase " + totalGigs + "GB of RAM for a total of $" + totalCost + ", $" + (totalCost + 5) + " with shipping and handling.<br>Please input your information below.";
}

function makeAddressString() {
    var fullAddress = document.getElementsByName("userName")[0].value + "<br>" + document.getElementsByName("address")[0].value + "<br>" + document.getElementsByName("city")[0].value + ", " + document.getElementsByName("state")[0].value + " " + document.getElementsByName("zip")[0].value;
    
    sessionStorage.setItem('address', fullAddress);
}

function validateAll() {
    if (document.getElementsByClassName("name")[0].style.visibility == 'hidden' &&
        document.getElementsByClassName("address")[0].style.visibility == 'hidden' && 
        document.getElementsByClassName("city")[0].style.visibility == 'hidden' && 
        document.getElementsByClassName("state")[0].style.visibility == 'hidden' && 
        document.getElementsByClassName("zip")[0].style.visibility == 'hidden' && 
        document.getElementsByClassName("phone")[0].style.visibility == 'hidden') {
        document.getElementsByClassName('submitButton')[0].removeAttribute("disabled");
        makeAddressString();
    } else {
        document.getElementsByClassName('submitButton')[0].setAttribute("disabled", "disabled");
    }
}
