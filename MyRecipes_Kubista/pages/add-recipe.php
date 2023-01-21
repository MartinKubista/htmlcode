<!DOCTYPE html>
<html lnag="en">
<head>
    <link href="../css/add-recipe.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/fonts.css">  
    <link rel="shortcut icon" href="#">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
    <script src="https://kit.fontawesome.com/cfb876ecbd.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css"> 
    <style> 
      .fa-trash {
         color: #9f772d;
         margin-left: 10px;
         border: none;
            }  
      .fa-upload,
      .fa-plus{
         background-color: #9f772d;
         color: #fff;
      }
    </style>
</head>
<main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<?php
   require_once('../scripts/connection.php');
   require_once ('../scripts/add_recipe.php');
   include('../parts/hlava.php');

?>
    <div class="margin">
        <form action="" method="POST" enctype="multipart/form-data">
            <div class="title-1">
                <h2>Úvod</h2>
            </div>
            <div class="label-input-group">
                <label class="label-uvod" for="nazov-receptu">Názov receptu:</label>
                <p>
                <input class="input-uvod" type="text" name="nazov-receptu" id="nazov-receptu" placeholder="Sem napíšte názov receptu">
            </div>
            <div class="label-input-group">
                <label class="label-uvod" for="popis-receptu">Popis receptu:</label>
                <p>
                <textarea class="textarea-uvod" name="popis-receptu" id="popis-receptu" placeholder="Sem napíšte stručný popis receptu"></textarea>
            </div>
            <br>
            <br>
            <hr>
            <div class="title">
               <h2>Suroviny</h2>
            </div>
            <!-- <div class="label-input-group">
            <div class="listHolder">
                  <ul class="list" id="list">-->
                     <!--  <li class="li_input" id="li_input">
                     <span id="addInput1"  class="span-suroviny" ></span>
                        <button class="fa-solid fa-trash"></button>
                     </li>-->
                <!--  
               </ul >
            </div>
            <div class="formHolder">
               <div class="col big">
                  <input placeholder="Zadaj surovinu." class="input_suroviny" type="text" id="addInput">
                  <input placeholder="Zadaj množstvo." class="input_suroviny" type="text" id="addInput2">
                  <input placeholder="Zadaj jednotku." class="input_suroviny" type="text" id="addInput3">
               </div>
               <div class="col">
                  <button type="button" class="addBtn" id="addBtn" ><i class="fa-regular fa-plus"></i>Pridaj</button>
               </div>
            </div>
            </div>-->
            <div class="label-input-group">
                <p>
                <textarea class="textarea-uvod" name="suroviny" id="suroviny" placeholder="Sem zadajte suroviny a k nim množstvo"></textarea>
            </div>
            <br>
            <br>
            <hr>
                        <div class="title">
                           <h2>Postup receptu</h2>
                           Pridáva sa po vytvorení receptu 
                        </div>
                        
                        <!--
                        <div class="label-input-group">
                        <div class="listHolder1">
                              <ul class="list1" id="list1">-->
                                 <!--  <li class="li_input" id="li_input">
                                 <span id="addInput1"  class="span-suroviny" ></span>
                                    <button class="fa-solid fa-trash"></button>
                                 </li>-->
                          <!-- </ul >
                        </div>
                        <div class="formHolder1">
                              <textarea placeholder="Sem napíšte bod receptu" class="textarea-postup" id="addInput1" name="postup[]" cols="100" rows="5"></textarea>
                              <div class="col">
                                 <button type="button" class="addBtn1" id="addBtn1" ><i class="fa-regular fa-plus"></i>Pridaj</button>
                              </div>
                              <div id="images1"></div>
                              <input type="file" id="file-input" accept="image/png, image/jpg, image/jpeg" onchange="preview()" multiple>
                              <label for="file-input" class="file-input1">
                                 <i class="fa-solid fa-upload"></i>Vyber obrázky                
                           </label>
                           <small id="num-of-files">Zatiať si nevybral žiadne obrázky</small>           
                        </div>
                           <br>
                           <br>
                        </div>
            <br>-->
            <br>
            <hr>
            <div class="title">
                <h2>Kategória receptu</h2>
            </div>
            <div class="label-input-group">
                <div class="typ-jedla"></div>
                    <lable class="kategoria-subtitle">Typ jedla</label>
                            <!--<div id="polievky" onclick="">
                               <input type="checkbox" name="options[]" value="polievky" id="polievky">
                               <label for="polievky"><b>Polievky</b></label> 
                            </div>
                            <div id="cestoviny" onclick="">
                               <input type="checkbox" name="options[]" value="cestoviny" id="cestoviny">
                               <label for="cestoviny"><b>Cestoviny</b></label> 
                            </div>
                            <div id="jedla-z-hub" onclick="">
                               <input type="checkbox" name="options[]" value="jedla-z-hub" id="jedla-z-hub">
                               <label for="jedla-z-hub"><b>Jedlá z húb</b></label> 
                            </div>
                            <div id="mäsite-jedla" onclick="">
                               <input type="checkbox" name="options[]" value="mäsite-jedla" id="mäsite-jedla">
                               <label for="mäsite-jedla"><b>Mäsité jedlá</b></label> 
                            </div>
                            <div id="bezmäsite-jedla" onclick="">
                               <input type="checkbox" name="options[]" value="bezmäsite-jedla" id="bezmäsite-jedla">
                               <label for="bezmäsite-jedla"><b>Bezmäsité jedlá</b></label> 
                            </div>
                            <div id="jedla-z-ryb" onclick="">
                               <input type="checkbox" name="options[]" value="jedla-z-ryb" id="jedla-z-ryb">
                               <label for="jedla-z-ryb"><b>Jedlá z rýb</b></label> 
                            </div>
                            <div id="kolace-a-dezerty" onclick="">
                               <input type="checkbox" name="options[]" value="kolace-a-dezerty" id="kolace-a-dezerty">
                               <label for="kolace-a-dezerty"><b>Koláče a dezerty</b></label> 
                            </div>
                            <div id="torty" onclick="">
                               <input type="checkbox" name="options[]" value="torty" id="torty">
                               <label for="torty"><b>Torty</b></label> 
                            </div>
                            <div id="ovocne-jedla" onclick="">
                               <input type="checkbox" name="options[]" value="ovocne-jedla" id="ovocne-jedla">
                               <label for="ovocne-jedla"><b>Ovocné jedlá</b></label> 
                            </div>
                            <div id="zeleninove-jedla" onclick="">
                               <input type="checkbox" name="options[]" value="zeleninove-jedla" id="zeleninove-jedla">
                               <label for="zeleninove-jedla"><b>Zeleninové jedlá</b></label> 
                            </div>
                            <div id="natierky" onclick="">
                               <input type="checkbox" name="options[]" value="natierky" id="natierky">
                               <label for="natierky"><b>Nátierky</b></label> 
                            </div>
                            <div id="napoje" onclick="">
                               <input type="checkbox" name="options[]" value="napoje" id="napoje">
                               <label for="napoje"><b>Nápoje</b></label> 
                            </div>-->
                           <select name="options" id="options">
                              <option value="">Vyber typ jedla</option>
                              <option value="Polievky">Polievky</option>
                              <option value="Cestoviny">Cestoviny</option>
                              <option value="Jedlá z húb">Jedlá z húb</option>
                              <option value="Mäsité jedlá">Mäsité jedlá</option>
                              <option value="Bezmäsité jedlá">Bezmäsité jedlá</option>
                              <option value="Jedlá z rýb">Jedlá z rýb</option>
                              <option value="Koláče a dezerty">Koláče a dezerty</option>
                              <option value="Torty">Torty</option>
                              <option value="Ovocné jedlá">Ovocné jedlá</option>
                              <option value="Zeleninové jedlá">Zeleninové jedlá</option>
                              <option value="Nátierky">Nátierky</option>
                              <option value="Nápoje">Nápoje</option>
                           </select>
                            <br>


                </div>
                <br>
                <br>
                <hr>
                <div class="title">
                    <h2>Hlavná fotografia k receptu</h2>
                    
                </div>
                <div class="profile-pic-div">
               <input type="file" id="file-input1" accept="image/*" onchange="preview2()" multiple="false" name="recipes-images" value="">
               <!--<label for="file-input" class="file-input1">
                  <i class="fa-solid fa-upload"></i>Vyber obrázok               
               </label>
               </div>

               <img id="image" src="#" alt="your image" />-->

               <script>
               /*function preview2() {
                  var preview = document.getElementById('image');
                  var file = document.querySelector('input[type=file]').files[0];
                  var reader1 = new FileReader();

                  reader1.addEventListener("load", function () {
                     preview.src = reader1.result;
                  }, false);

                  if (file) {
                     reader1.readAsDataURL(file);
                  }
               }*/
               </script>
                <br>
               <br>
               <hr>
               <div class="title">
                     <h2>Podrobnosti k receptu</h2>
               </div>
               <div class="label-input-group">
                  <label class="label-uvod" for="priprava-v-minutach">Príprava v minútach:</label>
                  <p>
                  <input class="input-uvod_podrobnosti" type="text" name="priprava-v-minutach" id="priprava-v-minutach">
                  <br>
                  <small class="small">Zadaj čas celkovej prípravy v minútach (iba číslo)</small>
               </div>
               <div class="label-input-group">
                  <label class="label-uvod" for="varenie-pecenie">Varenie alebo pečenie v minútach:</label>
                  <p>
                  <input class="input-uvod_podrobnosti" type="text" name="varenie-pecenie" id="varenie-pecenie">
                  <br>
                  <small class="small">Zadaj čas tepelnej prípravy v minútach (iba číslo)</small>
               </div>
               <div class="label-input-group">
                  <label class="label-uvod" for="teplota">Teplota v °C:</label>
                  <p>
                  <input class="input-uvod_podrobnosti" type="text" name="teplota" id="teplota">
                  <br>
                  <small class="small">Zadaj teplotu v °C (iba číslo). Teplotu zadávaj len v prípade, ak sa jedlo pečie.</small>
               </div>
               <div class="label-input-group">
                  <label class="label-uvod" for="pocet-porci">Počet porcií:</label>
                  <p>
                  <input class="input-uvod_podrobnosti" type="text" name="pocet-porci" id="pocet-porci">
                  <br>
                  <small class="small">Zadaj počet porcií tohto jedla (pri použití gramáže, ktorú uvádzate v tomto recepte)</small>
               </div>
               <br>
               <hr>

            </div>

            <div class="input-fields">
            <input type="submit" value="Vytvor recept" name="vytvor_recept">
        </div>
        </form>

    </div>
</main>

<script src="../scripts/add_part_of_food.js"></script>
<script src="../scripts/postup_receptu.js"></script>
