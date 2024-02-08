<style scoped>
  .example-content {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
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
      <div>
        <!-- Description Section -->
        <h2>For Read</h2>
        <ul style="list-style-type: none">

          <li><a href="http://www.sviatost.info/12_jitiya_na_svetiite/index.html" target=_blank><img width=158 height=23
                src="http://www.pravoslavieto.com/images/felles/logo_small.gif"></a>
          </li>
          <li>Resource 2</li>
          <li>Resource 3</li>
        </ul>

        <h2>Audio</h2>
        <ul style="list-style-type: none">
          <li> <a href="https://petkohinov.com/audioknigi/" target=_blank><img width=44 height=44
                src="../../assets/img/BookAudio-removebg-preview.png"
                >
                https://petkohinov.com/audioknigi</a>
          </li>
          <li><a href="https://www.pokayanie.info/video.html" target=_blank><img width=44 height=44
                src="../../assets/img/mm_health_photo.jpg"
                >
                www.pokayanie.info/video.html</a></li>
          <li>
            
            <a href="https://www.youtube.com/watch?v=ggjhp6JJF6w&list=PL826DF028E495CAEE" target=_blank><img width=44 height=44
                src="../../assets/img/BookAudioYouTub-removebg-preview.png"
                >
                Благовестие</a>
              
          </li>
          <li>
            
            <a href="https://www.youtube.com/watch?v=cPLf2Km5vt4&list=PLNtIOBWI6e04vPhMGpdWEavvFjr7SP2b1&index=20" target=_blank><img width=44 height=44
                src="../../assets/img/BookAudioYouTub-removebg-preview.png"
                >
                Изяснение на Апокалипсиса</a>  
          </li>
          <li>
            
            <a href="http://www.sviatost.info/12_jitiya_na_svetiite/index.html" target=_blank><img width=44 height=44
                src="../../assets/img/jitiya_na_svetiite_logo.jpg"
                >
                Жития на Светиите</a>  
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