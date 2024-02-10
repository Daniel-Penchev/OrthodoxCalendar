<style scoped>
  .example-content {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
  }

  /* Style book */
  * {
	box-sizing: border-box;
}

::-webkit-scrollbar {
	width: 20px;
}

::-webkit-scrollbar-track {
	background: #ae9d72;
	background-image: url("https://www.transparenttextures.com/patterns/black-paper.png");
}

::-webkit-scrollbar-thumb {
	background: #ae9d72;
}

::-webkit-scrollbar-thumb:hover {
	background: #8bba98;
}

body {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	overflow: hidden;
	background: #697854;
	margin: 0;
	padding: 0;
	font-family: "Josefin Slab", serif;
}

.content-container {
	/* display: flex; */
	flex-direction: column;
	align-items: center;
	justify-content: center;
	width: 100%;
	height: auto;
}

.content {
	position: relative;
	top: 10px;
	background: url("https://i.imgur.com/0kjMcUe.png");
	background-size: 1000px;
	background-position: center right;
	/* display: flex; */
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
}

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
}

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
	color: #35312b;
	text-shadow: 0.3px 0.3px 2px Sienna;
}

h3 {
	text-decoration: 1px dashed underline #888;
	letter-spacing: 2px;
	font-size: 20pt;
	font-weight: 300;
	font-style: italic;
	color: #35312b;
	margin-bottom: 40px;
	text-shadow: 0.6px 0.6px 1px Sienna;
}

@media screen and (max-width: 700px) {
	h3 {
		margin-bottom: 70px;
	}
}

p {
	font-size: 16pt;
	font-weight: 400;
	line-height: 28pt;
	color: #565046;
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

li{
  display: flex;
  justify-content: center;
  text-align: center;
  padding: 5%;
  margin: 5%;
  border-bottom: 2px solid #ccc;
}
</style>

<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-title>Libary Page</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content class="ion-padding">
      <div class="content-container">
        <!-- Description Section -->
        <h2>For Read</h2>
        <ul  class="content" style="list-style-type: none;height: auto;">

          <li><a href="http://www.sviatost.info/12_jitiya_na_svetiite/index.html" target=_blank><img width=158 height=23
                src="http://www.pravoslavieto.com/images/felles/logo_small.gif"></a>
          </li>
          <li>Resource 2</li>
          <li>Resource 3</li>
        </ul>

        <h2>Audio</h2>
        <ul class="content" style="list-style-type: none;height: auto;">
          <li> <a href="https://petkohinov.com/audioknigi/" target=_blank><img width=44 height=44
                src="../../assets/img/BookAudio-removebg-preview.png"
                ><p>https://petkohinov.com/audioknigi</p>
                </a>
          </li>
          <li><a href="https://www.pokayanie.info/video.html" target=_blank><img width=44 height=44
                src="../../assets/img/mm_health_photo.jpg"
                >
               <p>www.pokayanie.info/video.html</p> </a></li>
          <li>
            
            <a href="https://www.youtube.com/watch?v=ggjhp6JJF6w&list=PL826DF028E495CAEE" target=_blank><img width=44 height=44
                src="../../assets/img/BookAudioYouTub-removebg-preview.png"
                >
                <p>Благовестие</p> </a>
              
          </li>
          <li>
            
            <a href="https://www.youtube.com/watch?v=cPLf2Km5vt4&list=PLNtIOBWI6e04vPhMGpdWEavvFjr7SP2b1&index=20" target=_blank><img width=44 height=44
                src="../../assets/img/BookAudioYouTub-removebg-preview.png"
                >
                <p>Изяснение на Апокалипсиса</p> </a>  
          </li>
          <li>
            
            <a href="http://www.sviatost.info/12_jitiya_na_svetiite/index.html" target=_blank><img width=44 height=44
                src="../../assets/img/jitiya_na_svetiite_logo.jpg"
                >
                <p>Жития на Светиите</p></a>  
          </li>
          <!-- Add more resources as needed -->
        </ul>

      </div>
    </ion-content>
  </ion-page>
</template>
  
  <script setup lang="ts">
    import { IonPage, IonHeader, IonToolbar, IonTitle, IonContent } from '@ionic/vue';
  
  

  </script>