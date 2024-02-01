<!-- Home.vue -->
<template>
  <ion-page>
    <!-- Header -->
    <ion-header>
      <ion-toolbar>
  
        
        <div class="header-content">
          
        <IonTitle class="header-title">Calendar</IonTitle>

          <ion-buttons slot="end" @click="toggleDatePicker">
            <ion-button><ion-icon class="icons-style" :icon="calendarOutline"></ion-icon></ion-button>
          </ion-buttons>

          <ion-buttons slot="end">
            <ion-button id="popover-button"><ion-icon class="icons-style" :icon="ellipsisVertical"></ion-icon></ion-button>
 
          </ion-buttons>
        
          <ion-popover trigger="popover-button" :dismiss-on-select="true">
          <ion-content>
            <ion-list>
              <ion-item :button="true" :detail="false">Rating</ion-item>
              <ion-item :button="true" :detail="false">Write me</ion-item>
              <ion-item :button="true" :detail="false">About</ion-item>
            </ion-list>
          </ion-content>
        </ion-popover>
        </div>

      </ion-toolbar>
    </ion-header>

    <!-- Body -->
    <ion-content class="ion-padding">
      <div class="calendar-content">
        <div pager="true" style="width: 100%">
          <!-- Slide 1 -->
          <div style="width: 100%">
            <CalendarComponent :showDatePicker="showDatePicker" @update:selectedDate="updateSelectedDate"></CalendarComponent>
        
            <CardHolidays :selectedDate="selectedDate"></CardHolidays>
          </div>
        </div>
      </div>
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import CalendarComponent from '../../components/CalendarComponent.vue';
import CardHolidays from '../../components/Cards/CardHolidays.vue';
import { IonPage, IonContent, IonHeader, IonToolbar, IonButton, IonButtons, IonIcon, IonTitle,IonPopover,IonList,IonItem } from '@ionic/vue';
import { calendarOutline, ellipsisVertical } from 'ionicons/icons';
import { ref } from 'vue';

// import { Swiper, SwiperSlide } from 'swiper/vue';
// import 'swiper/css';
// import '@ionic/vue/css/ionic-swiper.css';

const selectedDate = ref(null);
const showDatePicker = ref(true);

const toggleDatePicker = () => {
  showDatePicker.value = !showDatePicker.value;
  
};

const updateSelectedDate = (newDate: any) => {
  // Тук можете да направите нещо с новата стойност на selectedDate
  console.log('Selected Date in Home.vue:', newDate);
  selectedDate.value = newDate
};


</script>

<style scoped>
.calendar-content {
  display: inline-flex;
    align-items: center;
    justify-content: space-between ;
    /* height: auto; */
    flex-direction: column;
    width: 100%;
}

.header-content {
  display: flex;
  align-items: center;
  justify-content: end;
  gap: 2%;
}

.icons-style {
  width: 30px;
  height: 30px;
}

.header-title {
  text-align: start;
  font-size: 150%;
  margin-left: 4%;
  padding-left: inherit;
  font-weight: bold;
}

</style>