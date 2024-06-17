let basket = {};
let productDetails = {};
let creditCardShown = false;

document.addEventListener('DOMContentLoaded', function () {
  const inputFields = document.querySelectorAll('.customerDetails input');
  inputFields.forEach(function (input) {
    input.setAttribute('data-default-value', input.value);
  });
});

document.addEventListener('DOMContentLoaded', function () {
  loadInputValues();
});

/*
* When the page is loaded, initialise the products and reset the listeners
*/
function init() {
  //initProducts takes a callback function - when the products are loaded the basket will be recalculated
  initProducts(calculateBasket);
  resetListeners();
}

//When changing the page, you should make sure that each adjust button has exactly one click event
//(otherwise it might trigger multiple times)
function resetListeners() {
  document.body.removeEventListener("click", handleButtonClick);
  document.body.addEventListener("click", handleButtonClick);

  //document.getElementById("paycreditcard").removeEventListener("click", showCreditCardPage);
  //document.getElementById("paycreditcard").addEventListener('click', showCreditCardPage);
}

function handleButtonClick(event) {
  if (event.target.classList.contains("adjustUp")) {
    increment(event);
  }

  if (event.target.classList.contains("adjustDown")) {
    decrement(event);
  }

  if (event.target.classList.contains("clear")) {
    clear(event);
  }
  calculateBasket();
}

function increment(ev) {
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

function decrement(ev) {
  var thisID = ev.target.parentElement.closest("td").getAttribute("data-product-id");
  if (basket[thisID] > 0) {
    changeQuantity(thisID, parseInt(basket[thisID] - 1));
  }
}

function clear(ev) {
  var thisID = ev.target.parentElement.closest("td").getAttribute("data-product-id");
  changeQuantity(thisID, 0);
}

function changeQuantity(productID, newQuantity) {
  basket[productID] = newQuantity;
  if (newQuantity == 0)
    delete basket[productID];
  refreshBasket();
}

function clearBucket() {
  for (const productID in basket) {
    changeQuantity(productID, 0);
  }
}

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

function checkoutHandler(event) {
  let totalCount = 0;
  for (const quantity of Object.values(basket)) {
    totalCount += parseInt(quantity, 10);
  }
  if (totalCount <= 0) {
    event.preventDefault();
    alert('You cannot checkout with an empty basket.');
  }
}

//When the pay by credit card link is clicked, show the creditcard.html in an iframe
function showCreditCardPage() {
  if (!creditCardShown) {
    var payIFrame = document.createElement("iframe");
    payIFrame.src = "creditcard.html";
    payIFrame.width = "50%";

    document.querySelector('#customerDetails').appendChild(payIFrame);
  }
}


/*
* Calculate the totals and show the basket
*/
function calculateBasket() {
  let total = 0;
  basket = JSON.parse(getCookie("basket"));
  let table = document.querySelector('.checkoutList');

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
      <td data-product-id="${productID}"><button class="adjustDown">-</button> ${quantity} <button class="adjustUp">+</button></td>
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

  checkBasketAndDisableButton()
}

window.addEventListener("load", function () {
  init();
  resetListeners();
  checkBasketAndDisableButton();
});

function checkBasketAndDisableButton() {
  let payButton = document.querySelector("#payByCreditCardButton");

  if (basket && Object.keys(basket).length > 0) {
    payButton.removeAttribute("disabled");
    payButton.classList.remove("grayed-out");
  } else {
    payButton.setAttribute("disabled", "true");
    payButton.classList.add("grayed-out");
  }
}

function handleFocus(input) {
  if (input.classList.contains('default-value')) {
    input.value = '';
  }
  input.classList.remove('default-value');
  input.classList.add('user-input');
}

function handleBlur(input) {
  if (input.value.trim() === '') {
    input.value = input.getAttribute('data-default-value');
    input.classList.remove('user-input');
    input.classList.add('default-value');
  }
  else {
    saveInputValue(input)
  }
}

function saveInputValue(input) {
  localStorage.setItem(input.name, input.value);
}

function loadInputValues() {
  const inputFields = document.querySelectorAll('.customerDetails input');
  inputFields.forEach(function (input) {
    const storedValue = localStorage.getItem(input.name);
    if (storedValue !== null) {
      input.value = storedValue;
      input.classList.remove('default-value');
      input.classList.add('user-input');
    }
  });
}

function validateForm() {
  const inputFields = document.querySelectorAll('.customerDetails input');
  let isFormValid = true;

  inputFields.forEach(function (input) {
    if (input.value.trim() === input.getAttribute('data-default-value')) {
      isFormValid = false;
    }
  });

  if (!isFormValid) {
    alert('Please fill in all fields.');
    return false;
  }

  const emailInput = document.querySelector('input[name="emailAddress"]');
  const emailValue = emailInput.value.trim();
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

  if (!emailRegex.test(emailValue)) {
    alert('Invalid email format.');
    isFormValid = false;
    return false;
  }

  const contactNumberInput = document.querySelector('input[name="contactNumber"]');
  const contactNumberValue = contactNumberInput.value.trim();
  const contactNumberRegex = /^\d{4,}$/;

  if (!contactNumberRegex.test(contactNumberValue)) {
    alert('Invalid contact number format.');
    isFormValid = false;
  }

  return isFormValid;
}

function submitForm() {
  if (validateForm()) {
    document.querySelector('.customerDetails').submit();
  }
}