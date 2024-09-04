"use strict"

window.onload = initPage;

const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

function initPage(){
	let form = document.getElementById('form1');
	form.noValidate = true;
	let CardNumber= form.elements['nCard'];
	CardNumber.addEventListener('keyup', function(e){
		CardNumber.value = mcc(CardNumber.value);
	});
}

function mcc(v){
  v = v.replace(/\D/g,""); // Permite apenas dígitos
  v = v.replace(/(\d{4})/g, "$1."); // Coloca um ponto a cada 4 caracteres

  return v;
}

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})