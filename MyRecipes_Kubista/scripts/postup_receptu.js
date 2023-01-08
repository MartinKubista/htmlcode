let fileInput = document.getElementById("file-input");
let imageContainer = document.getElementById("images1");
let numOfFiles = document.getElementById("num-of-files");

let images = [];

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
      images.push(img);
    };
    imageContainer.appendChild(figure);
    reader.readAsDataURL(i);
  }
}


const divList1 = document.querySelector('.listHolder1');
const addInput1 = document.querySelector('#addInput1');
const addBtn1 = document.querySelector('#addBtn1');

function addLists1() {
  if (addInput1.value === '') {
    alert('Zadajte bod receptu.');
  } else {
    const ul = divList1.querySelector('ul');
    const li = document.createElement('li');
    const textarea = document.createElement('span');
    textarea.innerHTML = addInput1.value;
    addInput1.value = '';
    ul.appendChild(li);
    li.appendChild(textarea);
    createBtn1(li);
  }
}

// add list when clicked on add item button
addBtn1.addEventListener('click', () => {
  addLists1();
});

const listUl1 = document.querySelector('.list1');
const lis1 = listUl1.children;

function createBtn1(li) {
  // create remove button
  const remove1 = document.createElement('button');
  remove1.className = 'fa-solid fa-trash';
  li.appendChild(remove1);
}


for (var i = 0; i < lis1.length; i++) {
    createBtn1(lis1[i]);
  }
  


divList1.addEventListener('click', (event) => {
if (event.target.tagName === 'BUTTON') {
    const button = event.target;
    const li = button.parentNode;
    const ul = li.parentNode;
    if (button.className === 'fa-solid fa-trash') {
    ul.removeChild(li);
    }
}
});

