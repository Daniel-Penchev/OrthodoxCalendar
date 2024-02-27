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
      <button @click="openDropDownwithMonth" class="centerButton" style="display: flow;">
        <p style="margin-bottom: -6%;margin-top: 12%;">{{ selectedDate ? format(selectedDate, "MMMM") : "" }}</p>
        <p style="font-size: medium;">{{ selectedDate ? format(selectedDate, "yyyy") : "" }}</p>
      </button>
        <!-- Month and year dropdown -->
        <div v-if="data.isDropDownOpen" class="dropdown">

          <div
            style="
              display: flex;
              justify-content: center;
              box-sizing: border-box;
              padding: 4%;
              margin-top: 0%;
              margin-bottom: 2%;
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
                >{{ selectedDate && selectedDate instanceof Date ? selectedDate.getFullYear() : '' }}</span
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

           
           <div style="display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 10px;
                padding-top: 5%;">
            <button
                    
                    @click="goToCurrentDay"
                    class="currentDayButton"
                    >
                     <p>Днешният ден</p> 
                    </button>
                  <button
                    
                    @click="goToGreatDay"
                    class="greatDayButton"
                  >
                  <p>Велик ден {{ selectedYear }}</p> 
                    
                  </button>
          </div>
  

          <div
            style="
              display: grid;
              grid-template-columns: repeat(3, 1fr);
              gap: 10px;
              border-top: 1px solid rgb(183, 180, 180);
              padding-top: 5%;
              margin-top: 5%;
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
    />
  </div>
   <!-- </swiper-slide>
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
}
const selectAttribute = ref({content: 'blue',});
const events = ref<EventData[]>([]);
const currentDate = ref(new Date());
const selectedDate = ref(new Date());
const selectedMonth = computed(() => {
  if (selectedDate.value instanceof Date) {
    return selectedDate.value.getMonth();
  } else {
    return null;
  }
});
const selectedYear = computed(() => {
  if (selectedDate.value instanceof Date) {
    return selectedDate.value.getFullYear();
  } else {
    return null; 
  }
});

const data = reactive({
  isDropDownOpen: false,
  selectedMonth: selectedDate.value.getMonth(),
  months: [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "June",
    "July",
    "Aug",
    "Sept",
    "Oct",
    "Nov",
    "Dec",
  ],
});


const openDropDownwithMonth = () => {
  data.isDropDownOpen = !data.isDropDownOpen;
};

const changeMonth = (index: number) => {
  // Adjust the index to match JavaScript's month representation (0 to 11)
  const adjustedIndex = index;

  data.isDropDownOpen = false;
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



//Това е при doubleclick 
watch(selectedDate, (newValue,oldValue) => {
  if (newValue === null) {
    selectedDate.value = oldValue; // Ако selectedDate е null, задайте го на текущата дата
  }
});

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
      highlight: { color: "red", width: "2px", fillMode: "light", class: "vc-highlight-content-outline vc-red" },
      dates: holiday.date,
    };
  });

  return [
    {
      key: "today",
      highlight: { color: "blue", width: "2px", fillMode: "light", class: "vc-highlight-content-outline vc-content-today" },
      dates: currentDate.value,
    },
    {
      key: "selected",
      highlight: { color: "blue", width: "5px", fillMode: "light", class: "vc-highlight-content-outline vc-content-selected" },
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

    updateCalendarEvent(selectedDate.value)
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
  if (newDate instanceof Date && !isNaN(newDate.getTime())) {
    updateCalendarEvent(newDate);
    emit("update:selectedDate", newDate);
  }
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
  { name: '✝ Нова година. Обрезание Господне', date: '01-01', offset: -1 },
  { name: '✝ Неделя преди Богоявление', date: '01-01', offset: -2 },
  { name: '✝ Св. Богоявление', date: '01-06', offset: -1 },
  { name: '✝ Св. Йоан Кръстител ', date: '01-07', offset: -1 },
  { name: '✝ Неделя след Богоявление ', date: '01-07', offset: -1 },
  { name: '✝ Сретение Господне', date: '02-02', offset: -1 },
  { name: '✝ Благовещение', date: '03-25', offset: -1 },
  { name: '✝ Св. вмчк Георги Победоносец', date: '05-06', offset: -1 },
  { name: '✝ Св. равноапостолни Методий и Кирил', date: '05-11', offset: -1 },
  { name: '✝ Св. първовърховни апостоли Петър и Павел', date: '06-29', offset: -1 },
  { name: '✝ Св. пророк Илия', date: '07-20', offset: -1 },
  { name: '✝ Преображение Господне', date: '08-06', offset: -1 },
  { name: '✝ Успение на Пресвета Богородица', date: '08-15', offset: -1 },
  { name: '✝ Начало на Църковната нова година', date: '09-01', offset: -1 },
  { name: '✝ Рождество на Пресвета Богородица', date: '09-08', offset: -1 },
  { name: '✝ Въздвижение на Св. Кръст Господен', date: '09-14', offset: -1 },
  { name: '✝ Преп. Йоан Рилски Чудотворец', date: '10-19', offset: -1 },
  { name: '✝ Преп. Йоан Рилски Чудотворец', date: '10-19', offset: -1 },
  { name: '✝ Св. вмчк Димитрий Мироточиви', date: '10-26', offset: -1 },
  { name: '✝ Събор на св. архангел Михаил', date: '11-08', offset: -1 },
  { name: '✝ Въведение Богородично', date: '11-21', offset: -1 },
  { name: '✝ Св. Николай, архиеп. Мирликийски, Чудотворец', date: '12-06', offset: -1 },
  { name: '✝ Рождество Христово', date: '12-25', offset: -1 },
  { name: '✝ Събор на Пресвета Богородица', date: '12-26', offset: -1 },
  { name: '✝ Св. първомъченик и архидякон Стефан', date: '12-27', offset: -1 },
  {
    name: "✝ Неделя 14 след Неделя подир Въздвижение на Йерихонския слепец",
    date: "",
    offset: -98,
  },
  {
    name: "✝ Неделя 15 след Неделя подир Въздвижение на Закхея",
    date: "",
    offset: -91,
  },
  {
    name: "✝ Неделя 16 подир Петдесетница за Талантите",
    date: "",
    offset: -84,
  },
  {
    name: "✝ Неделя 17 след Петдесетница – на Хананейката",
    date: "",
    offset: -77,
  },
  {
    name: "✝ Неделя 16 след Неделя подир Въздвижение на Митаря и Фарисея",
    date: "",
    offset: -70,
  },
  { name: "✝ Неделя 17 след Неделя подир Въздвижение - на Блудния син", date: "", offset: -63 },
  // { name: 'Месен четвъртък (гръцка традиция! - Tsiknopempti)', date: '', offset: -59 },
  {
    name: "Събота срещу Неделя Месопустна Задушница",
    date: "",
    offset: -57,
  },
  { name: "Месна неделя", date: "", offset: -56 },
  { name: "Сирничка (Прошка) Неделя", date: "", offset: -49 },
  {
    name: "Чисти понеделник (започва Великият пост - пост 6 седмици)",
    date: "",
    offset: -48,
  },
  { name: "Тодорова събота", date: "", offset: -43 },
  { name: "✝ 1 Неделя на Великия пост - Православна", date: "", offset: -42 },
  { name: "✝ 2 Неделя на Великия пост - Св. Григорий Палама", date: "", offset: -35 },
  { name: "✝ 3 Неделя на Великия пост Кръстопоклонна", date: "", offset: -28 },
  { name: "✝ 4 Неделя на Великия пост - Преп. Йоан Лествичник", date: "", offset: -21 },
  { name: "✝ 5 Неделя на Великия пост - Преп. Мария Египетска", date: "", offset: -14 },
  { name: "Лазарова събота ", date: "", offset: -8 },
  { name: "✝ 6 Неделя на Великия пост Вход Господен в Йерусалим Връбница Цветница", date: "", offset: -7 },
  { name: "Велики понеделник ", date: "", offset: -6 },
  { name: "Велики вторник", date: "", offset: -5 },
  { name: "Велика сряда", date: "", offset: -4 },
  { name: "Велики четвъртък ", date: "", offset: -3 },
  { name: "Велики петък", date: "", offset: -2 },
  { name: "Велика събота", date: "", offset: -1 },
  { name: "СВЕТИ ВЕЛИКДЕН ", date: "", offset: 0 },
  
  {
    name: "2-ри ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 1,
  },
  {
    name: "3-ти ден от Светлата седмица (Седмица на Пасха, Седмица на обновлението) - светъл вторник",
    date: "",
    offset: 2,
  },
  {
    name: "4-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 3,
  },
  {
    name: "5-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 4,
  },
  {
    name: "6-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 5,
  },
  { name: "Ден на животворния фонтан ", date: "", offset: 5 },
  {
    name: "7-ми ден от Светлата седмица (седмица на Пасха, седмица на обновлението)",
    date: "",
    offset: 6,
  },
  { name: "✝ 2 Неделя след Пасха - Тома ", date: "", offset: 7 },
  {
    name: "✝ 3 Неделя след Пасха - на св. Мироносици",
    date: "",
    offset: 14,
  },
  { name: "✝ 4 Неделя след Пасха - на Разслабления", date: "", offset: 21 },
  { name: "✝ 5 Неделя след Пасха на Самарянката", date: "", offset: 28 },
  { name: "✝ 6 Неделя след Пасха - на Слепия", date: "", offset: 35 },
  { name: "Свето Възнесение ", date: "", offset: 39 },
  { name: "✝ 7 Неделя след Пасха - на св. Отци от Първиявселенски събор", date: "", offset: 42 },
  {name: " Събота срещу Петдесетница Задушница",date: "",offset: 48, },
  { name: "✝ 8 Неделя след Пасха Петдесетница", date: "", offset: 49 },
  { name: "Понеделник на Светия Дух", date: "", offset: 50 },
  { name: "✝ 1 Неделя след Петдесетница - на Всички светии", date: "", offset: 56 },
  { name: "✝ 2 Неделя след Петдесетница - на Всички български светии", date: "", offset: 63 },
  { name: "✝ 3 Неделя след Петдесетница", date: "", offset: 70 },
  { name: "✝ 4 Неделя след Петдесетница", date: "", offset: 77  },
  { name: "✝ 5 Неделя след Петдесетница", date: "", offset: 84 },
  { name: "✝ 6 Неделя след Петдесетница", date: "", offset: 91 },
  { name: "✝ 7 Неделя след Петдесетница", date: "", offset: 98 },
  { name: "✝ 8 Неделя след Петдесетница", date: "", offset: 105 },
  { name: "✝ 9 Неделя след Петдесетница", date: "", offset: 112 },
  { name: "✝ 10 Неделя след Петдесетница", date: "", offset: 119 },
  { name: "✝ 11 Неделя след Петдесетница", date: "", offset: 126 },
  { name: "✝ 12 Неделя след Петдесетница", date: "", offset: 133 },
  // Error
  { name: "✝ 13 Неделя след Петдесетница", date: "", offset: 140 }, 
  { name: "✝ 1 Неделя подир Въздвижение", date: "", offset: 147 },
  { name: "✝ 2 Неделя след Неделя подир Въздвижение", date: "", offset: 154 },
  { name: "✝ 3 Неделя след Неделя подир Въздвижение", date: "", offset: 161 },
  { name: "✝ 4 Неделя след Неделя подир Въздвижение", date: "", offset: 168 },
  { name: "✝ 6 Неделя след Неделя подир Въздвижение - на св. Отци от VII Вселенски събор", date: "", offset: 175 },
  { name: "✝ 5 Неделя след Неделя подир Въздвижение", date: "", offset: 182 },
  { name: "✝ 7 Неделя след Неделя подир Въздвижение", date: "", offset: 189 },
  { name: "✝ 8 Неделя след Неделя подир Въздвижение", date: "", offset: 196 },
  { name: "✝ 9 Неделя след Неделя подир Въздвижение", date: "", offset: 203 },
  { name: "✝ 13 Неделя след Неделя подир Въздвижение", date: "", offset: 210 },
  { name: "✝ 10 Неделя след Неделя подир Въздвижение", date: "", offset: 217 },
  { name: "✝ 11 Неделя след Неделя подир Въздвижение", date: "", offset: 224 },
  { name: "✝ 12 Неделя след Неделя подир Въздвижение на св. Праотци", date: "", offset: 231 },
  { name: "Неделя преди Рождество Христово", date: "", offset: 238 },
  { name: "", date: "", offset: 245 },
  // ................................
]);


const calculatedHolidays = computed(() => {
  const easterDate = calculateOrthodoxEaster(selectedDate.value.getFullYear());
  const result = holidays.value.map(holiday => {
    let holidayDate;
    if (holiday.date) {
      const [month, day] = holiday.date.split('-').map(Number);
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

const goToGreatDay = () => {
  const year = selectedYear.value;
  if (year !== null) {
    selectedDate.value = calculateOrthodoxEaster(year);
    data.isDropDownOpen = false;
  }
};

const goToCurrentDay = () => {
  selectedDate.value = currentDate.value;
  data.isDropDownOpen = false;
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
  const newDate = new Date(selectedDate.value);
  newDate.setDate(newDate.getDate() + 1);
  selectedDate.value = newDate;
  emit("move-forward", newDate);
};

const moveBackward = () => {
  const newDate = new Date(selectedDate.value);
  newDate.setDate(newDate.getDate() - 1);
  selectedDate.value = newDate;
  emit("move-backward", newDate);
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

/* date-navigation */
.date-navigation {
  display: flex;
  align-items: center;
  justify-content: space-around;
  margin-bottom: auto;
  margin-top: 5%;
}
.date-navigation button,
.date-navigation div {
    transition: transform 0.3s ease-in-out, background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

/* .date-navigation button:active,
.date-navigation button:hover,
.date-navigation div:active,
.date-navigation div:hover {
    transform: scale(0.95);
    transition: transform 0.3s ease-in-out, background-color 0.3s ease-in-out, color 0.3s ease-in-out;
} */

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

.date-navigation button,
.date-navigation div {
    animation: fadeIn 0.5s ease-in-out;
}

.closing-animation {
    animation: fadeOut 0.5s ease-in-out;
}

@keyframes fadeOut {
    from {
        opacity: 1;
    }
    to {
        opacity: 0;
    }
}
/*  */

.datePrevious {
  background-color: #f0f0f0;
  text-align: center;
  padding: 1%;
  color: #65758b;
  font-size: 35px;
  border-radius: 10%;
  z-index: 4;
  margin-right: 2%;
  transition: transform 0.2s ease-in-out; 
}
.datePrevious:active {
    transform: scale(1.22); /* Смалява бутона при натискане */
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
    transition: transform 0.2s ease-in-out; /* Добавена транзиция за плавно променяне на състоянието */
}

.dateNext:active {
    transform: scale(1.22); /* Смалява бутона при натискане */
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
  padding: 5%;
}


.buttonMonthSelect {
  width: 100%;
  padding: 15px;
  text-align: center;
  cursor: pointer;
  color: #0f172a;
  font-size: 100%;
  font-weight: 600;
  border-radius: 7%;
}

.active {
  background-color: #3498db;
  color: #fff;
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
    font-weight: 600;
    /* border-radius: 10% 16% 50% 70%; */
    /* margin-top: -37%; */
    width: 100%;
    padding: 15px;
    cursor: pointer;
    color: #0f172a;
    font-size: 100%;
    border-radius: 7%;
}
.greatDayButton:active {
    background-color: #3498db;
    color: #fff;
}


.currentDayButton {
  background-color: #f0f0f0;
    text-align: center;
    font-weight: 600;
    /* border-radius: 10% 16% 50% 70%; */
    width: 100%;
    /* margin-top: -37%; */
    padding: 15px;
    cursor: pointer;
    color: #0f172a;
    font-size: 100%;
    border-radius: 7%;
}
.currentDayButton:active {
    background-color: #3498db;
    color: #fff;
}
/*--------------------------*/

.centerButton {
    background-color: #f0f0f0;
    text-align: center;
    color: #0f172a;
    font-size: 22px;
    font-weight: 600;
    border-radius: 4%;
    z-index: 4;
    width: 136px;
    height: 77px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}


.centerButton:active {
    transform: scale(1.11);
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
.vc-day {
    position: relative;
    min-height: 41px;
    z-index: 1;
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

/* .vc-light.vc-attr,
.vc-light .vc-attr {
  --vc-highlight-solid-bg: rgb(
    250 183 81
  ); 
  --vc-highlight-outline-border: white;
  --vc-highlight-light-content-color: #000000;
} */


/* Current */
.vc-highlight-content-outline.vc-content-today {
  background: url("../assets/img/currentDaySun.png") center center no-repeat;
  background-size: 59px;
  background-position-y: 4px;
  width: 40px;
  height: 66px;
  z-index: 4;
}

/* Selected */
.vc-highlight-content-outline.vc-content-selected {
  /* Add your styles for the selected date here */
  /* For example: */
  background: url('../assets/img/cross5.png') center center no-repeat;
    width: 50px;
    height: 64px;
    z-index: 5;
    background-size: 53px;
    background-position-y: 14px;
}
.vc-content:not(.vc-base) {
    font-weight:bold;
    color: #1e3a8a;
}

/* Holidays */
.vc-highlight-content-outline.vc-red {
  /* Тук е мястото за иконката църква */
  background: url('/src/assets/img/church.png') center center no-repeat;
    background-size: 53px;
    background-position-y: -1px;
    width: 40px;
    height: 54px;
    z-index: 2;
}


/* Стилове за бутоните */
.vc-base-icon {
  width: 100%;
}
</style>
