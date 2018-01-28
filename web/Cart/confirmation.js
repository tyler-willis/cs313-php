function displayItems() {
    if (sessionStorage.getItem('Small Tent') !== null) {
        document.getElementById("itemsInCart").innerHTML += "Small Tent - Qty: " + sessionStorage.getItem('Small Tent') + "<br>";
    }
    if (sessionStorage.getItem('Large Tent') !== null) {
        document.getElementById("itemsInCart").innerHTML += "Large Tent - Qty: " + sessionStorage.getItem('Large Tent') + "<br>";
    }
    if (sessionStorage.getItem('Sleeping Bag') !== null) {
        document.getElementById("itemsInCart").innerHTML += "Sleeping Bag - Qty: " + sessionStorage.getItem('Sleeping Bag') + "<br>";
    }
        if (sessionStorage.getItem('Sleeping Pad') !== null) {
    document.getElementById("itemsInCart").innerHTML += "Sleeping Pad - Qty: " + sessionStorage.getItem('Sleeping Pad') + "<br>";
    }
        if (sessionStorage.getItem('Backpack') !== null) {
    document.getElementById("itemsInCart").innerHTML += "Backpack - Qty: " + sessionStorage.getItem('Backpack') + "<br>";
    }
        if (sessionStorage.getItem('Boots') !== null) {
    document.getElementById("itemsInCart").innerHTML += "Boots - Qty: " + sessionStorage.getItem('Boots') + "<br>";
    }
    
    var totalCost = Math.round(sessionStorage.total * 100) / 100;
    document.getElementById("itemsInCart").innerHTML += "<br>Total - $" + totalCost + "<br><br>Order will be shipped to:<br>" + sessionStorage.getItem('address');
}