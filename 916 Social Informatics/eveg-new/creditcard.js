function backToCheckout() {
  window.location.href = 'checkout.html';
}

function confirmPayment() {
    alert("Payment successful!");
    localStorage.setItem("paid", true);
    window.location.href = 'index.html';
}