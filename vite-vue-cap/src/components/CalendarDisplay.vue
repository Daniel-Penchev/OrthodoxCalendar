<template>
  <ion-card>
    <ion-item lines="full">
      <ion-card-header>
        <ion-card-title>Holidays</ion-card-title>
      </ion-card-header>
    </ion-item>

    <ion-card-content>
      <div>Избери Месец</div>
      <div>
        <button v-for="(month, index) in churchHolidays?.year.months" :key="index" @click="showMonthContent(index)">
          {{ month.name }}
        </button>
      </div>

      <!-- Content for the selected month -->
      <div v-if="selectedMonth !== null">
        <table cellspacing="0" cellpadding="0">
          <tbody>
            <tr>
              <td>
                <table cellspacing="1" cellpadding="3">
                  <tbody>
                    <tr style="border: 1px solid black; padding: 4%;">
                      <td colspan="2">
                        <h3>{{ churchHolidays?.year.months[selectedMonth].name }}</h3>
                      </td>
                    </tr>
                    <tr v-for="day in churchHolidays?.year.months[selectedMonth].days" :key="day.day"
                      style="border: 1px solid black; padding: 4%;">
                      <td style="text-align: center;">
                        <strong style="font-size: xxx-large;">{{ day.day }}</strong>
                      </td>
                      <td>
                        <div v-if="day.church_holidays.length > 0">
                          <strong>Church Holidays:</strong>
                          {{ day.church_holidays.join(', ') }}
                        </div>
                        <div v-if="day.nameDay">
                          <strong>Name Day:</strong>
                          {{ day.nameDay.join(', ') }}
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </ion-card-content>
  </ion-card>
</template>

<script setup lang="ts">
import { IonCard, IonCardContent, IonItem, IonCardHeader, IonCardTitle } from '@ionic/vue';
import { onMounted, ref } from 'vue';

// Define the type of your data structure
interface HolidayData {
  year: {
    months: {
      name: string;
      days: {
        day: number;
        nameDay: string[];
        church_holidays: string[];
      }[];
    }[];
  };
}

const fetchData = async () => {
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

const loadData = async () => {
  return await fetchData();
};

const churchHolidays = ref<HolidayData | null>(null);
const selectedMonth = ref<number | null>(null);

const showMonthContent = (index: number) => {
  selectedMonth.value = index;
};
onMounted(async () => {
  churchHolidays.value = await loadData();
  console.log('churchHolidays:', churchHolidays.value);
});
</script>