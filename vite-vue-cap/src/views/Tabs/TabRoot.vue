<template>
  <ion-page>
    <ion-tabs >
      <ion-router-outlet></ion-router-outlet>

      <ion-tab-bar class="custom-background" slot="bottom">
        <ion-tab-button tab="holiday" href="/holiday" style="background: url('https://t4.ftcdn.net/jpg/01/01/72/17/360_F_101721700_HE5ouiYmnmHljXfxTCYrNre4JgxXN64V.jpg');">
          <ion-icon :icon="bed" />
          <ion-label>Holidays</ion-label>
        </ion-tab-button>
        
        <ion-tab-button tab="home" href="/home" style="background: url('https://t4.ftcdn.net/jpg/01/01/72/17/360_F_101721700_HE5ouiYmnmHljXfxTCYrNre4JgxXN64V.jpg');">
          <ion-icon :icon="calendar" />
          <ion-label>Calendar</ion-label>
        </ion-tab-button>

        <ion-tab-button tab="library" href="/library" style="background: url('https://t4.ftcdn.net/jpg/01/01/72/17/360_F_101721700_HE5ouiYmnmHljXfxTCYrNre4JgxXN64V.jpg');">
          <ion-icon :icon="library" />
          <ion-label>Library</ion-label>
        </ion-tab-button>
      </ion-tab-bar>
    </ion-tabs>
  </ion-page>
</template>

<script setup lang="ts">
  import { IonPage, IonTabs, IonRouterOutlet, IonTabBar, IonTabButton, IonLabel, IonIcon } from '@ionic/vue';
  import { calendar, bed, library } from 'ionicons/icons';
  

  </script>
<style scoped>
.custom-background {
  background: url('https://t4.ftcdn.net/jpg/01/01/72/17/360_F_101721700_HE5ouiYmnmHljXfxTCYrNre4JgxXN64V.jpg');
  background-size: cover;
  background-position: center right;
  filter: brightness(0.95) sepia(30%) saturate(80%);
}
</style>