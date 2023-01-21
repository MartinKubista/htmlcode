
const divList = document.querySelector('.listHolder');
const addInput = document.querySelector('#addInput');
const addInput2 = document.querySelector('#addInput2');
const addInput3 = document.querySelector('#addInput3');
const addBtn = document.querySelector('#addBtn');

src="https://code.jquery.com/jquery-3.6.0.min.js"
const array_suroviny = [];
const array_mnozstvo = [];
const array_jednotka = [];
const array_postup = [];



function preview() {
  imageContainer.innerHTML = "";
  numOfFiles.textContent = `${fileInput.files.length}
  Files Selected`;

  for (i of fileInput.files) {
    let reader = new FileReader();
    let figure = document.createElement("figure");
    let figCap = document.createElement("figcaption");
    figCap.innerHTML = i.name;
    figure.appendChild(figCap);
    reader.onload = () => {
      let img = document.createElement("img");
      img.setAttribute("src", reader.result);
      figure.insertBefore(img, figCap);
    };
    imageContainer.appendChild(figure);
    reader.readAsDataURL(i);
  }
}


function sendArrayToPHP(array_suroviny, array_mnozstvo, array_jednotka, array_postup, nazov_receptu, popis_receptu, options,
   priprava_v_minutach, varenie_pecenie, teplota, pocet_porci, imagesJSON) {
  $.ajax({
    url: '../scripts/add-recipe-script.php',
    type: 'POST',
    data: { array_suroviny: array_suroviny, array_mnozstvo: array_mnozstvo,  array_jednotka: array_jednotka, 
      array_postup: array_postup, nazov_receptu: nazov_receptu, popis_receptu: popis_receptu, options: options, 
      priprava_v_minutach: priprava_v_minutach, varenie_pecenie: varenie_pecenie, teplota: teplota, pocet_porci: pocet_porci, images: imagesJSON },
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

const submitButton1 = document.getElementById('addBtn1');
submitButton1.addEventListener('click', () => {
  const input1 = document.getElementById('addInput1');
  array_postup.push(input1.value);
});




const form = document.querySelector('form');
form.addEventListener('submit', (event) => {
  event.preventDefault();
  const nazov_receptu = document.getElementById('nazov-receptu').value;
  const popis_receptu = document.getElementById('popis-receptu').value;
  const priprava_v_minutach = document.getElementById('priprava-v-minutach').value;
  const varenie_pecenie = document.getElementById('varenie-pecenie').value;
  const teplota = document.getElementById('teplota').value;
  const pocet_porci = document.getElementById('pocet-porci').value;
  let option;
  const imagesJSON = JSON.stringify(images);
  const options = [];
  const optionElements = document.querySelectorAll('input[type="checkbox"]');
  optionElements.forEach((option) => {
  if (option.checked) {
    options.push(option.value);
  }
});

  sendArrayToPHP(array_suroviny, array_mnozstvo, array_jednotka, array_postup, nazov_receptu, popis_receptu, 
    options, priprava_v_minutach, varenie_pecenie, teplota, pocet_porci, imagesJSON);

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


