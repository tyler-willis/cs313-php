function changeText(theImageNumber) {
    document.getElementById("info").src = "img_" + theImageNumber + ".jpg";
}

function updateTotal() {
    if (!sessionStorage.total) {
        sessionStorage.total = 0;
    }
    if (!sessionStorage.items) {
        sessionStorage.items = 0;
    }
    
    var totalCost = Math.round(sessionStorage.total * 100) / 100,
        totalGigs = sessionStorage.items;
    
    document.getElementById("total").innerHTML = totalGigs + " Item(s) - $" + totalCost;
}

function addToCart(theItem, theCost) {
    if (sessionStorage.items) {
        sessionStorage.items = Number(sessionStorage.items) + 1;
    } else {
        sessionStorage.items = 1;
    }
    
    if (sessionStorage.total) {
        sessionStorage.total = Number(sessionStorage.total) + theCost;
    } else {
        sessionStorage.total = theCost;
    }
    
    if (sessionStorage.getItem(theItem) === null) {
        sessionStorage.setItem(theItem, 1);
    } else {
        var amt = sessionStorage.getItem(theItem);
        sessionStorage.setItem(theItem, (Number(amt)+1));
    }
        
    updateTotal();
}