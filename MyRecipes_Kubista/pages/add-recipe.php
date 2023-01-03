<!DOCTYPE html>
<html lnag="en">
<head>
    <link href="../css/add-recipe.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/fonts.css">  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
    <script src="https://kit.fontawesome.com/cfb876ecbd.js" crossorigin="anonymous"></script>
    <style> 
      .fa-trash {
         color: #9f772d;
         margin-left: 10px;
         border: none;
            }  
      .fa-upload{
         background-color: #9f772d;
         color: #fff;
      }
    </style>
</head>
<main>
<?php
require_once('../scripts/connection.php');
include('../parts/hlava.php');
?>
    <div class="margin">
        <form action="../scripts/add_recipe.php" method="post">
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
            <div class="label-input-group">
            <div class="listHolder">
                  <ul class="list" id="list">
                     <!--  <li class="li_input" id="li_input">
                     <span id="addInput1"  class="span-suroviny" ></span>
                        <button class="fa-solid fa-trash"></button>
                     </li>-->
               </ul >
            </div>
            <div class="formHolder">
               <div class="col big">
                  <input class="input_suroviny" type="text" id="addInput">
               </div>
               <div class="col">
                  <button type="button" class="addBtn" id="addBtn" >Pridaj</button>
               </div>
               <script src="../scripts/add_part_of_food.js"></script>
            </div>
            <div class="suroviny_small">
               <small class="small">Zadajte surovinu, množstvo a jednotku.</small>
            </div>
            </div>
            <br>
            <br>
            <hr>
            <div class="title">
               <h2>Postup receptu</h2>
            </div>
            <div class="label-input-group">
            <div class="formHolder1">
               <div class="col1 big1">
                  <textarea placeholder="Sem napíšte postup receptu" class="textarea-postup" id="addInput1" name="postup[]" cols="100" rows="5"></textarea>
                  <div id="images"></div>
                  <input type="file" id="file-input" accept="image/png, image/jpg, image/jpeg" onchange="preview()" multiple>
                  <label for="file-input" class="file-input1">
                     <i class="fa-solid fa-upload"></i>Vyber obrázky                
                 </label>
                 <small id="num-of-files">Zatiať si nevybral žiadne obrázky</small>
               </div>
               
            </div>
               <br>
               <br>
            </div>
            <br>
            <br>
            <hr>
            <div class="title">
                <h2>Kategórie receptu</h2>
            </div>
            <div class="label-input-group">
                <div class="typ-jedla"></div>
                    <lable class="kategoria-subtitle">Typ jedla</label>
                            <div id="cestoviny" onclick="">
                               <input type="checkbox" name="tag[]" value="cestoviny" id="cestoviny">
                               <label for="cestoviny"><b>Cestoviny</b></label> 
                            </div>
                            <div id="jedla-z-hub" onclick="">
                               <input type="checkbox" name="tag[]" value="jedla-z-hub" id="jedla-z-hub">
                               <label for="jedla-z-hub"><b>Jedlá z húb</b></label> 
                            </div>
                            <div id="mucne-jedla" onclick="">
                               <input type="checkbox" name="tag[]" value="mucne-jedla" id="mucne-jedla">
                               <label for="mucne-jedla"><b>Múčne-jedlá</b></label> 
                            </div>
                            <div id="ovocne-jedla" onclick="">
                               <input type="checkbox" name="tag[]" value="ovocne-jedla" id="ovocne-jedla">
                               <label for="ovocne-jedla"><b>Ovocné-jedlá</b></label> 
                            </div>
                            <div id="pizza" onclick="">
                               <input type="checkbox" name="tag[]" value="pizza" id="pizza">
                               <label for="pizza"><b>Pizza</b></label> 
                            </div>
                            <div id="zeleninove-jedla" onclick="">
                               <input type="checkbox" name="tag[]" value="zeleninove-jedla" id="zeleninove-jedla">
                               <label for="zeleninove-jedla"><b>Zeleninové-jedlá</b></label> 
                            </div>
                            <div id="strukoviny" onclick="">
                               <input type="checkbox" name="tag[]" value="strukoviny" id="strukoviny">
                               <label for="strukoviny"><b>Strukoviny</b></label> 
                            </div>
                            <br>


                        <lable class="chlieb-a-pecivo">Aký je to chod?</label>
                            <div id="cestoviny" onclick="">
                               <input type="checkbox" name="tag[]" value="chlieb-a-pecivo" id="chlieb-a-pecivo">
                               <label for="chlieb-a-pecivo"><b>Chlieb a pečivo</b></label> 
                            </div>
                            <div id="desiata" onclick="">
                               <input type="checkbox" name="tag[]" value="desiata" id="desiata">
                               <label for="desiata"><b>Desiata</b></label> 
                            </div>
                            <div id="dezert" onclick="">
                               <input type="checkbox" name="tag[]" value="dezert" id="dezert">
                               <label for="dezert"><b>Dezert</b></label> 
                            </div>
                            <div id="hlavne-jedla" onclick="">
                               <input type="checkbox" name="tag[]" value="hlavne-jedla" id="hlavne-jedla">
                               <label for="hlavne-jedla"><b>Hlavné jedlá</b></label> 
                            </div>
                            <div id="natierky" onclick="">
                               <input type="checkbox" name="tag[]" value="natierky" id="natierky">
                               <label for="natierky"><b>Nátierky</b></label> 
                            </div>
                            <div id="polievky" onclick="">
                               <input type="checkbox" name="tag[]" value="zpolievky" id="polievky">
                               <label for="polievky"><b>Polievky</b></label> 
                            </div>
                            <div id="predjedla" onclick="">
                               <input type="checkbox" name="tag[]" value="predjedla" id="predjedla">
                               <label for="predjedla"><b>Predjedlá</b></label> 
                            </div>
                            <div id="ranajky" onclick="">
                               <input type="checkbox" name="tag[]" value="ranajky" id="ranajky">
                               <label for="ranajky"><b>Raňajky</b></label> 
                            </div>
                            <div id="salaty" onclick="">
                               <input type="checkbox" name="tag[]" value="salaty" id="salaty">
                               <label for="salaty"><b>Šaláty</b></label> 
                            </div>
                            <div id="slane-jedla" onclick="">
                               <input type="checkbox" name="tag[]" value="slane-jedla" id="slane-jedla">
                               <label for="slane-jedla"><b>Slané jedlá</b></label> 
                            </div>
                            <br>

                        <lable class="chlieb-a-pecivo">Obsahuje mäso?</label>
                            <div id="bezmäsite-jedla" onclick="">
                               <input type="checkbox" name="tag[]" value="bezmäsite-jedla" id="bezmäsite-jedla">
                               <label for="bezmäsite-jedla"><b>Bezmäsité jedlá</b></label> 
                            </div>
                            <div id="bravcove-mäso" onclick="">
                               <input type="checkbox" name="tag[]" value="bravcove-mäso" id="bravcove-mäso">
                               <label for="bravcove-mäso"><b>Bravčové mäso</b></label> 
                            </div>
                            <div id="hovädzie-mäso" onclick="">
                               <input type="checkbox" name="tag[]" value="hovädzie-mäso" id="hovädzie-mäso">
                               <label for="hovädzie-mäso"><b>Hovädzie mäso</b></label> 
                            </div>
                            <div id="kuracie-mäso" onclick="">
                               <input type="checkbox" name="tag[]" value="kuracie-mäso" id="kuracie-mäso">
                               <label for="kuracie-mäso"><b>Kuracie-mäso</b></label> 
                            </div>
                            <div id="ryby" onclick="">
                               <input type="checkbox" name="tag[]" value="ryby" id="ryby">
                               <label for="ryby"><b>Ryby</b></label> 
                            </div>
                </div>
                <br>
                <br>
                <hr>
                <div class="title">
                    <h2>Hlavná fotografia k receptu</h2>
                    
                </div>
                <div class="profile-pic-div">
                <div id="images"></div>
                  <input type="file" id="file-input1" accept="image/png, image/jpg">
                  <label for="file-input" class="file-input1">
                     <i class="fa-solid fa-upload"></i>Vyber obrázok               
                 </label>
                  <script src="../scripts/add_image.js"></script>
                </div>   
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
                  <small class="small">Zadaj počet porcií tohto jedla (pri použití gramáže, ktorú uvádzaš v tomto recepte)</small>
               </div>
               <br>
               <hr>

            </div>

            <div class="input-fields">
            <input type="submit" value="Vytvor recept">
        </div>
        </form>

    </div>
</main>
<script src="../scripts/postup_receptu.js"></script>
