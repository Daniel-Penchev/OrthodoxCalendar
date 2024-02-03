<template>
  <!-- <swiper  :options="swiperOptions"  @transitionEnd="onSwiperTransitionEnd" v-if="props.showDatePicker">
  <swiper-slide v-for="day in dateArray" > -->
  <div class="date-navigation">
    <button
      @click="moveMonthBackward"
      class="datePrevious"
      v-if="props.showDatePicker && !data.isDropDownOpen"
    >
      <svg
        stroke-linecap="round"
        stroke-linejoin="round"
        viewBox="0 0 24 24"
        width="24"
        height="24"
        class="vc-base-icon"
      >
        <polyline points="15 18 9 12 15 6"></polyline>
      </svg>
    </button>

    <button
      @click="moveBackward"
      class="datePrevious"
      v-if="!props.showDatePicker && !data.isDropDownOpen"
    >
      <svg
        stroke-linecap="round"
        stroke-linejoin="round"
        viewBox="0 0 24 24"
        width="24"
        height="24"
        class="vc-base-icon"
      >
        <polyline points="15 18 9 12 15 6"></polyline>
      </svg>
    </button>

    <!-- <div v-for="holiday in calculatedHolidays" :key="holiday.name">
      <div>{{ holiday.name }}: {{ holiday.date }}</div>
    </div> -->

      <div
        style="
          display: flex;
          justify-content: center;
          align-items: center;
          flex-direction: column;
        "
      >
        <button @click="openDropDownwithMonth" class="centerButton">
          {{ format(selectedDate, "MMMM yyyy") }}
        </button>
        <!-- Month and year dropdown -->
        <div v-if="data.isDropDownOpen" class="dropdown">

          <div
            style="
              display: flex;
              justify-content: center;
              box-sizing: border-box;
              padding: 4%;
              margin-top: 5%;
              margin-bottom: 5%;
              border-top: 2px solid rgb(183, 180, 180);
              border-bottom: 2px solid rgb(183, 180, 180);
            "
           >
           <!-- Move Year -->
            <button @click="moveYearBackward" class="datePrevious">
              <svg
                stroke-linecap="round"
                stroke-linejoin="round"
                viewBox="0 0 24 24"
                width="24"
                height="24"
                class="vc-base-icon"
              >
                <polyline points="15 18 9 12 15 6"></polyline>
              </svg>
            </button>

            <div class="container">
              <span
                v-if="!editMode"
                @click="enterEditMode"
                style="font-size: larger; cursor: pointer"
                >{{ selectedDate.getFullYear() }}</span
              >
              <input
                v-if="editMode"
                v-model="selectedYear"
                @input="updateSelectedYear"
                @blur="exitEditMode"
                type="number"
                style="width: 60px; border: solid; border-radius: 5%"
              />
            </div>
            <button @click="moveYearForward" class="dateNext">
              <svg
                stroke-linecap="round"
                stroke-linejoin="round"
                viewBox="0 0 24 24"
                width="24"
                height="24"
                class="vc-base-icon"
              >
                <polyline points="9 18 15 12 9 6"></polyline>
              </svg>
            </button>
           <!--     -->
           </div>
           <div style="display: flex;justify-content: space-between;align-items: center;">
            <button
                    
                    @click="goToCurrentDay"
                    class="currentDayButton"
                    >
                      Днешният ден
                    </button>
                  <button
                    
                    @click="goToGreatDay"
                    class="greatDayButton"
                  >
                    Велик ден през {{ selectedYear }}
                  </button>
          </div>
  

          <div
            style="
              display: grid;
              grid-template-columns: repeat(3, 1fr);
              gap: 10px;
            "
          >
            <button
              v-for="(month, index) in data.months"
              :key="index"
              @click="changeMonth(index)"
              class="buttonMonthSelect"
              :class="{ active: index === selectedMonth }"
            >
              {{ month }}
            </button>
          </div>
        </div>
      </div>
    <button
      @click="moveForward"
      class="dateNext"
      v-if="!props.showDatePicker && !data.isDropDownOpen"
    >
      <svg
        stroke-linecap="round"
        stroke-linejoin="round"
        viewBox="0 0 24 24"
        width="24"
        height="24"
        class="vc-base-icon"
      >
        <polyline points="9 18 15 12 9 6"></polyline>
      </svg>
    </button>

    <button
      @click="moveMonthForward"
      class="dateNext"
      v-if="props.showDatePicker && !data.isDropDownOpen"
    >
      <svg
        stroke-linecap="round"
        stroke-linejoin="round"
        viewBox="0 0 24 24"
        width="24"
        height="24"
        class="vc-base-icon"
      >
        <polyline points="9 18 15 12 9 6"></polyline>
      </svg>
    </button>
  </div>

  <div v-if="props.showDatePicker">
    <DatePickerComponent
      v-model="selectedDate"
      :attributes="combinedAttributes"
      :select-attribute="selectAttribute"
      :first-day-of-week="2"
      style="width: 100%"
      mode="date"
      :key="selectedDate.getTime()"
      :showDatePicker="props.showDatePicker"
      @click="handleDatePickerClick"
    />
  </div>

  <!-- <button
    v-if="props.showDatePicker"
    @click="goToCurrentDay"
    class="greatDayButton"
  >
    Днешният ден
  </button>
  <button
    v-if="props.showDatePicker"
    @click="goToGreatDay"
    class="greatDayButton"
  >
    Велик ден през {{ selectedYear }}
  </button> -->
  <!-- <div class="event-text" v-if="hasEvents">
      <p :class="{ 'red-text': isHoliday || isWeekend ,'highlight-day': isHoliday }">
        {{ formatDate(selectedDate) }} - {{ isHoliday }}
        <span v-if="isHoliday">✞ </span><strong>{{ calendarEvent.nameHoliday }}</strong>
      </p>

   </swiper-slide>
</swiper> -->
  <!-- <p>Swiper</p> -->
  <!-- <swiper :loop="true" >3
    <swiper-slide>Slide 1</swiper-slide>
    <swiper-slide>Slide 2</swiper-slide>
    <swiper-slide>Slide 3</swiper-slide>
</swiper> -->
</template>

<script setup lang="ts">
import { ref, onMounted, watch, computed } from "vue";
import { format } from "date-fns";
// import { Swiper , SwiperSlide } from 'swiper/vue';
// import 'swiper/swiper-bundle.css';
import { DatePicker as DatePickerComponent } from "v-calendar";
import { reactive } from "vue";

const props = defineProps(["showDatePicker"]);

interface EventData {
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
interface Holiday {
  name: string;
  date: string;
  offset: number;
  isEaster: boolean;
}
const selectAttribute = ref({ dot: true });
const events = ref<EventData[]>([]);
const currentDate = ref(new Date());
const selectedDate = ref(new Date());
const selectedYear = computed(() => selectedDate.value.getFullYear());
const selectedMonth = computed(() => selectedDate.value.getMonth());

const data = reactive({
  isDropDownOpen: false,
  selectedMonth: selectedDate.value.getMonth(),
  months: [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ],
});

const openDropDownwithMonth = () => {
  data.isDropDownOpen = !data.isDropDownOpen;
};

const changeMonth = (index: number) => {
  // Adjust the index to match JavaScript's month representation (0 to 11)
  const adjustedIndex = index;

  if (Array.isArray(index) && index.length > 0) {
    data.selectedMonth = adjustedIndex + 2;
  } else {
    data.selectedMonth = adjustedIndex;
  }

  const newDate = new Date(selectedDate.value);
  // Set the date to the 1st of the selected month
  newDate.setDate(1);
  newDate.setMonth(adjustedIndex);
  selectedDate.value = newDate;
};

// const changeYear = () => {
//   const newDate = new Date(selectedDate.value);
//   newDate.setFullYear(data.selectedYear);
//   selectedDate.value = newDate;
// };

const emit = defineEmits();

// const formatDate = (date: Date | null | undefined) => {
//   if (date) {
//     return format(date, 'M-d');
//   }
//   return format(currentDate.value, 'M-d');
// };

// Computed
//===========================================================
// const hasEvents = computed(() => events.value.some(event => event.date === formatDate(selectedDate.value)));
// const isHoliday = computed(() => {
//   const selectedDateString = formatDate(selectedDate.value);
//   const event = events.value.find(event => event.date === selectedDateString);
//   return event ? event.isHoliday : false;
// });
// const isWeekend = computed(() => {
//   const dayOfWeek = selectedDate.value.getDay();
//   return dayOfWeek === 0 || dayOfWeek === 7; // 0 is Sunday, 7 is Saturday
// });
//===========================================================

// Computed ref for attributes
const combinedAttributes = computed(() => {
  const holidaysAttributes = calculatedHolidays.value.map((holiday) => {
    return {
      key: holiday.name,
      highlight: { color: "red", width: "2px", fillMode: "outline" },
      dates: holiday.date,
      class: "holiday-highlight", // Добавяне на класа за празници
    };
  });

  return [
    {
      key: "today",
      highlight: { color: "white", width: "2px", fillMode: "outline" },
      dates: currentDate.value,
    },
    {
      key: "selected",
      content: "blue",
      highlight: { color: "white", width: "8px", fillMode: "outline"  },
      dates: selectedDate.value,
    },
    ...holidaysAttributes,
  ];
});

//При зареждане на компонента
onMounted(async () => {
  try {
    const response = await fetch("/src/data/church_holidays.json");
    events.value = await response.json();
    selectedDate.value = currentDate.value;
    emit("update:selectedDate", selectedDate.value);

    // // Update combinedAttributes on page load
    // updateCombinedAttributes();
  } catch (error) {
    console.error("Error reading events:", error);
    events.value = [];
  }
});

//===========================================================
//За зареждане на всяка избрана дата
//===========================================================
// Гледане за промяна на selectedDate
watch(selectedDate, (newDate) => {
  updateCalendarEvent(newDate);
  // Допълнителен код за следене на промените в годината
  emit("update:selectedDate", newDate);
});

// Приемане на промяна в selectedDate
function updateCalendarEvent(newDate: number | Date) {
  if (newDate) {
    emit("update:selectedDate", newDate);
  }
}

//Старият вариант при който селектвах с кръстче
//Гледа за промяна с selectedDate
watch(selectedDate, (newDate) => {
  updateCalendarEvent(newDate);
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
    name: " Неделя на митаря и фарисея",
    date: "",
    offset: -70,
    isEaster: false,
  },
  { name: "Неделя на блудния син", date: "", offset: -63, isEaster: false },
  // { name: 'Месен четвъртък (гръцка традиция! - Tsiknopempti)', date: '', offset: -59 },
  {
    name: "Събота срещу Неделя Месопустна Задушница",
    date: "",
    offset: -57,
    isEaster: false,
  },
  { name: "Месна неделя", date: "", offset: -56, isEaster: false },
  { name: "Сирничка (Прошка) Неделя", date: "", offset: -49, isEaster: false },
  {
    name: "Чисти понеделник (започва Великият пост - пост 6 седмици)",
    date: "",
    offset: -48,
    isEaster: false,
  },
  { name: "Свети Теодор", date: "", offset: -43, isEaster: false },
  { name: "Неделя на Православието ", date: "", offset: -42, isEaster: false },
  { name: "Свети Григорий Палама ", date: "", offset: -35, isEaster: false },
  { name: "Лазарова събота ", date: "", offset: -8, isEaster: false },
  { name: "Цветница ", date: "", offset: -7, isEaster: false },
  { name: "Велики понеделник ", date: "", offset: -6, isEaster: false },
  { name: "Велики вторник", date: "", offset: -5, isEaster: false },
  { name: "Велика сряда", date: "", offset: -4, isEaster: false },
  { name: "Велики четвъртък ", date: "", offset: -3, isEaster: false },
  { name: "Велики петък", date: "", offset: -2, isEaster: false },
  { name: "Велика събота", date: "", offset: -1, isEaster: false },
  { name: "СВЕТИ ВЕЛИКДЕН ", date: "", offset: 0, isEaster: true },
  {
    name: "2-ри ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 1,
    isEaster: false,
  },
  {
    name: "3-ти ден от Светлата седмица (Седмица на Пасха, Седмица на обновлението) - светъл вторник",
    date: "",
    offset: 2,
    isEaster: false,
  },
  {
    name: "4-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 3,
    isEaster: false,
  },
  {
    name: "5-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 4,
    isEaster: false,
  },
  {
    name: "6-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 5,
    isEaster: false,
  },
  { name: "Ден на животворния фонтан ", date: "", offset: 5, isEaster: false },
  {
    name: "7-ми ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 6,
    isEaster: false,
  },
  { name: "Неделя на Тома ", date: "", offset: 7, isEaster: false },
  {
    name: "Неделя на жените мироносици ",
    date: "",
    offset: 14,
    isEaster: false,
  },
  { name: "Неделя на паралитика ", date: "", offset: 21, isEaster: false },
  { name: "Свето Възнесение ", date: "", offset: 39, isEaster: false },
  {
    name: "Събота срещу Петдесетница Задушница",
    date: "",
    offset: 48,
    isEaster: false,
  },
  { name: "Света Петдесетница", date: "", offset: 49, isEaster: false },
  { name: "Понеделник на Светия Дух", date: "", offset: 50, isEaster: false },
  { name: "Неделя на всички светии", date: "", offset: 56, isEaster: false },
  // ................................
]);

const calculatedHolidays = computed(() => {
  const easterDate = calculateOrthodoxEaster(selectedYear.value);
  return holidays.value.map((holiday) => {
    const holidayDate = new Date(easterDate);
    holidayDate.setDate(easterDate.getDate() + holiday.offset);
    return { ...holiday, date: holidayDate };
  });
});

const goToGreatDay = () => {
  // Тук сложете логиката за промяна на датата на "Велики ден"
  selectedDate.value = calculateOrthodoxEaster(selectedYear.value);
};
const goToCurrentDay = () => {
  selectedDate.value = currentDate.value;
};

// Свързано е с input year
const editMode = ref(false);

const enterEditMode = () => {
  editMode.value = true;
};

const exitEditMode = () => {
  editMode.value = false;
};
const updateSelectedYear = (event: Event) => {
  const newYear = parseInt((event.target as HTMLInputElement).value, 10);

  if (!isNaN(newYear)) {
    const newDate = new Date(selectedDate.value);
    newDate.setFullYear(newYear);
    selectedDate.value = newDate;
    calculateOrthodoxEaster(newYear);
  }
};

// Store the last clicked date
let lastClickedDate = ref<number | null>(null);

// Function to handle date picker click
const handleDatePickerClick = (selectedDateValue: number) => {
  // Check if the date has changed since the last click
  if (lastClickedDate.value !== selectedDateValue) {
    console.log("isDatePickerDisabled.value" + lastClickedDate.value);
    console.log("isDatePickerDisabled.value" + selectedDateValue);

    setTimeout(() => {
      lastClickedDate.value = selectedDateValue; // Update the last clicked date
    }, 1000); // 1-second delay
  }
};
//===========================================================
// All About Slider
//===========================================================

// const onSwiperTransitionEnd = (swiper: any) => {
//   if (swiper && swiper.realIndex !== undefined) {
//     const direction = swiper.realIndex > swiper.previousIndex ? 'next' : 'prev';
//     if (direction === 'next') {
//       moveForward();
//     } else if (direction === 'prev') {
//       moveBackward();
//     }
//   }
// };

// Simplified moveForward and moveBackward
// const moveForward = () => {
//   selectedDate.value.setDate(selectedDate.value.getDate() + 1);
// };

// const moveBackward = () => {
//   selectedDate.value.setDate(selectedDate.value.getDate() - 1);
// };
const moveForward = () => {
  // Преместване напред
  const newDate = new Date(selectedDate.value);
  newDate.setDate(newDate.getDate() + 1);
  selectedDate.value = newDate;
};

const moveBackward = () => {
  // Преместване назад
  const newDate = new Date(selectedDate.value);
  newDate.setDate(newDate.getDate() - 1);
  selectedDate.value = newDate;
};
const moveYearForward = () => {
  const newDate = new Date(selectedDate.value);
  const selectedMonth = selectedDate.value.getMonth();
  newDate.setFullYear(newDate.getFullYear() + 1);
  // Keep the same month
  newDate.setMonth(selectedMonth);
  selectedDate.value = newDate;
  calculateOrthodoxEaster(newDate.getFullYear());
};

const moveYearBackward = () => {
  const newDate = new Date(selectedDate.value);
  const selectedMonth = selectedDate.value.getMonth();
  newDate.setFullYear(newDate.getFullYear() - 1);
  // Keep the same month
  newDate.setMonth(selectedMonth);
  selectedDate.value = newDate;
  calculateOrthodoxEaster(newDate.getFullYear());
};

const moveMonthForward = () => {
  const newDate = new Date(selectedDate.value);
  newDate.setMonth(newDate.getMonth() + 1);
  selectedDate.value = newDate;
  calculateOrthodoxEaster(newDate.getFullYear());
};

const moveMonthBackward = () => {
  const newDate = new Date(selectedDate.value);
  newDate.setMonth(newDate.getMonth() - 1);
  selectedDate.value = newDate;
  calculateOrthodoxEaster(newDate.getFullYear());
};
// const dateArray = ref<Date[]>([]);
//   const dateArray = computed(() => {
//   const dates = [];
//   let currentDate = new Date(selectedDate.value.getTime());
// console.log("currentDate DATEARRAY: "+currentDate);

//   // Find the last day of the current month
//   const lastDayOfMonth = new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0).getDate();

//   // Add all dates from the current month and the next month if needed
//   for (let i = 0; i < lastDayOfMonth + 7; i++) {
//     dates.push(new Date(currentDate));
//     currentDate.setDate(currentDate.getDate() + 1);

//     // If we reached the end of the current month, move to the next month
//     if (currentDate.getDate() === 1) {
//       currentDate.setMonth(currentDate.getMonth() + 1);
//     }
//   }

//   return dates;
// });

// const swiperOptions = {
//   pagination: {
//     el: '.swiper-pagination',
//     clickable: true,
//   },
//   autoplay: {
//     delay: 1000, // Set the delay between slides in milliseconds (e.g., 5000 milliseconds or 5 seconds)
//   },
//   slidesPerView: 1, // Show one slide at a time
//   slidesPerGroup: 1,
//   spaceBetween: 20,
//   speed: 500,
// };

// navigation: {
//     nextEl: '.swiper-button-next',
//     prevEl: '.swiper-button-prev',
//   },
//===========================================================
</script>

<style>
.event-text {
  margin-top: 20px;
  font-size: 18px;
}

.red-text {
  color: red;
}

.date-navigation {
  display: flex;
  align-items: center;
  justify-content: space-around;
  margin-bottom: auto;
  margin-top: 5%;
}


.datePrevious {
  background-color: #f0f0f0;
  text-align: center;
  padding: 1%;
  color: #65758b;
  font-size: 35px;
  border-radius: 10%;
  z-index: 4;
  margin-right: 2%;
}

.dateNext {
  background-color: #f0f0f0;
  text-align: center;
  padding: 1%;
  color: #65758b;
  font-size: 35px;
  border-radius: 10%;
  z-index: 4;
  margin-left: 2%;
}
.custom-date-navigation {
  display: flex;
  align-items: center;
  justify-content: space-around;
  gap: 5%;
}

.custom-date-button {
  background-color: black;
  text-align: center;
  padding: 2%;
  color: white;
  font-size: 20px;
  border-radius: 10%;
  margin: 0 10px;
  cursor: pointer;
}

.dropdown {
  z-index: 5;
}


.buttonMonthSelect {
  width: 100%;
  padding: 15px;
  text-align: center;
  cursor: pointer;
  color: #0f172a;
  font-size: 100%;
  font-weight: 600;
}

.active {
  background-color: #3498db;
  color: #fff;
}
.vc-day {
  width: 40px; /* Adjust the width as needed */
  /* For phone */
  margin-left: 36px;

  @media screen and (max-width: 325px) {
    margin-right: 1px;
    width: 30px;
  }
  @media screen and (max-width: 600px) {
    margin-left: 3px;
  }
  @media screen and (min-width: 1024px) {
    margin-left: 50px;
  }
  @media screen and (min-width: 1400px) {
    margin-left: 79px;
  }
}

/* input year conteiner */
.container {
  cursor: pointer;
  display: inline-block;
  padding: 5px;
}

/* day 0 and day 7 */
/* S M T W T F S */
.vc-container .vc-weekday-1,
.vc-container .vc-weekday-7,
.vc-container .weekday-position-6,
.vc-container .weekday-position-7 {
  color: #ff0630 !important;
}
.vc-weekdays {
  font-size: large;
  padding: 0px;
}

.vc-pane-header-wrapper {
  display: none;
}
/* Реда дни */
.vc-week {
  height: 60px;
}
.vc-week:last-child {
  height: 30px;
}

/* .yearPrevious {
  background-color: #f0f0f0;
  text-align: center;
  padding: 1%;
  color: #65758b;
  font-size: 26px;
  border-radius: 20%;
  z-index: 4;
}
.yearNext {
  background-color: #f0f0f0;
  text-align: center;
  padding: 1%;
  color: #65758b;
  font-size: 26px;
  border-radius: 20%;
  z-index: 4;
} */

/* Бутоните за днешният ден и велик ден */
.greatDayButton {
  background-color: #f0f0f0;
    text-align: center;
    padding: 3%;
    color: #0f172a;
    font-size: 14px;
    font-weight: 600;
    /* border-radius: 10% 16% 50% 70%; */
    width: 24%;
    margin-top: -30%;
}
.currentDayButton {
  background-color: #f0f0f0;
    text-align: center;
    padding: 3%;
    color: #0f172a;
    font-size: 14px;
    font-weight: 600;
    /* border-radius: 10% 16% 50% 70%; */
    width: 28%;
    margin-top: -30%;
}
/*--------------------------*/

.centerButton {
  background-color: #f0f0f0;
  text-align: center;
  color: #0f172a;
  font-size: 20px;
  font-weight: 600;
  border-radius: 4%;
  z-index: 4;
  width: 160px;
  height: 77px;
}
/* Add a new style for highlighting holidays */
/* .highlight-day {
  color: #ff0630 !important;
} */

/* .vc-header {
  padding-top: 289px;
  padding-bottom: 52px;
} */
.vc-nav-header {
  display: none;
}
.vc-popover-content-wrapper {
  display: none;
}
.vc-header .vc-title:hover {
  opacity: 1;
}
/* Селекта за месеци и години */
.vc-header .vc-title {
  white-space: nowrap;
  font-weight: 600;
  font-size: 100%;
  padding: 19px 26px;
  margin: -25px;
  cursor: context-menu;
  /* line-height: 30px; */
  display: none;
}

.vc-day-content {
  font-size: larger;
}
.vc-time-select-group {
  display: none;
}
.vc-next {
  display: none;
}
/* Отстояние от цифрите на календарът и слайдъра */
.vc-weeks {
  margin-bottom: 4%;
}

/* Навигацията с месеците и годините */
.vc-nav-container {
  width: 281px;
}
.vc-nav-arrow {
  width: 51px;
}
.vc-nav-title {
  width: 111px;
  height: 37px;
  font-size: larger;
}
.vc-nav-item {
  width: 90px;
  height: 60px;
  font-size: large;
}



/* Избраната дата */

.vc-light.vc-attr,
.vc-light .vc-attr {
  --vc-highlight-solid-bg: rgb(
    250 183 81
  ); 
  --vc-highlight-outline-border: white;
  
  /* Новият цвят в RGB формат (червен цвят) */
  /* --vc-highlight-outline-content-color: white; */
}

/* Текуща дата */
.vc-highlight-content-outline {
  /* Тук е заа текущата и за избраната */
  background: url("../assets/img/cross5.png") center center no-repeat;
  background-size: 58px;
    background-position-y: 9px;
    width: 40px;
    height: 66px;
}

/* Holidays */
.vc-highlight-content-outline.vc-red {
  /* Тук е мястото за иконката църква */
  background: url("../assets/img/church.png") center center no-repeat;
  background-size: 57px;
  background-position-y: -5px;
  width: 40px;
  height: 54px;
}




/* Стилове за бутоните */
.vc-base-icon {
  width: 100%;
}
</style>
