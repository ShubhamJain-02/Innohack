<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz</title>
<style>
html {
    box-sizing: border-box;
}

*,
*:before,
*:after {
    box-sizing: inherit;
}

html,
body {
    overflow: hidden;
    position: relative;
    height: 100%;
}

body {
    background: #a8c0ff;
    font-family: 'Comfortaa', cursive;
    color: #fff;
    user-select: none;
    margin: 0;
    padding: 0;
    counter-reset: points;
}

a {
    text-decoration: none;
    color: inherit;
}

section {
    background: #a8c0ff;
    background: -webkit-linear-gradient(to right,#000000, #000000);
    background: linear-gradient(to right, #000000, #000000);
    padding-top: 80px;
    overflow-y: hidden;
}

main {
    background: rgba(217, 214, 228, 0.12);
    border-radius: 10px;
    padding: 5px 20px 50px;
    width: 95%;
    max-width: 500px;
    margin: 0 auto 214px;
}

.text-container {
    text-align: center;
}

.quiz-options {
    margin: 60px 0;
}

[type=radio] {
    border: 0;
    height: 0.0625rem;
    width: 0.0625rem;
    position: absolute;
}

label {
    display: flex;
    align-items: center;
    border-radius: 5px;
    background: rgba(255, 5, 5, 0.72);
    margin-bottom: 15px;
    padding: 6px 0;
    position: relative;
    width: 100%;
    color: #000;
}

label:hover .alphabet {
    background: #c02c86;
    color: #fff;
}

label .alphabet {
    border-radius: 5px;
    border: solid 1px #000;
    padding: .4rem .5rem .4rem;
    width: 2.3rem;
    margin: 0 1.3rem 0 .7rem;
    display: flex;
    justify-content: center;
    color: #000;
}

label .icon {
    height: auto;
    position: absolute;
    left: 92%;
    top: 12px;
}

label .jfdedgwfzexf4hjin {
    width: 18px;
}

label .jdsjkefkefkefefexco {
    width: 22px;
}

.jshdgdgwgdwfdfwdwjfdjwwdwdco:checked+label {
    background: rgb(76, 245, 194);
    font-weight: bold;
    text-transform: uppercase;
    -webkit-text-stroke: .6px #fff;
}

.jshdgdgwgdwfdfwdwjfdjwwdwdco:checked+label .alphabet {
    background: #000000;
    color: #FFF;
}

.jshdgdgwgdwfdfwdwjfdjwwdwdin:checked+label {
    font-weight: bold;
    text-transform: uppercase;
    -webkit-text-stroke: .6px #fff;
}

.jshdgdgwgdwfdfwdwjfdjwwdwdin:checked+label .alphabet {
    background: #000;
    color: #fff;
}

.one-a:valid+label,
.two-c:valid+label,
.three-c:valid+label,
.four-b:valid+label,
.five-a:valid+label {
    animation: flash 0.6s infinite;
}

@keyframes flash {
    0% {
        background-color: #4cf5c2;
    }

    49% {
        background-color: #4cf5c2;
    }

    50% {
        background-color: #0045FB;
    }

    99% {
        background-color: #0045FB;
    }

    100% {
        background-color: #4cf5c2;
    }
}

input:invalid+label {
    background: #fff;
}

input:invalid+label:hover {
    background: linear-gradient(to right, #d8d9da 10%, #ffffff 80%);
}

input:valid+label {
    color: #fff;
    pointer-events: none
}

#btn {
    border: 1px solid #000;
    border-radius: 50px;
    background: rgb(247, 206, 206);
    color: #000;
    display: block;
    font-size: 1.1rem;
    font-weight: 600;
    width: 57%;
    margin: 0 auto;
    outline: none;
    padding: 11px 0;
    text-align: center;
    cursor: pointer;
    -webkit-tap-highlight-color: transparent;
}

#btn:hover {
    background: rgba(255, 255, 255, 0.671);
    color: rgba(0, 0, 0, 0.749);
    border: 1px solid #000;
}

form:invalid #btn {
    pointer-events: none;
    background: rgba(248, 214, 214, 0.767);
}

.btn:hover {
    background: #000;
    color: #fff;
}

.score-counter {
    border-radius: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    width: 210px;
    height: 9%;
    background: rgba(0, 0, 0, 0.749);
    border: 4px solid #000;
    position: fixed;
    top: 5px;
    right: 10px;
    box-shadow: inset 2px -2px 9px #020202, inset -2px 2px 9px #d2d2d2;
}

.score-text {
    margin: 0 20px;
}

.score-counter::after {
    content: counter(points) "/5";
}

.one-a:checked,
.two-c:checked,
.three-c:checked,
.four-b:checked,
.five-a:checked {
    counter-increment: points;
}

#game-over {
    background: linear-gradient(rgb(28, 22, 49), rgba(18, 18, 25, 0.9)), repeating-linear-gradient(0, transparent, transparent 2px, black 3px, black 3px);
    font-family: 'Bungee', cursive;
    /* position: absolute; */
    width: 100%;
    height: 100vh;
}

.game-over-content {
    display: grid;
    justify-items: center;
    width: 80%;
    margin: 0 auto;
    padding: 120px 0;
}

#game-over h1 {
    background: url("https://res.cloudinary.com/dvhndpbun/image/upload/e_brightness:-20/v1588605696/01-01_web_designers_code_ld_img_dgytil.png");
    -webkit-background-clip: text;
    color: transparent;
    background-size: contain;
    font-size: 5rem;
    line-height: 1.2;
    margin: 0;
    position: relative;
}

h1::before {
    content: attr(data-heading);
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    background: linear-gradient(45deg, rgba(255, 255, 255, 0) 45%, rgba(255, 255, 255, 0.8) 50%, rgba(255, 255, 255, 0) 55%, rgba(255, 255, 255, 0) 100%);
    -webkit-background-clip: text;
    color: transparent;
    mix-blend-mode: screen;
    animation: shine 1s infinite;
    background-size: 200%;
    text-shadow: 2px 2px 10px rgba(#000, 0.2), -2px 2px 10px rgba(#000, 0.2), -2px -2px 10px rgba(#000, 0.2);
}

@keyframes pulse {
    0% {
        opacity: 1;
    }

    49% {
        opacity: 9;
    }

    50% {
        opacity: .8;
    }

    99% {
        opacity: .5;
    }

    100% {
        opacity: .3;
    }
}

@keyframes shine {
    0% {
        background-position: -100%;
    }

    100% {
        background-position: 100%;
    }
}

.over-text-cont {
    text-align: center;
}

.over-text-cont h2 {
    font-family: 'Sirin Stencil', cursive;
}

.over-text-cont h2::after {
    content: counter(points) "0/50";
    margin-left: 15px;
}

#refresh {
    color: #fff;
    position: relative;
    height: 100vh;
}

.refresh-content {
    display: grid;
    font-size: 1.2rem;
    place-items: center;
    width: 70%;
    line-height: 2;
    margin: 0 auto;
    text-align: center;
}

.refresh-content svg {
    width: 50px;
    height: auto;
    animation: pulse 1s infinite;
}


/* MEDIA QUERY */

@media (max-width: 420px) {
    body {
        font-size: .8rem;
    }

    main {
        width: 92%;
    }

    section {
        background: linear-gradient(to right, #3f2b96, #1f0961);
    }

    label {
        font-size: .71rem;
    }

    label .alphabet {
        margin: 0 .9rem 0 .7rem;
    }

    .jshdgdgwgdwfdfwdwjfdjwwdwdco:checked+label {
        -webkit-text-stroke: .1px #fff;
    }

    label .jdsjkefkefkefefexco {
        width: 16px;
    }

    label .jfdedgwfzexf4hjin {
        width: 14px;
    }

    #game-over h1 {
        font-size: 3rem;
    }

    .score-counter {
        width: 120px;
        height: 5%;
        font-size: .7rem;
    }

    .score-text {
        margin: 0 20px 0 0;
    }

    .over-text-cont h2 {
        margin-bottom: 40px;
    }

    .over-text-cont #btn {
        padding: 3px 0;
    }

    .refresh-content {
        width: 90%;
    }

    .refresh-content {
        display: grid;
        font-size: .8rem;
    }
}

@media (max-width: 325px) {

    label {
        font-size: .63rem;
    }

    label .alphabet {
        margin: 0 .55rem 0 .7rem;
    }

    label .jdsjkefkefkefefexco {
        width: 14px;
    }

    label .jfdedgwfzexf4hjin {
        width: 12px;
    }

}
</style>
</head>
<body>
  <!-- QUIZ ONE -->
  <section class="section-1" id="section-1">
      <main>
          <div class="text-container">
              <h3>Fire Safety Quiz</h3>
              <p>QUESTION 1 OF 5</p>
              <p>What would you do when you spot a fire?</p>
          </div>
          <form>
              <div class="quiz-options">
                  <input type="radio" class="input-radio one-a jshdgdgwgdwfdfwdwjfdjwwdwdco" id="one-a" name="yes-1" required>
                  <label class="radio-label jsjwjdwjdwjdwco" for="one-a">
                      <span class="alphabet">A</span> Run and alert authorities <img class="icon jdsjkefkefkefefexco" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588518387/jdsjkefkefkefefexco.svg" alt="">
                  </label>
                  <input type="radio" class="input-radio one-b jshdgdgwgdwfdfwdwjfdjwwdwdin" id="one-b" name="yes-1">
                  <label class="radio-label jsjwjdwjdwjdwin" for="one-b">
                      <span class="alphabet">B</span>  Ignore and leave <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
                  <input type="radio" class="input-radio one-c jshdgdgwgdwfdfwdwjfdjwwdwdin" id="one-c" name="yes-1">
                  <label class="radio-label jsjwjdwjdwjdwin" for="one-c">
                      <span class="alphabet">C</span> Try to extinguish the fire <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
              </div>
              <a id="btn" type="submit" onclick="window.location.href='#section-2'">Next</a>
          </form>
      </main>
  </section>
  <!-- QUIZ TWO -->
  <section class=" section-2" id="section-2">
      <main>
          <div class="text-container">
              <h3>Fire Safety Quiz</h3>
              <p>QUESTION 2 OF 5</p>
              <p>What would you do when you hear a fire alarm?</p>
          </div>
          <form>
              <div class="quiz-options">
                  <input type="radio" class="input-radio two-a jshdgdgwgdwfdfwdwjfdjwwdwdin" id="two-a" name="no-2" required="">
                  <label class="radio-label jsjwjdwjdwjdwin" for="two-a">
                      <span class="alphabet">A</span> Hide under a table <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
                  <input type="radio" class="input-radio two-b jshdgdgwgdwfdfwdwjfdjwwdwdin" id="two-b" name="no-2" required="">
                  <label class="radio-label jsjwjdwjdwjdwin" for="two-b">
                      <span class="alphabet">B</span> Explore what's going on <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
                  <input type="radio" class="input-radio two-c jshdgdgwgdwfdfwdwjfdjwwdwdco" id="two-c" name="no-2" required="">
                  <label class="radio-label jsjwjdwjdwjdwco" for="two-c">
                      <span class="alphabet">C</span> Leave everything behind and follow your teacher for dispersal <img class="icon jdsjkefkefkefefexco" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588518387/jdsjkefkefkefefexco.svg">
                  </label>
              </div>
              <a id="btn" type="submit" onclick="window.location.href='#section-3'">Next</a>
          </form>
      </main>
  </section>
  <!-- QUIZ THREE -->
  <section class="section-3" id="section-3">
      <main>
          <div class="text-container">
              <h3>Fire Safety Quiz</h3>
              <p>QUESTION 3 OF 5</p>
              <p>How would you exit the premises?</p>
          </div>
          <form>
              <div class="quiz-options">
                  <input type="radio" class="input-radio three-a jshdgdgwgdwfdfwdwjfdjwwdwdin" id="three-a" name="no-3" required="">
                  <label class="radio-label jsjwjdwjdwjdwin" for="three-a">
                      <span class="alphabet">A</span> Lift <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
                  <input type="radio" class="input-radio three-b jshdgdgwgdwfdfwdwjfdjwwdwdin" id="three-b" name="no-3" required="">
                  <label class="radio-label jsjwjdwjdwjdwin" for="three-b">
                      <span class="alphabet">B</span> Jump off the window <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
                  <input type="radio" class="input-radio three-c jshdgdgwgdwfdfwdwjfdjwwdwdco" id="three-c" name="no-3" required="">
                  <label class="radio-label jsjwjdwjdwjdwco" for="three-c">
                      <span class="alphabet">C</span> Stairs <img class="icon jdsjkefkefkefefexco" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588518387/jdsjkefkefkefefexco.svg">
                  </label>
              </div>
              <a id="btn" type="submit" onclick="window.location.href='#section-4'">Next</a>
          </form>
      </main>
  </section>
  <!-- QUIZ FOUR -->
  <section class="section-4" id="section-4">
      <main>
          <div class="text-container">
              <h3>Fire Safety Quiz</h3>
              <p>QUESTION 4 OF 5</p>
              <p>You are stuck in a room filled with smoke</p>
          </div>
          <form>
              <div class="quiz-options">
                  <input type="radio" class="input-radio four-a jshdgdgwgdwfdfwdwjfdjwwdwdin" id="four-a" name="no-4" required="">
                  <label class="radio-label jsjwjdwjdwjdwin" for="four-a">
                      <span class="alphabet">A</span>Cry and shout  <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
                  <input type="radio" class="input-radio four-b jshdgdgwgdwfdfwdwjfdjwwdwdco" id="four-b" name="no-4" required="">
                  <label class="radio-label jsjwjdwjdwjdwco" for="four-b">
                      <span class="alphabet">B</span> Cover your nose and mouth <img class="icon jdsjkefkefkefefexco" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588518387/jdsjkefkefkefefexco.svg">
                  </label>
                  <input type="radio" class="input-radio four-c jshdgdgwgdwfdfwdwjfdjwwdwdin" id="four-c" name="no-4" required="">
                  <label class="radio-label jsjwjdwjdwjdwin" for="four-c">
                      <span class="alphabet">C</span> Try to escape <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
              </div>
              <a id="btn" type="submit" onclick="window.location.href='#section-5'">Next</a>
          </form>
      </main>
  </section>
  <!-- QUIZ FIVE -->
  <section class="section-5" id="section-5">
      <main>
          <div class="text-container">
              <h3>Fire Safety Quiz</h3>
              <p>QUESTION 5 OF 5</p>
              <p>You get caught on fire?</p>
          </div>
          <form>
              <div class="quiz-options">
                  <input type="radio" class="input-radio five-a jshdgdgwgdwfdfwdwjfdjwwdwdco" id="five-a" name="yes-5" required>
                  <label class="radio-label jsjwjdwjdwjdwco" for="five-a">
                      <span class="alphabet">A</span>Stop, drop and roll <img class="icon jdsjkefkefkefefexco" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588518387/jdsjkefkefkefefexco.svg">
                  </label>
                  <input type="radio" class="input-radio five-b jshdgdgwgdwfdfwdwjfdjwwdwdin" id="five-b" name="yes-5">
                  <label class="radio-label jsjwjdwjdwjdwin" for="five-b">
                      <span class="alphabet">B</span> Run aimlessly <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
                  <input type="radio" class="input-radio five-c jshdgdgwgdwfdfwdwjfdjwwdwdin" id="five-c" name="yes-5">
                  <label class="radio-label jsjwjdwjdwjdwin" for="five-c">
                      <span class="alphabet">C</span> Use fire extinguisher <img class="icon jfdedgwfzexf4hjin" src="https://res.cloudinary.com/dvhndpbun/image/upload/v1588517753/jfdedgwfzexf4hjin.svg">
                  </label>
              </div>
              <a id="btn" type="submit" onclick="window.location.href='#game-over'">Next</a>
          </form>
      </main>
      <!-- SCORE COUNTER -->
  </section>
  <div class="score-counter">
      <p class="score-text">CORRECT:</p>
  </div>
  <!-- GAME OVER PAGE -->
  <section id="game-over">
      <div class="game-over-content">
          <div class="over-text-cont">
              <h1 data-heading="Game Over">Game Over</h1>
              <h2>Total Score:</h2>
              <a id="btn" type="submit" onclick="window.location.href='#refresh'">Play Again</a>
          </div>
      </div>
  </section>
  <!-- REFRESH PAGE SECTION -->
  <section id="refresh">
      <div class="refresh-content">
          <svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 341.12 341.33">
              <defs>
                  <style>
                      .cls-1 {
                          fill: #fff;
                      }
                  </style>
              </defs>
              <title>multimedia2</title>
              <path class="cls-1" d="M341.23,149.33V0L291.09,50.13A169.56,169.56,0,0,0,170.56,0C76.27,0,.11,76.37.11,170.67S76.27,341.33,170.56,341.33c79.47,0,146-54.4,164.91-128H291.09A127.94,127.94,0,1,1,170.56,42.67c35.31,0,67,14.72,90.13,37.86l-68.8,68.8Z" transform="translate(-0.11)" />
          </svg>
          <h2>Refresh/Reload this page to continue</h2>
      </div>
  </section>
</body>
</html>
