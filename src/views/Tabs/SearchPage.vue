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
        <ion-title>Search Page</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content>
      <!-- <ion-searchbar v-model="searchData" @ionChange="searchHolidays"></ion-searchbar>
        <div class="example-content">
          <div v-for="holiday in holidays" :key="holiday.day">
            <h2>{{ holiday.name }}</h2>
           Display other holiday information as needed 
          </div>
        </div> -->
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import { IonPage, IonHeader, IonToolbar, IonTitle, IonContent } from '@ionic/vue';

// interface Holiday {
//   year: {
//     months: {
//       name: string;
//       days: {
//         day: number;
//         nameDay: string[];
//         church_holidays?: {
//           name: string;
//           image: string;
//           text: string;
//           href: string;
//           audio: string;
//         }[];
//       }[];
//     }[];
//   };
// }

// const searchData = ref('');
// const holidays = ref<Holiday[]>([]);

// const searchHolidays = () => {
//   const searchTerm = searchData.value.toLowerCase();
//   holidays.value = churchHolidaysData.year.months[0].days.filter(day => {
//     const dayName = day.nameDay?.[0]?.toLowerCase() || ''; // Update this line to match the actual structure
//     return dayName.includes(searchTerm);
//   });
// };

// // Fetch data on component mount
// onMounted(() => {
//   holidays.value = churchHolidaysData.year.months[0].days;
// });
</script>