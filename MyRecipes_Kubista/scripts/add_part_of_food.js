
const divList = document.querySelector('.listHolder');
const addInput = document.querySelector('#addInput');
const addInput2 = document.querySelector('#addInput2');
const addInput3 = document.querySelector('#addInput3');
const addBtn = document.querySelector('#addBtn');

src="https://code.jquery.com/jquery-3.6.0.min.js"
const array_suroviny = [];
const array_mnozstvo = [];
const array_jednotka = [];

function sendArrayToPHP(array_suroviny, array_mnozstvo, array_jednotka) {
  $.ajax({
    url: '../scripts/add-recipe-script.php',
    type: 'POST',
    data: { array_suroviny: array_suroviny, array_mnozstvo: array_mnozstvo,  array_jednotka: array_jednotka},
    success: function(response) {
      console.log(response);
    }
  });
}

const submitButton = document.getElementById('addBtn');
submitButton.addEventListener('click', () => {
  const input1 = document.getElementById('addInput');
  array_suroviny.push(input1.value);

  const input2 = document.getElementById('addInput2');
  array_mnozstvo.push(input2.value);
  
  const input3 = document.getElementById('addInput3');
  array_jednotka.push(input3.value);
});



const form = document.querySelector('form');
form.addEventListener('submit', (event) => {
  event.preventDefault();
  sendArrayToPHP(array_suroviny, array_mnozstvo, array_jednotka);
});

function addLists() {
  if (addInput.value === '') {
    alert('Zadajte surovinu, množstvo a jednotku.');
  } else {
    const ul = divList.querySelector('ul');
    const li = document.createElement('li');
    const span1 = document.createElement('span');
    const span2 = document.createElement('span');
    const span3 = document.createElement('span');
    span1.innerHTML = addInput.value;
    span1.innerHTML += " ";
    span1.innerHTML += addInput2.value;
    span1.innerHTML += " ";
    span1.innerHTML += addInput3.value;
    addInput.value = '';
    addInput2.value = '';
    addInput3.value = '';
    ul.appendChild(li);
    li.appendChild(span1);
    createBtn(li);
  }
}

// add list when clicked on add item button
addBtn.addEventListener('click', () => {
  addLists();
});

const listUl = document.querySelector('.list');
const lis = listUl.children;

function createBtn(li) {
  // create remove button
  const remove = document.createElement('button');
  remove.className = 'fa-solid fa-trash';
  li.appendChild(remove);
}


for (var i = 0; i < lis.length; i++) {
    createBtn(lis[i]);
  }
  


  divList.addEventListener('click', (event) => {
    if (event.target.tagName === 'BUTTON') {
      const button = event.target;
      const li = button.parentNode;
      const ul = li.parentNode;
      if (button.className === 'fa-solid fa-trash') {
        ul.removeChild(li);
      }
    }
});


