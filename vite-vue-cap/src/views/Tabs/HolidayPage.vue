<style scoped>
  .holiday-content {
    display: grid;
    align-items: center;
    justify-content: center;
    margin-right: 5%;
    margin-left: 5%;
    margin-top: 5%;
  }
</style>

<template>
  <ion-page>
    <!-- <ion-header>
      <ion-toolbar >
        <ion-title>Holidays</ion-title>
        <HolidayLayout ></HolidayLayout>
      </ion-toolbar>
    </ion-header> -->
    <ion-content>
      <div class="holiday-content">
        <HolidayComponent></HolidayComponent>
        <CardCalcHolidays></CardCalcHolidays>
        <!-- <CalendarDisplay></CalendarDisplay> -->
      </div>
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
//  import HolidayLayout from '../../components/Layouts/HolidayLayout.vue';
//  import CalendarPost from '../../components/CalendarPost.vue';
 import CardCalcHolidays from '../../components/Cards/CardCalcHolidays.vue';
 import HolidayComponent from '../../components/Cards/HolidayComponent.vue';
//  import CalendarDisplay from '../../components/CalendarDisplay.vue';
 
 import { IonPage, IonContent } from '@ionic/vue';

</script>