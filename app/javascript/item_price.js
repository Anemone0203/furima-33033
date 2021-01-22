window.addEventListener('load', () => {

priceInput.addEventListener("input", () => {
   console.log("イベント発火");
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