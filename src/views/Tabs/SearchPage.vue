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
      <ion-searchbar v-model="searchData" @ionChange="searchHolidays"></ion-searchbar>
      <div class="example-content">
        <div v-for="holiday in filteredHolidays" :key="holiday.toString">
          <h2>{{ holiday }}</h2>
          <!-- Display other holiday information as needed -->
        </div>
      </div>
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import { IonPage, IonHeader, IonToolbar, IonTitle, IonContent, IonSearchbar } from '@ionic/vue';
import { ref, onMounted} from 'vue';

interface ChurchHoliday {
  day: number;
  name_days: string[];
  church_holidays?: {
    name: string;
    image: string;
    text: string;
    href: string;
    audio: string;
  }[];
}

const searchData = ref('');
const holidays = ref<ChurchHoliday[]>([]);

onMounted(async () => {
  holidays.value = await fetchChurchHolidaysData();
});

const fetchChurchHolidaysData = async () => {
  try {
    const response = await fetch('/src/data/church_holidays.json');

    if (!response.ok) {
      console.error('Server error:', response.statusText);
      return null;
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error fetching data:', error);
    return null;
  }
};

const searchHolidays = () => {
  const searchTerm = searchData.value.toLowerCase();
  
  if (!searchTerm) {
    filteredHolidays.value = holidays.value;
  } else {
    const matchingHolidays = holidays.value.filter(holiday =>
      holiday.church_holidays?.some(ch => ch.name.toLowerCase().includes(searchTerm))
    );
    filteredHolidays.value = matchingHolidays;
  }
};

const filteredHolidays = ref(holidays.value);
</script>