let productDetails = {};
let searchStr = "";
let searchOrder = "none";
let basket = {};
//Each product is based on a 'card'; a box that contains information about that product.
//You can change the card template here. The [EVEGPRODUCT#] will always be subsituted for 
//the element in the imagesArr (see fruit.js)
//The classes can be styled using CSS
//The adjustDown and adjustUp buttons have their behaviour specified below, but you can change this if you like
//To change the quantity of a product, change the value of the input (with the class of buyInput), you can then recalculate the basket with refreshBasket()
//Or you can adjust the basket object via javascript and call updateQuantityInputs() and refreshBasket()

var cardTemplate = `<div class="shop-product card" data-num="[EVEGPRODUCT#]">
<div class="shop-product-details shop-product-title card__title" data-field="title" data-num="[EVEGPRODUCT#]"></div>
<div class="card__content" data-num="[EVEGPRODUCT#]">
<div class="shop-product-details shop-product-img" data-field="img" data-num="[EVEGPRODUCT#]"></div>
<div class="shop-product-details shop-product-price" data-field="price" data-num="[EVEGPRODUCT#]"></div>
<div class="shop-product-details shop-product-units" data-field="units" data-num="[EVEGPRODUCT#]"></div>
<div class="shop-product-buying" data-num="[EVEGPRODUCT#]">
<div class="productBasketDiv">
<div class="adjustDiv"><button class="btn adjustDown">-</button>
<input class="buyInput" data-num="[EVEGPRODUCT#]" min="0" value="0" onkeydown="handleKeyPress(event)">
<button class="btn adjustUp">+</button></div></div></div></div></div>`;

function init() {
  try {
    basket = JSON.parse(getCookie("basket"));
    console.log(basket);
  } catch (error) {
    console.error("Error parsing JSON:", error);
  }
  updateTotalItemsCount()
  
  const toggleButton = document.getElementsByClassName('toggle-button')[0];
  const hero = document.getElementsByClassName('hero')[0];
  const navbarLinks = document.getElementsByClassName('navbar-links')[0];

  //When the toggle button is pressed (if visible by the screen size, the menu is shown)
  toggleButton.addEventListener('click', () => {
    navbarLinks.classList.toggle('active');
    hero.classList.toggle('menuactive');
  });

  /*const searchBar = document.getElementsByClassName('search-bar')[0];
  //Show the search bar when the search link is pressed
  document.getElementById('search-link').addEventListener('click',()=>{
    searchBar.classList.toggle('active');
    document.getElementById('searchbox').focus();
  });*/

  //Search
  document.getElementById('searchbutton').addEventListener('click', () => {
    searchStr = document.getElementById('searchbox').value;
    redraw();
  });

  document.getElementById('cancelsearch').addEventListener('click', () => {
    searchStr = "";
    document.getElementById('searchbox').value = "";
    redraw();
  });

  document.getElementById('categorySelector').addEventListener('change', () => {
    searchStr = document.getElementById('categorySelector').value;
    redraw();
  });

  document.getElementById('sortOrderSelector').addEventListener('change', () => {
    searchOrder = document.getElementById('sortOrderSelector').value;
    redraw();
  });

  /*//Close the search bar
  document.getElementById('closesearchbutton').addEventListener('click', ()=>{
    searchStr = "";
    searchBar.classList.remove('active');
    redraw();
  });*/

  //const checkoutLink = document.querySelector('a.basket');
  //checkoutLink.addEventListener('click', checkoutHandler);

  //Close the cookies message
  document.getElementById('acceptCookies').addEventListener('click', () => {
    setCookie('cookieMessageSeen', true);
    document.getElementById('cookieMessage').style.display = 'none';
  });

  if (getCookie("cookieMessageSeen") == "true") {
    document.getElementById('cookieMessage').style.display = 'none';
  }
  initProducts(redraw);

  const searchBox = document.getElementById('searchbox');
  const searchButton = document.getElementById('searchbutton');
  const cancelSearch = document.getElementById('cancelsearch');

  searchBox.addEventListener('keyup', function (event) {
    if (event.key === 'Enter') {
      searchButton.click();
    }
    if (event.key === 'Escape') {
      cancelSearch.click();
    }
  });

  //Contact
  document.getElementById('contactLink').addEventListener('click', function () {
    closeAllPopups();
    document.getElementById('contactPopup').style.display = 'block';
    document.getElementById('contactLink').classList.add('active');
  });

  document.getElementById('closePopup').addEventListener('click', function () {
    document.getElementById('contactPopup').style.display = 'none';
    document.getElementById('contactLink').classList.remove('active');
  });

  //About
  document.getElementById('aboutLink').addEventListener('click', () => {
    closeAllPopups();
    document.getElementById('aboutPopup').style.display = 'block';
    document.getElementById('aboutLink').classList.add('active');
  });

  document.getElementById('closeAboutPopup').addEventListener('click', () => {
    document.getElementById('aboutPopup').style.display = 'none';
    document.getElementById('aboutLink').classList.remove('active');
  });
  
  // Event listener for the checkout link
  document.getElementById('checkoutLink').addEventListener('click', () => {
    closeAllPopups();
    document.getElementById('checkoutPopup').style.display = 'block';
    document.getElementById('checkoutLink').classList.add('active');
  });

  // Event listener for the "Back" button in the checkout modal
  document.getElementById('closeCheckoutPopup').addEventListener('click', () => {
    document.getElementById('checkoutPopup').style.display = 'none';
    document.getElementById('checkoutLink').classList.remove('active');
  });

  // Privacy
  document.getElementById('showPrivacyPopup').addEventListener('click', () => {
    closeAllPopups();
    document.getElementById('privacyPopup').style.display = 'block';
    document.getElementById('showPrivacyPopup').classList.add('active');
  });

  document.getElementById('closePrivacyPopup').addEventListener('click', () => {
    document.getElementById('privacyPopup').style.display = 'none';
    document.getElementById('showPrivacyPopup').classList.remove('active');
  });

  calculateBasket()

  var paid = localStorage.getItem("paid");
  if (paid == "true") {
    clearBucket();
    localStorage.setItem("paid", false);
  }
}

function closeAllPopups() {
  document.getElementById('contactPopup').style.display = 'none';
  document.getElementById('aboutPopup').style.display = 'none';
  document.getElementById('checkoutPopup').style.display = 'none';

  document.getElementById('contactLink').classList.remove('active');
  document.getElementById('aboutLink').classList.remove('active');
  document.getElementById('checkoutLink').classList.remove('active');
}

/*
* When changing the page, you should make sure that each adjust button has exactly one click event
* (otherwise it might trigger multiple times)
* So this function loops through each adjustment button and removes any existing event listeners
* Then it adds another event listener
*/
function resetListeners() {
  var elements = document.getElementsByClassName("adjustUp");
  var eIn;
  for (eIn = 0; eIn < elements.length; eIn++) {
    elements[eIn].removeEventListener("click", increment);
    elements[eIn].addEventListener("click", increment);
  }
  elements = document.getElementsByClassName("adjustDown");
  for (eIn = 0; eIn < elements.length; eIn++) {
    elements[eIn].removeEventListener("click", decrement);
    elements[eIn].addEventListener("click", decrement);
  }
  elements = document.getElementsByClassName("buyInput");
  for (eIn = 0; eIn < elements.length; eIn++) {
    elements[eIn].removeEventListener("change", inputchange);
    elements[eIn].addEventListener("change", inputchange);
  }
  document.body.removeEventListener("click", handleButtonClick);
  document.body.addEventListener("click", handleButtonClick);
}


//When the input changes, add a 'bought' class if more than one is added
function inputchange(ev) {
  validateInput(ev)
  var thisID = ev.target.parentElement.closest(".card__content").getAttribute("data-num");
  changeQuantity(thisID, parseInt(ev.target.parentElement.closest(".shop-product-buying").getElementsByTagName("input")[0].value));
}

function updateTotalItemsCount() {
  console.log(basket)
  let totalCount = 0;
  for (const quantity of Object.values(basket)) {
    totalCount += parseInt(quantity);
  }
  document.getElementById('checkoutTotalCount').textContent = `Basket(${totalCount})`;
}

/*
* Change the quantity of the product with productID
*/
function changeQuantity(productID, newQuantity) {
  basket[productID] = newQuantity;
  if (newQuantity == 0)
    delete basket[productID];
  document.querySelector(".buyInput[data-num='" + productID + "']").value = newQuantity;
  refreshBasket();
  calculateBasket();
  updateTotalItemsCount();
}

//Add 1 to the quantity
function increment(ev) {
  var thisID = ev.target.parentElement.closest(".card__content").getAttribute("data-num");
  if (basket[thisID] === undefined) {
    basket[thisID] = 0;
  }
  let stock = productDetails[thisID].stock;
  var inc = parseInt(basket[thisID] + 1);
  if (inc > stock) {
    alert("Insufficient stock: only " + stock + " left.");
  }
  else {
    changeQuantity(thisID, inc);
  }
}

//Subtract 1 from the quantity
function decrement(ev) {
  var thisID = ev.target.parentElement.closest(".card__content").getAttribute("data-num");
  if (basket[thisID] === undefined) {
    changeQuantity(thisID, 0);
  } else {
    if (basket[thisID] > 0) {
      changeQuantity(thisID, parseInt(basket[thisID]) - 1);
    }
  }
}

function filterFunction(a) {
  /*This demonstrates how to filter based on the search term*/
  if (searchStr == 'vegetable') {
    return a.type == 'veg';
  }
  if (searchStr == 'fruit') {
    return a.type == 'fruit';
  }
  if (searchStr == 'other') {
    return a.type == 'other'
  }
  if (searchStr == 'allcategories') {
    return true;
  }
  return a.name.toLowerCase().includes(searchStr.toLowerCase());
}

// function sortFunction(a,b){
//   return a.price > b.price;
// }

function sortFunction(a, b) {
  if (searchOrder == 'none') {
    return 0;
  }
  if (searchOrder == 'nameasc') {
    return (a.name).localeCompare(b.name);
  }
  if (searchOrder == "namedesc") {
    return (b.name).localeCompare(a.name);
  }
  if (searchOrder == 'priceasc') {
    return a.price - b.price;
  }
  if (searchOrder == "pricedesc") {
    return b.price - a.price;
  }
  return 0;
}

//Redraw all products based on the card template
function redraw() {

  //Reset the product list (there are possibly more efficient ways of doing this, but this is simplest)
  document.querySelector('.productList').innerHTML = '';

  var shownProducts = productDetails.filter(filterFunction);

  console.log(shownProducts);

  shownProducts.sort(sortFunction);

  var numProducts = shownProducts.length;

  for (var i = 0; i < numProducts; i++) {
    var cardHTML = cardTemplate.replaceAll("[EVEGPRODUCT#]", shownProducts[i].productID);
    var thisProduct = document.createElement("div");
    thisProduct.innerHTML = cardHTML;
    document.querySelector('.productList').appendChild(thisProduct.firstChild);
  }

  document.querySelectorAll(".shop-product-details").forEach(function (element) {
    var field = element.getAttribute("data-field");
    var num = element.getAttribute("data-num");
    switch (field) {
      case "title":
        element.innerText = productDetails[num].name;
        break;
      case "img":
        element.innerHTML = "<span class=\"imgspacer\"></span><img src=\"images/" + productDetails[num].image + "\"></img>";
        break;
      case "price":
        element.innerHTML = "<span>&pound;" + (productDetails[num].price / 100).toFixed(2) + "</span>";
        break;
      case "units":
        element.innerHTML = "<span>" + productDetails[num].packsize + " " + productDetails[num].units + "</span>";
        break;
    }

  });
  resetListeners();
  updateQuantityInputs();
}

window.addEventListener("load", init);

function updateQuantityInputs() {
  for (let buyInput of document.querySelectorAll(".buyInput")) {
    let quantity = basket[buyInput.getAttribute("data-num")];
    if (isNaN(quantity))
      quantity = 0;

    buyInput.value = quantity;
  }
}

//Recalculate basket
function refreshBasket() {
  let total = 0;
  let totalCount = 0;
  for (const productID in basket) {
    let quantity = parseInt(basket[productID]);
    let price = productDetails[productID].price;
    total = total + (price * quantity);
    totalCount += quantity;
  }
  setCookie('basketTotalCount', totalCount.toString());
  setCookie('basketTotalPrice', total.toString());
  // setCookie('basketQuantity', quantity.toString())
  // setCookie('basketPrice', price.toString())
  // setCookie('basketTotal', total.toString())
  setCookie('basket', JSON.stringify(basket));
  try {
    document.querySelector("#basketNumTotal").innerHTML = (total / 100).toFixed(2);
  } catch (e) {

  }
  return total;
}

function proceedToCheckout() {
  window.location.href = 'checkout.html';
}

function clearBucket() {
  for (const productID in basket) {
    changeQuantity(productID, 0);
  }
}

function handleButtonClick(event) {
  if (event.target.classList.contains("up")) {
    cartincrement(event);
  }

  if (event.target.classList.contains("down")) {
    cartdecrement(event);
  }

  if (event.target.classList.contains("clear")) {
    cartclear(event);
  }
}

function handleKeyPress(event) {
  if (event.keyCode === 13) {
    event.target.blur();
  }
}

function validateInput(event) {
  let inputValue = event.target.value;
  inputValue = inputValue.replace(/^0+/, '');
  if (inputValue == "") {
    inputValue = "0";
  }
  const isPositiveInteger = /^\d*$/.test(inputValue);

  if (!isPositiveInteger) {
    alert("Please enter non-negative integer.");
    event.target.value = 0;
  } else {
    var thisID = event.target.parentElement.closest(".card__content").getAttribute("data-num");
    let stock = productDetails[thisID].stock;
    if (inputValue > stock) {
      alert("Insufficient stock: only " + stock + " left.");
      event.target.value = 0;
    }
    else {
      event.target.value = parseInt(inputValue);
    }
  }
}

function cartincrement(ev) {
  var thisID = ev.target.parentElement.closest("td").getAttribute("data-product-id");
  let stock = productDetails[thisID].stock;
  var inc = parseInt(basket[thisID] + 1);
  if (inc > stock) {
    alert("Insufficient stock: only " + stock + " left.");
  }
  else {
    changeQuantity(thisID, inc);
  }
}

function cartdecrement(ev) {
  var thisID = ev.target.parentElement.closest("td").getAttribute("data-product-id");
  if (basket[thisID] > 0) {
    changeQuantity(thisID, parseInt(basket[thisID] - 1));
  }
}

function cartclear(ev) {
  var thisID = ev.target.parentElement.closest("td").getAttribute("data-product-id");
  changeQuantity(thisID, 0);
}

/*
* Calculate the totals and show the basket
*/
function calculateBasket() {
  let total = 0;
  try {
    basket = JSON.parse(getCookie("basket"));
  } catch (error) {
    console.error("Error parsing JSON:", error);
  }
  let table = document.querySelector('.cartcheckoutList');

  console.log(basket);

  // Clear existing content
  table.innerHTML = '';

  // Create table header
  let headerHTML = `<thead><tr><td colspan="5" style="height: 20px;"></td></tr>
  <tr><th>Product</th><th>Quantity</th><th>Price</th><th>Subtotal</th></tr></thead>`;
  table.innerHTML = headerHTML;

  // Create table body
  let tbody = document.createElement('tbody');

  for (const productID in basket) {
    let quantity = basket[productID];
    let price = productDetails[productID].price;
    let productTotal = price * quantity;
    total = total + productTotal;

    let rowHTML = `<td >${productDetails[productID].name}</td>
      <td data-product-id="${productID}"><button class="down">-</button> ${quantity} <button class="up">+</button></td>
      <td>${(price / 100).toFixed(2)}</td>
      <td>&pound;${(productTotal / 100).toFixed(2)}</td>
      <td data-product-id="${productID}"><button class="clear">x</button></td>`;
    var thisProduct = document.createElement("tr");
    thisProduct.innerHTML = rowHTML;
    tbody.appendChild(thisProduct);
  }

  // Add the table body to the table
  table.appendChild(tbody);

  // Create and add the total row
  let totalRowHTML = `<tr><td colspan="3">Total:</td><td>&pound;${(total / 100).toFixed(2)}</td></tr>`;
  var totalRow = document.createElement("tr");
  totalRow.innerHTML = totalRowHTML;
  tbody.appendChild(totalRow);

  // Add bottom spacer row
  let bottomSpacerHTML = '<tr><td colspan="5" style="height: 20px;"></td></tr>';
  var bottomSpacerRow = document.createElement("tr");
  bottomSpacerRow.innerHTML = bottomSpacerHTML;
  tbody.appendChild(bottomSpacerRow);

  checkBasketAndDisableButton();
}

function checkBasketAndDisableButton() {
  let payButton = document.querySelector("#proceedButton");

  if (basket && Object.keys(basket).length > 0) {
    payButton.removeAttribute("disabled");
    payButton.classList.remove("grayed-out");
  } else {
    payButton.setAttribute("disabled", "true");
    payButton.classList.add("grayed-out");
  }
}

function scrollToTop() {
  window.scrollTo({
    top: 0,
    behavior: "smooth"
  });
}