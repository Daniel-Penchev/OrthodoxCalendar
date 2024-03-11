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
      <div class="holiday-content"           style="
            background: url('https://t4.ftcdn.net/jpg/01/01/72/17/360_F_101721700_HE5ouiYmnmHljXfxTCYrNre4JgxXN64V.jpg');
            background-size: cover;
            margin: 0%;
          ">
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