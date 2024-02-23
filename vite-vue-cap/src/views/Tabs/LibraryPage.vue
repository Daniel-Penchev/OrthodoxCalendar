<style scoped>
.example-content {
  display: flex;
  align-items: center;
  justify-content: center;
  height: auto;
}

/* Style book */

.content-container {
  /* display: flex; */
  background: url('../../assets/img/libarary/wood-grain-texture-wooden-flooring.jpg');
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 109%;
  height: auto;
  /* background: url('../../assets/img/natural_oak _wood.webp'); */
  margin: -5%;
  padding: 3%;
}

/* .content {
  position: relative;
	top: 10px;
	 background: url("https://i.imgur.com/0kjMcUe.png");
	background-size: 1000px;
	background-position: center right;
	 display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: flex-start;
	width: 50%;
	height: auto;
	padding: 30px 80px 50px 80px;
	z-index: 1;
	filter: brightness(0.95) sepia(30%) saturate(80%);
	border-radius: 30px;
	height: 90vh;
	clip-path: polygon(
		0% 0%,
		0% 93%,
		5% 98%,
		6% 99%,
		8% 95%,
		12% 94%,
		15% 97%,
		17% 93%,
		20% 98%,
		22% 97%,
		25% 99%,
		31% 94%,
		35% 93%,
		39% 96%,
		43% 93%,
		45% 94%,
		47% 95%,
		50% 92%,
		52% 96%,
		54% 93%,
		58% 92%,
		60% 95%,
		62% 93%,
		65% 96%,
		69% 93%,
		72% 93%,
		75% 94%,
		79% 97%,
		81% 94%,
		85% 93%,
		88% 92%,
		90% 95%,
		93% 93%,
		95% 92%,
		97% 95%,
		100% 97%,
		100% 0%
	);
	overflow: auto;
} */

/* 
@media screen and (max-width: 1650px) {
	.content {
		width: 60%;
	}
}

@media screen and (max-width: 1500px) {
	.content {
		width: 70%;
	}
}

@media screen and (max-width: 868px) {
	.content {
		padding: 30px 60px 50px 60px;
		width: 75%;
	}
}

@media screen and (max-width: 560px) {
	.content {
		padding: 30px 30px 50px 30px;
		width: 100%;
	}
} */

h1 {
  font-family: "Yellowtail", cursive;
  font-size: 80pt;
  margin: 0;
  font-weight: 1;
  color: #26231e;
  mix-blend-mode: color-burn;
}

@media screen and (max-width: 1071px) {
  h1 {
    font-size: 60pt;
  }
}

@media screen and (max-width: 756px) {
  h1 {
    font-size: 46pt;
    line-height: 46pt;
    padding: 20px 0px;
  }
}

@media screen and (max-width: 370px) {
  h1 {
    font-size: 40pt;
  }
}

hr {
  width: 80%;
  opacity: 0.7;
  margin-top: 20px;
  margin-bottom: -60px;
  border-radius: 50px;
  padding: 40px;
}

h2 {
  font-size: 30pt;
  font-weight: 300;
  color: #f7e9cc;
  text-shadow: 0.3px 0.3px 2px Sienna;
}

h3 {
  font-size: 20pt;
  font-weight: bold;
  color: #35312b;
  margin-bottom: 40px;
}

@media screen and (max-width: 700px) {
  h3 {
    margin-bottom: 30px;
  }
}

p {
  font-size: 16pt;
  font-weight: 400;
  line-height: 28pt;
  color: #5878af;
  letter-spacing: 0.5px;
  word-spacing: 3px;
  text-shadow: 0.2px 0.2px 1.3px Sienna;
}

p:first-of-type {
  align-self: flex-start;
  font-weight: 600;
  position: relative;
}

p span {
  font-family: "Sassy Frass", cursive;
  font-size: 600%;
  font-weight: 1;
  opacity: 0.8;
}

@media screen and (max-width: 600px) {
  p {
    font-size: 14pt;
  }
}

li {
  /* Use url() for background-image */
  background: url("../../assets/img/libarary/vintage-paper-texture-thumb21.png");
  background-size: cover;
  display: flex;
  justify-content: center;
  text-align: center;
  padding: 5%;
  margin: 5%;
  /* border-bottom: 2px solid #ccc; */
}
a {
    background-color: transparent;
    text-decoration: none;
    margin-top: 9%;
}
.book {
  position: relative;
  height: 30px;
  border-radius: 10px;
  background: #fffff0;
}
.book3 {
  width: 140px;
  border: 5px solid #493000;
  /* margin-left: 53vw; */
  border-left-style: none;
  z-index: 8;
}
.ribbon {
  position: absolute;
  height: 25px;
  width: 20px;
}
.ribbon3 {
  background: #ff785b;
  position: absolute;
  margin: 10px 0 0 100px;
}
.bookCut3 {
  width: 5px;
  height: 30px;
}
</style>

<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <div
          style="
            display: flex;
            background: url('https://t4.ftcdn.net/jpg/01/01/72/17/360_F_101721700_HE5ouiYmnmHljXfxTCYrNre4JgxXN64V.jpg');
            background-size: cover;
            padding-top: 3%;
            padding-bottom: 2%;
          "
        >
          <ion-title
            style="font-size: xx-large; font-weight: bold;"
            >Libary Page</ion-title
          >
          
        </div>
      </ion-toolbar>
    </ion-header>
    <ion-content class="ion-padding">
      <div class="content-container">
        <!-- Description Section -->
        <h2>For Read</h2>

        <ul class="content" style="list-style-type: none; height: auto;">
          <li >
            <a href="http://www.pravoslavieto.com/index.htm" target="_blank"
              ><img
                width="158"
                height="23"
                src="http://www.pravoslavieto.com/images/felles/logo_small.gif"
                alt="Българският ПРАВОСЛАВЕН каталог в Интернет - Pravoslavieto.com"
                border="0"
            /></a>
          </li>
          <li> 
            <a href=" https://hramsvetigeorgi.eu/bg/%D0%BF%D1%80%D0%BE%D0%BF%D0%BE%D0%B2%D0%B5%D0%B4%D0%B8?limitstart=0" target="_blank"
              ><img
                width="260"
                height="70"
                src="../../assets/img/libarary/hramsvetigeorgi.png"
                
                border="0"
            /></a></li>
          <li> 
            <a href="https://pravoslavenhram.com/%D0%B1%D0%B8%D0%B1%D0%BB%D0%B8%D0%BE%D1%82%D0%B5%D0%BA%D0%B0_29" target="_blank"
              ><img
                width="260"
                height="70"
                src="../../assets/img/libarary/pravoslavenhramtitle.png"
                
                border="0"
            /></a>
          </li>
        </ul>
       
        <h2>Audio Books</h2>
        <ul class="content" style="list-style-type: none; height: auto">

          <li>
            <a href="https://petkohinov.com/audioknigi/" target="_blank"
              ><img
                width="44"
                height="44"
                src="../../assets/img/libarary/BookAudio-removebg-preview.png"
              />
              <p>Petkohinov Audioknigi</p>
            </a>
          </li>
          <li>
            <a
              href="https://www.youtube.com/watch?v=ggjhp6JJF6w&list=PL826DF028E495CAEE"
              target="_blank"
              ><img
                width="44"
                height="44"
                src="../../assets/img/libarary/BookAudioYouTub-removebg-preview.png"
              />
              <p>Благовестие</p>
            </a>
          </li>
          <li>
            <a
              href="https://www.youtube.com/watch?v=cPLf2Km5vt4&list=PLNtIOBWI6e04vPhMGpdWEavvFjr7SP2b1&index=20"
              target="_blank"
              ><img
                width="44"
                height="44"
                src="../../assets/img/libarary/BookAudioYouTub-removebg-preview.png"
              />
              <p>Изяснение на Апокалипсиса</p>
            </a>
          </li>
          <li>
            <a
              href="https://www.youtube.com/@orthodox_books/videos"
              target="_blank"
              ><img
                width="44"
                height="44"
                src="../../assets/img/libarary/orthodox_booksvideo.png"
              />
              <p>Orthodox Books Video</p>
            </a>
          </li>
          <li>
            <a
              href="https://www.youtube.com/watch?v=wcBLKH-DMkU&list=PLOC5p7JyZ_0KD6X2tS_6c482iyGFmugAx"
              target="_blank"
              ><img
                width="88"
                height="88"
                src="../../assets/img/libarary/miter.AthanasiusofLimassol.png"
              />
              <p>miter. Athanasius of Limassol</p>
            </a>
          </li>
          <li>
            <a href="https://www.pokayanie.info/video.html" target="_blank"
              ><img
                width="44"
                height="44"
                src="../../assets/img/libarary/pokayanie.png"
              />
              <p>Pokayanie</p>
            </a>
          </li>
          <li>
            <a
              href="http://www.sviatost.info/12_jitiya_na_svetiite/index.html"
              target="_blank"
              ><img
                width="44"
                height="44"
                src="../../assets/img/libarary/jitiya_na_svetiite_logo.jpg"
              />
              <p>Жития на Светиите</p></a
            >
          </li>
          <!-- Add more resources as needed -->
        </ul>
      </div>
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import {
  IonPage,
  IonHeader,
  IonToolbar,
  IonTitle,
  IonContent,
} from "@ionic/vue";
</script>
