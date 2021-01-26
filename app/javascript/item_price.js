window.addEventListener('load', () => {
const priceInput = document.getElementById("item-price")
console.log(priceInput);
priceInput.addEventListener("input", () => {
   const inputValue = priceInput.value;
   console.log(inputValue);

const addTaxDom = document.getElementById("add-tax-price");
  const addTaxValue=(Math.floor(inputValue * 0.1));
   addTaxDom.innerHTML = addTaxValue;

const addPriceDom = document.getElementById("profit");
   const addPriceValue=(Math.floor(inputValue - addTaxValue));
  addPriceDom.innerHTML = addPriceValue;
})
});