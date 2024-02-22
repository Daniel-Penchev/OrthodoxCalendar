<template>
  <ion-card>
    <img
      alt="Silhouette of mountains"
      src="https://ionicframework.com/docs/img/demos/card-media.png"
    />
    <ion-card-header>
      <ion-card-title>ЦЪРКОВНИ ПРАЗНИЦИ</ion-card-title>
    </ion-card-header>

    <ion-card-content style="font-size:x-large;">
      <div width="52%" height="40" colspan="4" valign="bottom">
        <a name="ЦЪРКОВНИ"></a>
        <p>&nbsp;</p>
        <div v-for="month in sortedMonths" :key="month" style="margin-top: 12%;    border-bottom: 1px solid grey;"> 
          <b>{{ month }}</b>
          <div v-for="holiday in  getHolidaysByMonth(month)" :key="holiday.name" style="margin-top: 5%;display: flex; gap: 8%;justify-content: space-between;align-items: center;padding-bottom: 6%;">
            <!-- <b>{{ getMonthName(holiday.date) }}</b> -->
             <p class="styleDay">{{ parseInt(holiday.date.split('/')[1], 10) }}</p>
             <p class="styleName">{{ holiday.name }}</p>
             <br>
          </div>
      </div>
      </div>
    </ion-card-content>
  </ion-card>
</template>

<script setup lang="ts">
import {
  IonCard,
  IonCardContent,
  IonCardHeader,
  IonCardTitle,
} from "@ionic/vue";
import { computed, onMounted, ref } from "vue";

interface Holiday {
  name: string;
  date: string;
  offset: number;
  isEasterDay: boolean;
}
const calculatedHolidays = ref<Holiday[]>([]);

const selectedYear = ref<number>(new Date().getFullYear());

const holidays = ref<Holiday[]>([
  { name: "Сирничка (Прошка)", date: "", offset: -49 ,isEasterDay:false},
  { name: "Цветница ", date: "", offset: -7,isEasterDay:false },
  { name: "ВЪЗКРЕСЕНИЕ ХРИСТОВО - ПАСХА - ВЕЛИКДЕН", date: "", offset: 0 ,isEasterDay:true},
  { name: 'ВЪЗНЕСЕНИЕ ГОСПОДНЕ', date: '', offset: 39,isEasterDay:false },
  { name: "ПЕТДЕСЕТНИЦА - Осма неделя след Пасха", date: "", offset: 49,isEasterDay:false },
  { name: "СВЕТИ ДУХ", date: "", offset: 50,isEasterDay:false },
  { name: 'Св. Василий Велики (Васильовден)', date: '01/01', offset: 0 ,isEasterDay:false},
  { name: 'СВЕТО БОГОЯВЛЕНИЕ (Кръщение Господне, Йордановден)', date: '01/06', offset: 0,isEasterDay:false },
  { name: 'Събор на светия славен Пророк, Предтеча и Кръстител Господен Йоан (Ивановден)', date: '01/07', offset: 0,isEasterDay:false },
  { name: 'СРЕТЕНИЕ ГОСПОДНЕ от праведния Симеон', date: '02/02', offset: 0,isEasterDay:false },
  { name: 'СВЕТО БЛАГОВЕЩЕНИЕ НА ПРЕСВЕТА БОГОРОДИЦА', date: '03/25', offset: 0,isEasterDay:false },
  { name: 'СВ. ВЕЛИКОМЪЧЕНИК ГЕОРГИ ПОБЕДОНОСЕЦ (Гергьовден)', date: '05/06', offset: 0,isEasterDay:false },
  { name: 'СВ. РАВНОАПОСТОЛНИ МЕТОДИЙ († 885) И КИРИЛ († 869)', date: '05/11', offset: 0 ,isEasterDay:false},
  { name: 'СВ. ПЪРВОВЪРХОВНИ АПОСТОЛИ ПЕТЪР И ПАВЕЛ (Петровден)', date: '06/29', offset: 0 ,isEasterDay:false},
  { name: 'СВ. СЛАВЕН ПРОРОК ИЛИЯ (Илинден)', date: '07/20', offset: 0,isEasterDay:false },
  { name: 'ПРЕОБРАЖЕНИЕ ГОСПОДНЕ', date: '08/06', offset: 0,isEasterDay:false },
  { name: 'УСПЕНИЕ НА ПРЕСВЕТА БОГОРОДИЦА', date: '08/15', offset: 0,isEasterDay:false },
  { name: 'РОЖДЕСТВО НА ПРЕСВЕТА БОГОРОДИЦА', date: '09/08', offset: 0,isEasterDay:false },
  { name: 'ВЪЗДВИЖЕНИЕ НА СВЕТИЯ И ЖИВОТВОРЯЩ КРЪСТ ГОСПОДЕН (Кръстовден) (Строг пост)', date: '09/14', offset: 0,isEasterDay:false },
  { name: 'Св. преподобни Йоан Рилски чудотворец', date: '10/19', offset: 0,isEasterDay:false },
  { name: 'Св. великомъченик Димитрий Мироточиви Солунски (Димитровден)', date: '10/26', offset: 0 ,isEasterDay:false},
  { name: 'Събор на св. Архангел Михаил и другите небесни безплътни сили (Архангеловден).', date: '11/08', offset: 0,isEasterDay:false },
  { name: 'ВЪВЕДЕНИЕ БОГОРОДИЧНО.', date: '11/21', offset: 0,isEasterDay:false },
  { name: 'СВ. НИКОЛАЙ, архиепископ Мирликийски, Чудотворец (Никулден)', date: '12/06', offset: 0,isEasterDay:false },
  { name: 'РОЖДЕСТВО ХРИСТОВО', date: '12/25', offset: 0 ,isEasterDay:false},
  { name: 'Събор на Пресвета Богородица', date: '12/26', offset: 0,isEasterDay:false },
  { name: 'Св. първомъченик и архидякон Стефан (Стефановден)', date: '12/27', offset: 0,isEasterDay:false },

]);
const calculateHolidays = () => {
  const easterDate = calculateOrthodoxEaster(selectedYear.value);

  calculatedHolidays.value = holidays.value.map((holiday) => {
    // If offset is 0 and isEasterDay is false, keep the original date
    if (holiday.offset === 0 && !holiday.isEasterDay) {
      return {
        name: holiday.name,
        date: holiday.date,
        offset: holiday.offset,
        isEasterDay: false,
      };
    }

    const date = new Date(easterDate);

    // Check if the offset is not 0 before applying it
    if (holiday.offset !== 0) {
      date.setDate(date.getDate() + holiday.offset);
    }

    return {
      name: holiday.name,
      date: isNaN(date.getDate())
        ? "Invalid Date"
        : `${date.getMonth() + 1}/${date.getDate()}`,
      offset: holiday.offset,
      isEasterDay: holiday.isEasterDay,
    };
  });
   // Sort holidays by date
  //  calculatedHolidays.value.sort((a, b) => new Date(a.date).getTime() - new Date(b.date).getTime());
};

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

// const calculateCustomDate = (offset: number): Date => {
//   const orthodoxEaster = calculateOrthodoxEaster(selectedYear.value);
//   const date = new Date(orthodoxEaster);
//   date.setFullYear(selectedYear.value); // Set the correct year
//   date.setDate(date.getDate() + offset);
//   return date;
// };

onMounted(() => {
  calculateHolidays();
});


const sortedMonths = computed(() => {
  const uniqueMonths = new Set(calculatedHolidays.value.map(holiday => getMonthName(holiday.date)));
  return Array.from(uniqueMonths).sort((a, b) => {
    const months = [
      "Януари", "Февруари", "Март", "Април", "Май", "Юни",
      "Юли", "Август", "Септември", "Октомври", "Ноември", "Декември"
    ];
    return months.indexOf(a) - months.indexOf(b);
  });
});

const getHolidaysByMonth = (month: string) => {
  return calculatedHolidays.value.filter(holiday => getMonthName(holiday.date) === month);
};

const getMonthName = (dateString: string): string => {
  const date = new Date(dateString);
  const monthNames = [
    "Януари", "Февруари", "Март", "Април", "Май", "Юни",
    "Юли", "Август", "Септември", "Октомври", "Ноември", "Декември"
  ];
  return monthNames[date.getMonth()];
};

</script>


<style scoped>
a{
  text-decoration: none; 
  color: #5d7fbb;
}
/* .card-content-md p {
    margin-left: 0;
    margin-right: 0;
    margin-top: 0;
    margin-bottom: 2px;
    font-size: 1.175rem;
    font-weight: normal;
    line-height: 1.5;
} */
b, strong {
    font-weight: bold;
    font-size: larger;
}

.styleDay{
  font-size: 1.675rem;
  font-weight: 800;
}

.styleName{
  font-size: 1.375rem;
}
</style>