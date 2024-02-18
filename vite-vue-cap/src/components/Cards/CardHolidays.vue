<template>
  <ion-card>
    <ion-card-content class="cardContent">
      <!-- <p>Snimki</p>
      <swiper :loop="true" >3
        <swiper-slide>Slide 1</swiper-slide>
        <swiper-slide>Slide 2</swiper-slide>
        <swiper-slide>Slide 3</swiper-slide>
    </swiper> -->

      <div v-if="churchHolidays" style="margin-top: 3%">
        <div
          v-for="(month, monthIndex) in churchHolidays.year.months"
          :key="monthIndex"
        >
          <h2 v-if="isCurrentMonth(month.name)">{{ selectedMonth.name }}</h2>
          <div>
            <div>
              <div v-for="(day, dayIndex) in month.days" :key="dayIndex">
                <div v-if="isCurrentDаy(day.day) && isCurrentMonth(month.name)">
                  <h3>Day {{ selectedDay.day }}</h3>

                  <img
                    v-if="selectedDay.church_holidays && selectedDay.church_holidays.length !== '' && selectedDay.church_holidays[0].image"
                    :src="selectedDay.church_holidays[0].image || 'https://ionicframework.com/docs/img/demos/thumbnail.svg'"
                    class="imageStyle"
                  />

                  <!-- Use Swiper if there are multiple images -->
                  <swiper v-else :loop="true">
                    <swiper-slide v-for="(churchHoliday, churchIndex) in selectedDay.church_holidays" :key="churchIndex">
                      <!-- Display image for each church holiday -->
                      <img
                        v-if="churchHoliday.image"
                        :src="churchHoliday.image || 'https://ionicframework.com/docs/img/demos/thumbnail.svg'"
                        class="imageStyle"
                      />
                    </swiper-slide>
                  </swiper>
                  <!-- <img
                  v-for="(image, imageIndex) in selectedDay.church_holidays.images"
                  :key="imageIndex"
                  :src="image || 'https://ionicframework.com/docs/img/demos/thumbnail.svg'"
                  style="width: 35%; height: auto; margin-top: 10%"
                  /> -->

                  <IonList class="churchHoliday" style="margin-top: 10%">
                    <div class="AlertCopy">
                      <p
                        v-if="alertVisible"
                        style="
                          font-weight: bold;
                          font-size: large;
                          text-align: center;
                        "
                      >
                        You copied successfully!
                      </p>
                    </div>

                    <!-- Ще изведе подвижните праници -->
                    <IonItem
                      v-for="filteredHoliday in shouldDisplayItems"
                      :key="filteredHoliday.name"
                    >
                      <ion-buttons
                        class="buttonSaint"
                        v-if="shouldDisplayItem(filteredHoliday.date)"
                      >
                        <ion-button
                          expand="block"
                          style="width: 100%"
                          @click="saveHoliday(filteredHoliday.name)"
                        >
                          <div
                            style="
                              display: flex;
                              align-items: center;
                              justify-content: space-between;
                              width: 100%;
                              margin-left: 5%;
                            "
                          >
                            <!-- <ion-thumbnail class="custom-thumbnail" style="width: 100%;margin-bottom: 23%;">
                              <img :src="filteredHoliday.image || 'https://ionicframework.com/docs/img/demos/thumbnail.svg'"
                                style="width: auto;height: auto;" />
                            </ion-thumbnail> -->
                            <div
                              style="
                                flex: 1;
                                text-wrap: balance;
                                width: auto;
                                margin-left: 2%;
                                font-size: 16px;
                              "
                            >
                              {{ filteredHoliday.name }}
                            </div>
                          </div>
                        </ion-button>
                      </ion-buttons>
                    </IonItem>

                    <!-- Ще изведе праниците -->
                    <IonItem
                      v-for="churchHoliday in selectedDay.church_holidays"
                    >
                      <ion-buttons
                        class="buttonSaint"
                        style="margin-top: 5%; margin-bottom: 5%"
                      >
                        <ion-button
                          expand="block"
                          style="width: 100%"
                          @click="saveHoliday(churchHoliday.name)"
                        >
                          <div
                            style="
                              display: flex;
                              align-items: center;
                              justify-content: center;
                              width: 100%;
                            "
                          >
                            <!-- <ion-thumbnail class="custom-thumbnail" style="width: 100%;margin-bottom: 23%;">
                              <img :src="churchHoliday.image || 'https://ionicframework.com/docs/img/demos/thumbnail.svg'"
                                style="width: auto;height: auto;" />
                            </ion-thumbnail> -->

                            <div
                              style="
                                flex: 1;
                                text-wrap: balance;
                                width: auto;
                                margin-left: 2%;
                                font-size: 15px;
                              "
                            >
                              {{ churchHoliday.name }}
                            </div>
                          </div>
                        </ion-button>

                        <!-- Two buttons one for text and one for audio -->
                        <div style="display: inline-grid;gap: 3%;">
                        <ion-button class="button-83-pushable" v-if="churchHoliday.href" role="button">
                          
                          <a :href="churchHoliday.href">
                          
                          <span class="button-83-shadow"></span>
                          <span class="button-83-edge"></span>
                          <span class="button-83-front text" style="width: 60px;">
                            <img  src="../../assets/img/PrayerBook.png" width="40px" height="40px" />
                          </span>
                        </a>
                        </ion-button> 
                        <ion-button class="button-82-pushable" v-if="churchHoliday.audio" role="button">
                          <a :href="churchHoliday.audio">
                          <span class="button-82-shadow"></span>
                          <span class="button-82-edge"></span>
                          <span class="button-82-front text" >
                            <svg v-if="churchHoliday.audio" width="20px" height="20px" viewBox="0 0 32 32" version="1.1"
                            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                            xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">
                          <title>headphone</title>
                          <desc>Created with Sketch Beta.</desc>
                          <defs></defs>
                          <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
                            <g id="Icon-Set-Filled" sketch:type="MSLayerGroup" transform="translate(-466.000000, -517.000000)"
                              fill="#000000">
                              <path
                                d="M495.938,531.521 C495.966,531.183 496,530.846 496,530.5 C496,523.044 489.732,517 482,517 C474.268,517 468,523.044 468,530.5 C468,530.846 468.034,531.183 468.063,531.521 C466.838,532.205 466,533.498 466,535 L466,541 C466,543.209 467.791,545 470,545 L474,545 C476.125,544.905 478,543.148 478,541 L478,535 C478,532.791 476.209,531 474,531 L470,531 C470,524.01 475.373,519 482,519 C488.628,519 494.043,523.967 494,531 C493.999,531.17 490,531 490,531 C487.791,531 486,532.791 486,535 L486,541 C486,543.148 487.875,544.905 490,545 L492,545 L492,548 C492,548.553 492.447,549 493,549 C493.553,549 494,548.553 494,548 L494,545 C496.209,545 498,543.209 498,541 L498,535 C498,533.498 497.162,532.205 495.938,531.521"
                                id="headphone" sketch:type="MSShapeGroup"></path>
                            </g>
                          </g>
                           </svg>
                          </span>
                        </a>
                        </ion-button>
                      </div>
                        <!-- <ion-button
                          class="button-67"
                          v-if="churchHoliday.href"
                          role="button"
                        >
                          <a :href="churchHoliday.href">
                            <img
                              src="../../assets/img/PrayerBook.png"
                              style="width: 66px; height: 37px"
                            />
                          </a>
                        </ion-button>
                        <ion-button
                          class="button-67"
                          v-if="churchHoliday.audio"
                          role="button"
                        >
                          <a :href="churchHoliday.audio">
                            <svg
                              v-if="churchHoliday.audio"
                              width="20px"
                              height="20px"
                              viewBox="0 0 32 32"
                              version="1.1"
                              xmlns="http://www.w3.org/2000/svg"
                              xmlns:xlink="http://www.w3.org/1999/xlink"
                              xmlns:sketch="http://www.bohemiancoding.com/sketch/ns"
                            >
                              <title>headphone</title>
                              <desc>Created with Sketch Beta.</desc>
                              <defs></defs>
                              <g
                                id="Page-1"
                                stroke="none"
                                stroke-width="1"
                                fill="none"
                                fill-rule="evenodd"
                                sketch:type="MSPage"
                              >
                                <g
                                  id="Icon-Set-Filled"
                                  sketch:type="MSLayerGroup"
                                  transform="translate(-466.000000, -517.000000)"
                                  fill="#000000"
                                >
                                  <path
                                    d="M495.938,531.521 C495.966,531.183 496,530.846 496,530.5 C496,523.044 489.732,517 482,517 C474.268,517 468,523.044 468,530.5 C468,530.846 468.034,531.183 468.063,531.521 C466.838,532.205 466,533.498 466,535 L466,541 C466,543.209 467.791,545 470,545 L474,545 C476.125,544.905 478,543.148 478,541 L478,535 C478,532.791 476.209,531 474,531 L470,531 C470,524.01 475.373,519 482,519 C488.628,519 494.043,523.967 494,531 C493.999,531.17 490,531 490,531 C487.791,531 486,532.791 486,535 L486,541 C486,543.148 487.875,544.905 490,545 L492,545 L492,548 C492,548.553 492.447,549 493,549 C493.553,549 494,548.553 494,548 L494,545 C496.209,545 498,543.209 498,541 L498,535 C498,533.498 497.162,532.205 495.938,531.521"
                                    id="headphone"
                                    sketch:type="MSShapeGroup"
                                  ></path>
                                </g>
                              </g>
                            </svg>
                          </a>
                        </ion-button> -->

                      </ion-buttons>
                    </IonItem>
                  </IonList>

                  <!-- Показва именните дни -->
                  
                  <ion-button id="auto-trigger">Show name days</ion-button>
                  <ion-popover trigger="auto-trigger" size="cover">
                    <ion-card-content class="ion-padding">
                      <div
                        v-if="
                          selectedDay.name_days &&
                          selectedDay.name_days.length > 0
                        "
                      >
                        <div v-for="dayName in selectedDay.name_days">
                          {{ dayName }}
                        </div>
                      </div>
                      <div v-else>Not found today</div>
                    </ion-card-content>
                  </ion-popover>
                  <!-- <div>________________________________________________</div> -->

                  <!-- Идващи от Json -->
                  <!-- <p v-if="day.nameDay">Name Day: {{ selectedDay.name_days }}</p>
                  <p v-if="day.church_holidays">Church Holidays: {{ selectedDay.church_holidays }}</p>
                  -->
                  <!-- <p>Selected Date in CardHolidays: {{ selectedDate }}</p> -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div v-else>
        <p>Loading data...</p>
      </div>
    </ion-card-content>
  </ion-card>

  <!-- Modal -->
  <!-- <ion-modal :is-open="isOpen" @blur="handleBlur" >
    
    <ion-header>
      <ion-toolbar>
        <ion-title>{{ selectedChurchHoliday?.name }}</ion-title>
        <ion-buttons slot="end" style="margin-right: 4%;">
          <ion-button @click="adjustFontSize('increase')"><svg xmlns="http://www.w3.org/2000/svg" width="30px"
              height="30px" viewBox="0 0 24 24" fill="none">
              <g id="Interface / Magnifying_Glass_Plus">
                <path id="Vector"
                  d="M7 10H10M10 10H13M10 10V7M10 10V13M15 15L21 21M10 17C6.13401 17 3 13.866 3 10C3 6.13401 6.13401 3 10 3C13.866 3 17 6.13401 17 10C17 13.866 13.866 17 10 17Z"
                  stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
              </g>
            </svg></ion-button>
          <ion-button @click="adjustFontSize('decrease')"><svg xmlns="http://www.w3.org/2000/svg" width="30px"
              height="30px" viewBox="0 0 24 24" fill="none">
              <g id="Interface / Magnifying_Glass_Minus">
                <path id="Vector"
                  d="M7 10H13M15 15L21 21M10 17C6.13401 17 3 13.866 3 10C3 6.13401 6.13401 3 10 3C13.866 3 17 6.13401 17 10C17 13.866 13.866 17 10 17Z"
                  stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
              </g>
            </svg></ion-button>
        </ion-buttons>
        <ion-buttons slot="end">
          <ion-button  @click="setOpen(false)">
          <ion-icon slot="icon-only" :icon="close"></ion-icon>
        </ion-button>
        </ion-buttons>
      </ion-toolbar>
    </ion-header>

    <ion-content class="ion-padding">
      <p v-if="selectedChurchHoliday" :style="{ fontSize: fontSize + 'px' }">
         
          <a v-if="selectedChurchHoliday.audio" :href="selectedChurchHoliday.audio" style="text-decoration: none;">

            <div style="display:flex;justify-content:center;align-items:center; flex-direction: column;gap:3px">

              <img  :src="selectedChurchHoliday.image || 'https://ionicframework.com/docs/img/demos/thumbnail.svg'" style="width: 60%;" />

              <svg width="30px" height="30px" viewBox="0 0 32 32" version="1.1"
                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">
              <title>headphone</title>
              <desc>Created with Sketch Beta.</desc>
              <defs></defs>
              <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
                <g id="Icon-Set-Filled" sketch:type="MSLayerGroup" transform="translate(-466.000000, -517.000000)"
                  fill="#000000">
                  <path
                    d="M495.938,531.521 C495.966,531.183 496,530.846 496,530.5 C496,523.044 489.732,517 482,517 C474.268,517 468,523.044 468,530.5 C468,530.846 468.034,531.183 468.063,531.521 C466.838,532.205 466,533.498 466,535 L466,541 C466,543.209 467.791,545 470,545 L474,545 C476.125,544.905 478,543.148 478,541 L478,535 C478,532.791 476.209,531 474,531 L470,531 C470,524.01 475.373,519 482,519 C488.628,519 494.043,523.967 494,531 C493.999,531.17 490,531 490,531 C487.791,531 486,532.791 486,535 L486,541 C486,543.148 487.875,544.905 490,545 L492,545 L492,548 C492,548.553 492.447,549 493,549 C493.553,549 494,548.553 494,548 L494,545 C496.209,545 498,543.209 498,541 L498,535 C498,533.498 497.162,532.205 495.938,531.521"
                    id="headphone" sketch:type="MSShapeGroup"></path>
                </g>
              </g>
            </svg>
            <p style="margin-top: 0%;font-size: 20px;">Аудио за празника</p>
            </div>

          </a>
        
       <div v-html="formatTextSpace(selectedChurchHoliday.text)"></div>
    <br>
       <a :href="selectedChurchHoliday.href || 'https://www.pravoslavieto.com/toc/chitalnja.htm'"  style="text-decoration: none;">Още информация за празника {{
        selectedChurchHoliday?.name }}</a>
      </p>
    </ion-content>
  </ion-modal> -->
</template>

<script setup lang="ts">
import {
  IonCard,
  IonCardContent,
  IonItem,
  IonButton,
  IonPopover,
  IonButtons,
  IonList,
} from "@ionic/vue";

import { format } from "date-fns";
// IonItem, IonCardHeader, IonCardTitle
import { computed, onMounted, ref, watch } from "vue";
import { Swiper } from "vue-awesome-swiper";
// import { Swiper , SwiperSlide } from 'swiper/vue';
// import 'swiper/swiper-bundle.css';

// const isOpen = ref(false);

// const setOpen = (open: boolean) => (isOpen.value = open);

// Define the type of your data structure
interface HolidayData {
  year: {
    months: {
      name: string;
      days: {
        day: number;
        name_days: string[];
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
// const formatTextSpace = (text: string) => {
//   const htmlResult = text.replace(/\n/g, '<br>');
//   return htmlResult;
// };
// const replaceNewlinesWithDiv = (text: string) => {
//   // Заменя всички срокове за нов ред (\n) с <br> и обвива резултата в div
//   const htmlResult = text.replace(/\n/g, '<br>');
//   return `<div v-html="'${htmlResult}'"></div>`;
// };
const churchHolidays = ref<HolidayData | null>(null);

const props = defineProps(["selectedDate"]);
const selectedDate = ref(props.selectedDate);

watch(
  () => props.selectedDate,
  (newDate) => {
    selectedDate.value = newDate;
    console.log("Selected Date in CardHolidays:", newDate);
  }
);

// const selectedDateFormatted = ref('');

// watch(() => props.selectedDate, (newDate) => {
//   // Format the selected date as needed
//   selectedDateFormatted.value = newDate ? format(newDate, 'M-d') : '';
// });

const fetchData = async () => {
  try {
    const response = await fetch("/src/data/church_holidays.json");

    if (!response.ok) {
      console.error("Server error:", response.statusText);
      return null;
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error fetching data:", error);
    return null;
  }
};

const loadData = async () => {
  return await fetchData();
};

onMounted(async () => {
  churchHolidays.value = await loadData();
  console.log("churchHolidays:", churchHolidays.value);
});

// ion-modal Logic

// const selectedChurchHoliday = ref<{ image: string, name: string; text: string; href: string, audio: string } | null>(null);

// const handleChurchHolidayClick = (churchHoliday: { image: string; name: string; text: string; href: string, audio: string }) => {
//   selectedChurchHoliday.value = churchHoliday;
//   setOpen(true); // Open the modal
// };
// const handleChurchFilteredHoliday = (filteredHoliday: { date: Date; name: string; offset: number; image: string; }) => {
//   selectedChurchHoliday.value = {
//     image: 'https://ionicframework.com/docs/img/demos/thumbnail.svg', // You may need to provide a default image value here
//     name: filteredHoliday.name,
//     text: '', // You may need to provide a default text value here
//     href: '', // You may need to provide a default href value here
//     audio: '', // You may need to provide a default audio value here
//   };
//   setOpen(true); // Open the modal
// };

// За размера на текста
// const fontSize = ref(16);

// const adjustFontSize = (action: 'increase' | 'decrease') => {
//   if (action === 'increase') {
//     fontSize.value += 2; // Increase font size by 2 pixels
//   } else if (action === 'decrease' && fontSize.value > 2) {
//     fontSize.value -= 2; // Decrease font size by 2 pixels, ensuring it doesn't go below 2
//   }
// };

const currentDay = ref(new Date().getDate());
const currentMonth = ref(new Date().getMonth());

const isCurrentDаy = (day: number) => {
  return day === currentDay.value;
};

const monthNameToIndex: { [key: string]: string } = {
  "0": "January",
  "1": "February",
  "2": "March",
  "3": "April",
  "4": "May",
  "5": "June",
  "6": "July",
  "7": "August",
  "8": "September",
  "9": "October",
  "10": "November",
  "11": "December",
};

const isCurrentMonth = (month: string) => {
  const currentMonthStringName =
    monthNameToIndex[currentMonth.value.toString()];

  return month === currentMonthStringName;
};

// Filter churchHolidays to include only the current month
//const filteredChurchHolidays = ref<HolidayData['year']['months'] | null>(null);

const selectedDay = ref();
const selectedMonth = ref();

watch([churchHolidays, selectedDate], ([newData, newSelectedDate]) => {
  if (newData && newSelectedDate instanceof Date) {
    const selectedMonthStringName =
      monthNameToIndex[newSelectedDate.getMonth().toString()];

    // Find the month that matches the selected date
    selectedMonth.value = newData.year.months.find(
      (month) => month.name === selectedMonthStringName
    );

    if (selectedMonth.value) {
      // Find the day that matches the selected date
      selectedDay.value = selectedMonth.value.days.find(
        (day: { day: any }) => day.day === newSelectedDate.getDate()
      );

      if (selectedDay.value) {
        // Now you can access the information for the selected date
        // console.log('Selected Date Info:', selectedDay.value);
      }
    }
  }
});
// TESTING STOINOSTI watch
watch([churchHolidays, selectedDate], ([newData]) => {
  // Тук можете да извършите допълнителна логика
  // в зависимост от промените в churchHolidays и selectedDate
  console.log("Променени са общите дати");
  console.log("calculatedHolidays:", newData);
  // console.log('newSelectedDate:', format(newSelectedDate, 'MMMM d'));
  console.log("newSelectedDate:");

  // Извикайте вашата функция тук или добавете допълнителен код.
});
const shouldDisplayItem = (itemDate: Date) => {
  if (format(selectedDate.value, "MMMM d") === format(itemDate, "MMMM d")) {
    console.log("YEEESSSSS");
  } else {
    console.log("NOOOOOOOOOOOOOO");
  }
  return format(selectedDate.value, "MMMM d") === format(itemDate, "MMMM d");
};
const shouldDisplayItems = computed(() => {
  return calculatedHolidays.value.filter((holiday) =>
    shouldDisplayItem(holiday.date)
  );
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
  const month = key > 30 ? 5 : 4;
  const day = key > 30 ? key - 30 : key;

  return new Date(year, month - 1, day);
};
// const orthodoxEaster = computed(() => calculateOrthodoxEaster(selectedYear.value));

const holidays = ref<Holiday[]>([
  {
    name: "✝ Нова година. Обрезание Господне.",
    date: "01-01",
    offset: -1,
    image: "/src/assets/img/Orthodox Calendar/1.January/1-1-xc.png",
  },
  { name: "✝ Неделя преди Богоявление", date: "01-07", offset: -1, image: "" },
  { name: "Неделя на митаря и фарисея", date: "", offset: -70, image: "" },
  { name: "Неделя на блудния син", date: "", offset: -63, image: "" },
  // { name: 'Месен четвъртък (гръцка традиция! - Tsiknopempti)', date: '', offset: -59 },
  {
    name: "Събота срещу Неделя Месопустна Задушница",
    date: "",
    offset: -57,
    image: "",
  },
  { name: "Месна неделя", date: "", offset: -56, image: "" },
  { name: "Сирничка (Прошка) Неделя", date: "", offset: -49, image: "" },
  {
    name: "Чисти понеделник (започва Великият пост - пост 6 седмици)",
    date: "",
    offset: -48,
    image: "",
  },
  { name: "Свети Теодор", date: "", offset: -43, image: "" },
  { name: "Неделя на Православието ", date: "", offset: -42, image: "" },
  { name: "Свети Григорий Палама ", date: "", offset: -35, image: "" },
  { name: "Лазарова събота ", date: "", offset: -8, image: "" },
  { name: "Цветница ", date: "", offset: -7, image: "" },
  { name: "Велики понеделник ", date: "", offset: -6, image: "" },
  { name: "Велики вторник", date: "", offset: -5, image: "" },
  { name: "Велика сряда", date: "", offset: -4, image: "" },
  { name: "Велики четвъртък ", date: "", offset: -3, image: "" },
  { name: "Велики петък", date: "", offset: -2, image: "" },
  { name: "Велика събота", date: "", offset: -1, image: "" },
  { name: "СВЕТИ ВЕЛИКДЕН ", date: "", offset: 0, image: "" },
  {
    name: "2-ри ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 1,
    image: "",
  },
  {
    name: "3-ти ден от Светлата седмица (Седмица на Пасха, Седмица на обновлението) - светъл вторник",
    date: "",
    offset: 2,
    image: "",
  },
  {
    name: "4-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 3,
    image: "",
  },
  {
    name: "5-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 4,
    image: "",
  },
  {
    name: "6-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 5,
    image: "",
  },
  { name: "Ден на животворния фонтан ", date: "", offset: 5, image: "" },
  {
    name: "7-ми ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 6,
    image: "",
  },
  { name: "Неделя на Тома ", date: "", offset: 7, image: "" },
  { name: "Неделя на жените мироносици ", date: "", offset: 14, image: "" },
  { name: "Неделя на паралитика ", date: "", offset: 21, image: "" },
  { name: "Свето Възнесение ", date: "", offset: 39, image: "" },
  {
    name: "Събота срещу Петдесетница Задушница",
    date: "",
    offset: 48,
    image: "",
  },
  { name: "Света Петдесетница", date: "", offset: 49, image: "" },
  { name: "Понеделник на Светия Дух", date: "", offset: 50, image: "" },
  { name: "Неделя на всички светии", date: "", offset: 56, image: "" },
  // ................................
]);

const calculatedHolidays = computed(() => {
  const easterDate = calculateOrthodoxEaster(selectedDate.value.getFullYear());
  const result = holidays.value.map((holiday) => {
    let holidayDate;
    if (holiday.date) {
      const [month, day] = holiday.date.split("-").map(Number);
      holidayDate = new Date(selectedDate.value.getFullYear(), month - 1, day);
    } else {
      holidayDate = new Date(easterDate);
      holidayDate.setDate(easterDate.getDate() + holiday.offset);
    }
    return { ...holiday, date: holidayDate };
  });

  // console.log('Calculated Holidays:', result);

  return result;
});

// Handle the blur event to close the modal
// const handleBlur = () => {
//   setOpen(false);
//   // Additional logic if needed
// };

let alertVisible = ref(false);
let copiedText = "";

const saveHoliday = (nameText: string) => {
  copiedText = nameText;

  // Показване на Ionic Alert
  alertVisible.value = true;
  console.log(alertVisible.value);
  // Копиране на текста
  navigator.clipboard
    .writeText(copiedText)
    .then(() => {
      console.log(`Текстът "${copiedText}" е успешно копиран.`);
    })
    .catch((err) => {
      console.error("Възникна грешка при копирането:", err);
    });

  // Скриване на Ionic Alert след 3 секунди
  setTimeout(() => {
    alertVisible.value = false;
  }, 1100);
};
</script>

<style>

/* image*/
.imageStyle{
  width: 60%;
  height: auto;
  margin-top: 10%
}
@media screen and (min-width: 375px) {
  .imageStyle {
    width: 50%;
  }
}        
@media screen and (min-width: 768px) {
  .imageStyle {
    width: 28%;
  }
}                
/*    */

/* alert */

.AlertCopy {
  background: #04AA6D;
  color: white;
  font-weight: bold;
  font-size: larger;
  text-align: center;
}

/*    */

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
/* CSS */
/* .buttonAudioandHref {
  appearance: button;
  background-color: #1899D6;
  border: solid transparent;
  border-radius: 16px;
  border-width: 0 0 4px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: din-round,sans-serif;
  font-size: 15px;
  font-weight: 700;
  letter-spacing: .8px;
  line-height: 20px;
  margin: 0;
  outline: none;
  overflow: visible;
  padding: 13px 16px;
  text-align: center;
  text-transform: uppercase;
  touch-action: manipulation;
  transform: translateZ(0);
  transition: filter .2s;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: middle;
  white-space: nowrap;
  width: 100%;
}

.buttonAudioandHref:after {
  background-clip: padding-box;
  background-color: #1CB0F6;
  border: solid transparent;
  border-radius: 16px;
  border-width: 0 0 4px;
  bottom: -4px;
  content: "";
  left: 0;
  position: absolute;
  right: 0;
  top: 0;
  z-index: -1;
}

.buttonAudioandHref:main,
.buttonAudioandHref:focus {
  user-select: auto;
}

.buttonAudioandHref:hover:not(:disabled) {
  filter: brightness(1.1);
  -webkit-filter: brightness(1.1);
}

.buttonAudioandHref:disabled {
  cursor: auto;
}

.buttonAudioandHref:active {
  border-width: 4px 0 0;
  background: none;
} */


/* CSS */
.button-82-pushable {
  position: relative;
  border: none;
  background: transparent;
  padding: 0;
  cursor: pointer;
  outline-offset: 4px;
  transition: filter 250ms;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-82-shadow {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 12px;
  background: hsl(0deg 0% 0% / 0.25);
  will-change: transform;
  transform: translateY(2px);
  transition: transform 600ms cubic-bezier(0.3, 0.7, 0.4, 1);
}

.button-82-edge {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 12px;
  background: linear-gradient(
    to left,
    hsl(37.19deg 75.16% 68.43%) 0%,
    hsl(39.44deg 70.13% 69.8%) 8%,
    hsl(38.64deg 71.08% 67.45%) 92%,
    hsl(39.5deg 71.43% 67.06%) 100%
  );
}

.button-82-front {
  display: block;
  position: relative;
  padding: 10px 20px;
  /* margin: 2px 4px; */
  border-radius: 12px;
  font-size: 1.1rem;
  color: white;
  background: hsl(40.43deg 69.7% 87.06%);
  will-change: transform;
  transform: translateY(-4px);
  transition: transform 600ms cubic-bezier(0.3, 0.7, 0.4, 1);
}

@media (min-width: 768px) {
  .button-82-front {
    font-size: 1.25rem;
    padding: 15px 20px;
  }
}

.button-82-pushable:hover {
  filter: brightness(110%);
  -webkit-filter: brightness(110%);
}

.button-82-pushable:hover .button-82-front {
  transform: translateY(-6px);
  transition: transform 250ms cubic-bezier(0.3, 0.7, 0.4, 1.5);
}

.button-82-pushable:active .button-82-front {
  transform: translateY(-2px);
  transition: transform 34ms;
}

.button-82-pushable:hover .button-82-shadow {
  transform: translateY(4px);
  transition: transform 250ms cubic-bezier(0.3, 0.7, 0.4, 1.5);
}

.button-82-pushable:active .button-82-shadow {
  transform: translateY(1px);
  transition: transform 34ms;
}

.button-82-pushable:focus:not(:focus-visible) {
  outline: none;
}

/* CSS */
.button-83-pushable {
  width: 75px;
  position: relative;
  border: none;
  background: transparent;
  padding: 0;
  cursor: pointer;
  outline-offset: 4px;
  transition: filter 250ms;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-83-shadow {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 12px;
  background: hsl(0deg 0% 0% / 0.25);
  will-change: transform;
  transform: translateY(2px);
  transition: transform 600ms cubic-bezier(0.3, 0.7, 0.4, 1);
}

.button-83-edge {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 12px;
  background: linear-gradient(
    to left,
    hsl(37.19deg 75.16% 68.43%) 0%,
    hsl(39.44deg 70.13% 69.8%) 8%,
    hsl(38.64deg 71.08% 67.45%) 92%,
    hsl(39.5deg 71.43% 67.06%) 100%
  );
}

.button-83-front {
  display: block;
  position: relative;
  /* padding: 7px 7px;
  margin: 2px 4px; */
  border-radius: 12px;
  font-size: 1.1rem;
  color: white;
  background: hsl(40.43deg 69.7% 87.06%);
  will-change: transform;
  transform: translateY(-4px);
  transition: transform 600ms cubic-bezier(0.3, 0.7, 0.4, 1);
}

@media (min-width: 768px) {
  .button-83-front {
    font-size: 1.25rem;
    padding: 10px 13px;
  }
}

.button-83-pushable:hover {
  filter: brightness(110%);
  -webkit-filter: brightness(110%);
}

.button-83-pushable:hover .button-83-front {
  transform: translateY(-6px);
  transition: transform 250ms cubic-bezier(0.3, 0.7, 0.4, 1.5);
}

.button-83-pushable:active .button-83-front {
  transform: translateY(-2px);
  transition: transform 34ms;
}

.button-83-pushable:hover .button-83-shadow {
  transform: translateY(4px);
  transition: transform 250ms cubic-bezier(0.3, 0.7, 0.4, 1.5);
}

.button-83-pushable:active .button-83-shadow {
  transform: translateY(1px);
  transition: transform 34ms;
}

.button-83-pushable:focus:not(:focus-visible) {
  outline: none;
}

/* CSS */
.button-67 {
  align-items: center;
  background: #f5f5fa;
  border: 0;
  border-radius: 8px;
  box-shadow: -10px -10px 30px 0 #fff, 10px 10px 30px 0 #1d0dca17;
  box-sizing: border-box;
  color: #2a1f62;
  cursor: pointer;
  display: flex;
  font-family: "Cascadia Code", Consolas, Monaco, "Andale Mono", "Ubuntu Mono",
    monospace;
  font-size: 1rem;
  justify-content: center;
  line-height: 1.5rem;
  /* padding: 15px; */
  position: relative;
  text-align: left;
  transition: 0.2s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: pre;
  width: max-content;
  word-break: normal;
  word-spacing: normal;
}

.button-67:hover {
  background: #f8f8ff;
  box-shadow: -15px -15px 30px 0 #fff, 15px 15px 30px 0 #1d0dca17;
}

@media (min-width: 768px) {
  .button-67 {
    padding: 24px;
  }
}
</style>
