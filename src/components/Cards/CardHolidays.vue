<template>
  <ion-card>
    <!-- <ion-item lines="full">
      <ion-card-header>
        <ion-card-title style="font-size: larger;">{{ getCurrentDate() }}</ion-card-title>
      </ion-card-header>
    </ion-item> -->

    <ion-card-content class="cardContent">

      <div v-if="churchHolidays" style="margin-top: 3%;">
        <!-- <swiper :loop="true">
          <swiper-slide v-for="(month, monthIndex) in churchHolidays.year.months" :key="monthIndex"> -->
        <div v-for="(month, monthIndex) in churchHolidays.year.months" :key="monthIndex">
          <h2 v-if="isCurrentMonth(month.name)">{{ selectedMonth.name }}</h2>
          <div>
            <div>
              <div v-for="(day, dayIndex) in month.days" :key="dayIndex">
                <div v-if="isCurrentDаy(day.day) && isCurrentMonth(month.name)">
                  <h3>Day {{ selectedDay.day }}</h3>

                  <IonList class="churchHoliday" style="margin-top: 10%;" >
                    <!-- Ще изведе подвижните праници -->
                  <IonItem v-for="filteredHoliday in shouldDisplayItems" :key="filteredHoliday.name" >
                    
                    <ion-buttons class="buttonSaint" v-if="shouldDisplayItem(filteredHoliday.date)" @click="() => handleChurchFilteredHoliday(filteredHoliday)" >
                     
                      <ion-button expand="block">
                      
                        <div style="display: flex; align-items: center; justify-content: space-between; width: 100%;">
                          <ion-thumbnail class="custom-thumbnail">
                            <img alt="Saint" :src="filteredHoliday.image || 'https://ionicframework.com/docs/img/demos/thumbnail.svg'" style="width: 100%;" />
                          </ion-thumbnail>
                         
                          <div style="flex: 1; text-wrap: balance;width: auto;">
                            {{ filteredHoliday.name }}
                            {{ format(filteredHoliday.date, 'MMMM d') }}
                            {{ filteredHoliday.offset }}
                            <a  href="https://www.pravoslavieto.com/calendar/nedelnik/nedelja_pred_bogojavlenie.htm" style="text-decoration: none;">
                             </a>
                          </div>
                        </div>
                      </ion-button>
                    </ion-buttons>
                  </IonItem>

                    <!-- Ще изведе праниците -->
                    <IonItem v-for="churchHoliday in selectedDay.church_holidays">
                      <ion-buttons class="buttonSaint">
                        <ion-button expand="block" @click="() => handleChurchHolidayClick(churchHoliday)" >

                          <div style="display: flex; align-items: center; justify-content: space-between; width: 100%;">
                                <ion-thumbnail class="custom-thumbnail" style="width: 100%;margin-bottom: 23%;" >
                                <img :src="churchHoliday.image || 'https://ionicframework.com/docs/img/demos/thumbnail.svg'"  style="width: auto;height: auto;" />
                              </ion-thumbnail>
                            <div style="flex: 1; text-wrap: balance;width: auto;">
                              {{ churchHoliday.name }}
                            </div>
                          </div>
                          
                            <!-- <ion-button expand="block" @click="setOpen(true)">Read me</ion-button> -->

                            <!-- <svg viewBox="0 0 33 33" style="width: 6%;"><path fill-rule="evenodd" d="M6.3 5.69a.942.942 0 0 1-.28-.7c0-.28.09-.52.28-.7.19-.18.42-.28.7-.28.28 0 .52.09.7.28.18.19.28.42.28.7 0 .28-.09.52-.28.7a1 1 0 0 1-.7.3c-.28 0-.52-.11-.7-.3zM8 7.99c-.02-.25-.11-.48-.31-.69-.2-.19-.42-.3-.69-.31H6c-.27.02-.48.13-.69.31-.2.2-.3.44-.31.69h1v3c.02.27.11.5.31.69.2.2.42.31.69.31h1c.27 0 .48-.11.69-.31.2-.19.3-.42.31-.69H8V7.98v.01zM7 2.3c-3.14 0-5.7 2.54-5.7 5.68 0 3.14 2.56 5.7 5.7 5.7s5.7-2.55 5.7-5.7c0-3.15-2.56-5.69-5.7-5.69v.01zM7 .98c3.86 0 7 3.14 7 7s-3.14 7-7 7-7-3.12-7-7 3.14-7 7-7z"></path></svg> -->
                
                        </ion-button>
                      </ion-buttons>
                      <a :href="churchHoliday.audio" style="text-decoration: none;">Аудио за празника {{ selectedChurchHoliday?.name }}</a>
                
                    </IonItem>
 
                  </IonList>

                  <!-- Показва именните дни -->
                  <ion-button id="auto-trigger">Show name days</ion-button>
                  <ion-popover trigger="auto-trigger" size="cover">
                    <ion-card-content class="ion-padding">
                      <div v-for="dayName in selectedDay.name_days" >
                        {{ dayName }}
                        
                      </div>
                      <div v-if="selectedDay.name_days == ''">
                        Not found today
                      </div>
                    </ion-card-content>
                  </ion-popover>
                  <div>________________________________________________</div>

                  <!-- Идващи от Json -->
                  <p v-if="day.nameDay">Name Day: {{ selectedDay.name_days }}</p>
                  <p v-if="day.church_holidays">Church Holidays: {{ selectedDay.church_holidays }}</p>
                  <a href="http://www.pravoslavieto.com/toc/chitalnja.htm" target=_blank><img width=158 height=23 src="http://www.pravoslavieto.com/images/felles/logo_small.gif" alt="ПРАВОСЛАВНАТА ЧИТАЛНЯ. Eastern Orthodox readings in Bulgarian at Pravoslavieto.com" border=0></a> 
                  <p>Selected Date in CardHolidays: {{ selectedDate }}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- </swiper-slide>
        </swiper> -->
      </div>
      <div v-else>
        <p>Loading data...</p>
      </div>
    </ion-card-content>
  </ion-card>
  <ion-modal :is-open="isOpen">
  <ion-header>
    <ion-toolbar>
      <ion-title>{{ selectedChurchHoliday?.name }}</ion-title>
    <ion-buttons slot="end" style="margin-right: 7%;">
      <ion-button @click="adjustFontSize('increase')"><svg xmlns="http://www.w3.org/2000/svg" width="44px" height="44px" viewBox="0 0 24 24" fill="none">
      <g id="Interface / Magnifying_Glass_Plus">
      <path id="Vector" d="M7 10H10M10 10H13M10 10V7M10 10V13M15 15L21 21M10 17C6.13401 17 3 13.866 3 10C3 6.13401 6.13401 3 10 3C13.866 3 17 6.13401 17 10C17 13.866 13.866 17 10 17Z" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </g>
      </svg></ion-button>
      <ion-button @click="adjustFontSize('decrease')"><svg xmlns="http://www.w3.org/2000/svg" width="44px" height="44px" viewBox="0 0 24 24" fill="none">
      <g id="Interface / Magnifying_Glass_Minus">
      <path id="Vector" d="M7 10H13M15 15L21 21M10 17C6.13401 17 3 13.866 3 10C3 6.13401 6.13401 3 10 3C13.866 3 17 6.13401 17 10C17 13.866 13.866 17 10 17Z" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </g>
      </svg></ion-button>
    </ion-buttons>
      <ion-buttons slot="end">
        <ion-button @click="setOpen(false)">X</ion-button>
      </ion-buttons>
    </ion-toolbar>
  </ion-header>
  <ion-content class="ion-padding">
    <p v-if="selectedChurchHoliday" :style="{ fontSize: fontSize + 'px' }">
      <img :src="selectedChurchHoliday.image" style="width: 30%;" />
      {{ replaceNewlinesWithDiv(selectedChurchHoliday.text) }}
      <a :href="selectedChurchHoliday.href" style="text-decoration: none;">Още информация за празника {{ selectedChurchHoliday?.name }}</a>
    </p>
  </ion-content>
</ion-modal>
</template>

<script setup lang="ts">
import { IonCard, IonCardContent, IonItem, IonButton, IonPopover, IonModal, IonHeader, IonToolbar, IonTitle, IonButtons, IonContent, IonList, IonThumbnail } from '@ionic/vue';
import { format } from 'date-fns';
// IonItem, IonCardHeader, IonCardTitle
import { computed, onMounted, ref, watch } from 'vue';
// import { Swiper, SwiperSlide } from 'swiper/vue';

const isOpen = ref(false);

const setOpen = (open: boolean) => (isOpen.value = open);

// Define the type of your data structure
interface HolidayData {
  year: {
    months: {
      name: string;
      days: {
        day: number;
        nameDay: string[];
        church_holidays?: {
          name: string;
          image: string;
          text: string;
          href: string;
          audio: string;
        }[];
      }[];
    }[];
  };
}
interface Holiday {
  name: string;
  date: string;
  image: string;
  offset: number;
}

const replaceNewlinesWithDiv = (text: string) => {
  // Заменя всички срокове за нов ред (\n) с <br> и обвива резултата в div
  const htmlResult = text.replace(/\n/g, '<br>');
  return `<div v-html="'${htmlResult}'"></div>`;
};
const churchHolidays = ref<HolidayData | null>(null);


const props = defineProps(['selectedDate']);
const selectedDate = ref(props.selectedDate);

watch(() => props.selectedDate, (newDate) => {
  selectedDate.value = newDate;
  console.log('Selected Date in CardHolidays:', newDate);
});

// const selectedDateFormatted = ref('');

// watch(() => props.selectedDate, (newDate) => {
//   // Format the selected date as needed
//   selectedDateFormatted.value = newDate ? format(newDate, 'M-d') : '';
// });

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

onMounted(async () => {
  churchHolidays.value = await loadData();
  console.log('churchHolidays:', churchHolidays.value);
});


// ion-modal Logic

const selectedChurchHoliday = ref<{ image:string  , name: string; text: string; href: string ,audio:string } | null>(null);

const handleChurchHolidayClick = (churchHoliday: { image: string; name: string; text: string; href: string, audio: string }) => {
  selectedChurchHoliday.value = churchHoliday;
  setOpen(true); // Open the modal
};
const handleChurchFilteredHoliday = (filteredHoliday: { date: Date; name: string; offset: number; image: string; }) => {
  selectedChurchHoliday.value = {
    image: 'https://ionicframework.com/docs/img/demos/thumbnail.svg', // You may need to provide a default image value here
    name: filteredHoliday.name,
    text: '', // You may need to provide a default text value here
    href: '', // You may need to provide a default href value here
    audio: '', // You may need to provide a default audio value here
  };
  setOpen(true); // Open the modal
};

// За размера на текста
const fontSize = ref(16); // Default font size

const adjustFontSize = (action: 'increase' | 'decrease') => {
  if (action === 'increase') {
    fontSize.value += 2; // Increase font size by 2 pixels
  } else if (action === 'decrease' && fontSize.value > 2) {
    fontSize.value -= 2; // Decrease font size by 2 pixels, ensuring it doesn't go below 2
  }
};

const currentDay = ref(new Date().getDate());
const currentMonth = ref(new Date().getMonth());

const isCurrentDаy = (day: number) => {
  return day === currentDay.value;
};

const monthNameToIndex: { [key: string]: string } = {
  '0': 'January',
  '1': 'February',
  '2': 'March',
  '3': 'April',
  '4': 'May',
  '5': 'June',
  '6': 'July',
  '7': 'August',
  '8': 'September',
  '9': 'October',
  '10': 'November',
  '11': 'December'
};

const isCurrentMonth = (month: string) => {
  const currentMonthStringName = monthNameToIndex[currentMonth.value.toString()];

  return month === currentMonthStringName;
};


// Filter churchHolidays to include only the current month
//const filteredChurchHolidays = ref<HolidayData['year']['months'] | null>(null);

const selectedDay = ref();
const selectedMonth = ref();

watch([churchHolidays, selectedDate], ([newData, newSelectedDate]) => {
  if (newData && newSelectedDate) {
    const selectedMonthStringName = monthNameToIndex[newSelectedDate.getMonth().toString()];

    // Find the month that matches the selected date
    selectedMonth.value = newData.year.months.find((month) => month.name === selectedMonthStringName);

    if (selectedMonth) {
      // Find the day that matches the selected date
      selectedDay.value = selectedMonth.value.days.find((day: { day: any; }) => day.day === newSelectedDate.getDate());

      if (selectedDay.value) {
        // Now you can access the information for the selected date
        // console.log('Selected Date Info:', selectedDay.value);
      }
    }
  }
});
// TESTING STOINOSTI watch
watch([churchHolidays, selectedDate], ([newData, newSelectedDate]) => {
  // Тук можете да извършите допълнителна логика
  // в зависимост от промените в churchHolidays и selectedDate
  console.log('Променени са общите дати');
  console.log('calculatedHolidays:', newData);
  console.log('newSelectedDate:', format(newSelectedDate, 'MMMM d'));
  console.log('newSelectedDate:', );
  
  // Извикайте вашата функция тук или добавете допълнителен код.
});
const shouldDisplayItem = (itemDate: Date) => {
  if (format(selectedDate.value, 'MMMM d') === format(itemDate, 'MMMM d')){
    console.log("YEEESSSSS");
    
  }
  else{
    console.log("NOOOOOOOOOOOOOO");
    
  }
  return format(selectedDate.value, 'MMMM d') === format(itemDate, 'MMMM d');
};
const shouldDisplayItems = computed(() => {
  return calculatedHolidays.value.filter(holiday => shouldDisplayItem(holiday.date));
});
//===========================================================

const calculateOrthodoxEaster = (year: number): Date => {
  // Add the logic for calculating Orthodox Easter here
  // Use the provided formula or any other method
  const a = year % 19;
  const b = year % 7;
  const c = year % 4;

  const d = (19 * a + 16) % 30;
  const e = (2 * c + 4 * b + 6 * d) % 7;
  const f = (19 * a + 16) % 30;

  const key = f + e + 3;
  const month = (key > 30) ? 5 : 4;
  const day = (key > 30) ? key - 30 : key;

  return new Date(year, month - 1, day);
};
// const orthodoxEaster = computed(() => calculateOrthodoxEaster(selectedYear.value));

const holidays = ref<Holiday[]>([
  { name: 'Неделя на митаря и фарисея', date: '', offset: -70 ,image: ''},
  { name: 'Неделя на блудния син', date: '', offset: -63,image: '' },
  // { name: 'Месен четвъртък (гръцка традиция! - Tsiknopempti)', date: '', offset: -59 },
  { name: 'Събота срещу Неделя Месопустна Задушница', date: '', offset: -57 ,image: ''},
  { name: 'Месна неделя', date: '', offset: -56,image: '' },
  { name: 'Сирничка (Прошка) Неделя', date: '', offset: -49,image: '' },
  { name: 'Чисти понеделник (започва Великият пост - пост 6 седмици)', date: '', offset: -48,image: '' },
  { name: 'Свети Теодор', date: '', offset: -43 ,image: ''},
  { name: 'Неделя на Православието ', date: '', offset: -42 ,image: ''},
  { name: 'Свети Григорий Палама ', date: '', offset: -35,image: '' },
  { name: 'Лазарова събота ', date: '', offset: -8 ,image: ''},
  { name: 'Цветница ', date: '', offset: -7 ,image: ''},
  { name: 'Велики понеделник ', date: '', offset: -6 ,image: ''},
  { name: 'Велики вторник', date: '', offset: -5,image: '' },
  { name: 'Велика сряда', date: '', offset: -4,image: '' },
  { name: 'Велики четвъртък ', date: '', offset: -3,image: '' },
  { name: 'Велики петък', date: '', offset: -2,image: '' },
  { name: 'Велика събота', date: '', offset: -1,image: '' },
  { name: 'СВЕТИ ВЕЛИКДЕН ', date: '', offset: 0 ,image: ''},
  { name: '2-ри ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 1 ,image: ''},
  { name: '3-ти ден от Светлата седмица (Седмица на Пасха, Седмица на обновлението) - светъл вторник', date: '', offset: 2 ,image: ''},
  { name: '4-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 3 ,image: ''},
  { name: '5-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 4,image: '' },
  { name: '6-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 5,image: '' },
  { name: 'Ден на животворния фонтан ', date: '', offset: 5,image: '' },
  { name: '7-ми ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 6,image: '' },
  { name: 'Неделя на Тома ', date: '', offset: 7,image: '' },
  { name: 'Неделя на жените мироносици ', date: '', offset: 14,image: '' },
  { name: 'Неделя на паралитика ', date: '', offset: 21,image: '' },
  { name: 'Свето Възнесение ', date: '', offset: 39,image: '' },
  { name: 'Събота срещу Петдесетница Задушница', date: '', offset: 48 ,image: ''},
  { name: 'Света Петдесетница', date: '', offset: 49,image: '' },
  { name: 'Понеделник на Светия Дух', date: '', offset: 50 ,image: ''},
  { name: 'Неделя на всички светии', date: '', offset: 56,image: '' },
  // ................................
  ]);

 const calculatedHolidays = computed(() => {
  const easterDate = calculateOrthodoxEaster(selectedDate.value.getFullYear());
  const result = holidays.value.map(holiday => {
    const holidayDate = new Date(easterDate);
    holidayDate.setDate(easterDate.getDate() + holiday.offset);
    return { ...holiday, date: holidayDate };
  });

  // console.log('Calculated Holidays:', result); // Add this line

  return result;
});


</script>

<style >
.cardContent {
  text-align: center;
}

.churchHoliday {
  font-size: larger;
  font-weight: 600;
}

.nameDay {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
}

.sc-ion-alert-md-h {
  --max-width: 90%;
  background: black;
  --height: 90%;
}

.sc-ion-buttons-md-h {
  display: inline-block;
}

.custom-thumbnail {
  width: auto;
  max-width: 33.33%;
}

.buttonSaint {
  width: 100%;
}
</style>