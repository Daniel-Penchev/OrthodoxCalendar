<template>
  <ion-card>
    <ion-item lines="full">
      <ion-card-header>
        <ion-card-title>Calculate Holidays</ion-card-title>
      </ion-card-header>
    </ion-item>

    <ion-card-content style="width: 100%;">
      <div style="display: flow;justify-content: center;align-items: center;margin-bottom: 5%;margin-top: 5%;text-align: center;">


        <label style="width:25%;font-size: x-large;" for="year">Select Year</label>


        <!-- Move Year -->
        <div style="display: flex; justify-content: center; box-sizing: border-box; padding: 4%; margin-top: 0%; margin-bottom: 2%;">
        
          <button class="datePrevious" @click="decrementYear">
          <svg stroke-linecap="round" stroke-linejoin="round" viewBox="0 0 24 24" width="24" height="24" class="vc-base-icon"><polyline points="15 18 9 12 15 6"></polyline>
        </svg>
        </button>
          
        <div class="container">
        <input style="    width: 44%;
    border-bottom: 4px solid blue;
    border-top: none;
    border-right: none;
    border-left: none;
    border-radius: 5%;
    height: 100%;
    color: black;
    font-weight: bolder;
    font-size: x-large;" id="year" v-model="selectedYear" />
        </div>
        
        <button class="dateNext" @click="incrementYear">
          <svg stroke-linecap="round" stroke-linejoin="round" viewBox="0 0 24 24" width="24" height="24" class="vc-base-icon"><polyline points="9 18 15 12 9 6"></polyline>
        </svg>
        </button>
      </div>

        <button style="width:auto;margin: 4%;" class="button-8-pushable" role="button" @click="calculateHolidays">
          <span class="button-8-shadow"></span>
          <span class="button-8-edge"></span>
          <span class="button-8-front text">
            Calculate
          </span>
        </button>
      </div>

      <table cellspacing="1" cellpadding="1">
        <tbody>
          <tr v-for="(holiday, index) in calculatedHolidays" :key="index" style="border-bottom: 1px solid #dbd2d2;">
            <td>{{ holiday.name }}</td>
            <td >{{ holiday.date }}</td>
          </tr>
        </tbody>
      </table>
    </ion-card-content>
  </ion-card>
</template>
<script setup lang="ts">
import { IonCard, IonCardContent, IonItem, IonCardHeader, IonCardTitle } from '@ionic/vue';
import { ref } from 'vue';

interface Holiday {
  name: string;
  date: string;
  offset: number; 
}

const selectedYear = ref(new Date().getFullYear());

const holidays = ref<Holiday[]>([
  { name: 'Неделя на митаря и фарисея', date: '', offset: -70 },
  { name: 'Неделя на блудния син', date: '', offset: -63 },
  // { name: 'Месен четвъртък (гръцка традиция! - Tsiknopempti)', date: '', offset: -59 },
  { name: 'Събота срещу Неделя Месопустна Задушница', date: '', offset: -57 },
  { name: 'Месна неделя', date: '', offset: -56 },
  { name: 'Сирничка (Прошка) Неделя', date: '', offset: -49 },
  { name: 'Чисти понеделник (започва Великият пост - пост 6 седмици)', date: '', offset: -48 },
  { name: 'Свети Теодор', date: '', offset: -43 },
  { name: 'Неделя на Православието ', date: '', offset: -42 },
  { name: 'Свети Григорий Палама ', date: '', offset: -35 },
  { name: 'Лазарова събота ', date: '', offset: -8 },
  { name: 'Цветница ', date: '', offset: -7 },
  { name: 'Велики понеделник ', date: '', offset: -6 },
  { name: 'Велики вторник', date: '', offset: -5 },
  { name: 'Велика сряда', date: '', offset: -4 },
  { name: 'Велики четвъртък ', date: '', offset: -3 },
  { name: 'Велики петък', date: '', offset: -2 },
  { name: 'Велика събота', date: '', offset: -1 },
  { name: 'СВЕТИ ВЕЛИКДЕН ', date: '', offset: 0 },
  { name: '2-ри ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 1 },
  { name: '3-ти ден от Светлата седмица (Седмица на Пасха, Седмица на обновлението) - светъл вторник', date: '', offset: 2 },
  { name: '4-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 3 },
  { name: '5-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 4 },
  { name: '6-ти ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 5 },
  { name: 'Ден на животворния фонтан ', date: '', offset: 5 },
  { name: '7-ми ден от Светлата седмица (седмица на Пасха, седмица на обновлението)', date: '', offset: 6 },
  { name: 'Неделя на Тома ', date: '', offset: 7 },
  { name: 'Неделя на жените мироносици ', date: '', offset: 14 },
  { name: 'Неделя на паралитика ', date: '', offset: 21 },
  { name: 'Свето Възнесение ', date: '', offset: 39 },
  { name: 'Събота срещу Петдесетница Задушница', date: '', offset: 48 },
  { name: 'Света Петдесетница', date: '', offset: 49 },
  { name: 'Понеделник на Светия Дух', date: '', offset: 50 },
  { name: 'Неделя на всички светии', date: '', offset: 56 },
  // ................................
  { name: 'Неделя след Пасха – на св. ап. Тома (Томина)', date: '', offset: 7 },
  { name: 'Неделя след Пасха - на св. Мироносици', date: '', offset: 14 },
  { name: 'Неделя след Пасха – на Разслабления', date: '', offset: 21 },
  { name: 'Неделя след Пасха – на Самарянката', date: '', offset: 28 },
  { name: 'Неделя след Пасха – на Слепородения', date: '', offset: 35 },
  { name: 'Неделя след Пасха – на св. Отци от I Вселенски събор', date: '', offset: 42 },
  { name: '1 Неделя след Петдесетница - на Всички светии', date: '', offset: 49 },
  { name: '2 Неделя след Петдесетница - на Всички български светии', date: '', offset: 56 },
  { name: '5 Неделя след Петдесетница - на св. Отци от 6-те Вселенски събори', date: '', offset: 77 },
  { name: '16 Неделя след Петдесетница - за Талантите', date: '', offset: 98 },
  { name: '17 Неделя след Петдесетница – на Хананейката', date: '', offset: 105 },
  { name: 'Неделя подир Въздвижение', date: '', offset: 112 },
  { name: '5 Неделя след Неделя подир Въздвижение - на покойниците', date: '', offset: 119 },
  { name: '11 Неделя след Неделя подир Въздвижение - на св. Праотци', date: '', offset: 126 },
  { name: '12 Неделя след Неделя подир Въздвижение - на 10-те прокажени', date: '', offset: 133 },
  { name: '14 Неделя след Неделя подир Въздвижение – на Йерихонския слепец', date: '', offset: 147 },
  { name: '15 Неделя след Неделя подир Въздвижение – на Закхея', date: '', offset: 154 },
  { name: '16 Неделя след Неделя подир Въздвижение - на Митаря и Фарисея', date: '', offset: 161 },
  { name: '17 Неделя след Неделя подир Въздвижение - на Блудния син', date: '', offset: 168 },
]);
const calculatedHolidays = ref<Holiday[]>([]);

const calculateHolidays = () => {
  calculatedHolidays.value = holidays.value.map((holiday) => {
    const customDate = calculateCustomDate(holiday.offset);

    return {
      name: holiday.name,
      date: isNaN(customDate.getDate()) ? 'Invalid Date' : `Date: ${customDate.getDate()}/${customDate.getMonth() + 1}/${customDate.getFullYear()}`,
      offset: holiday.offset, // Include the offset in calculatedHolidays
    };
  });
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
  const month = (key > 30) ? 5 : 4;
  const day = (key > 30) ? key - 30 : key;

  return new Date(year, month - 1, day);
};

const calculateCustomDate = (offset: number): Date => {
  const orthodoxEaster = calculateOrthodoxEaster(selectedYear.value);
  const date = new Date(orthodoxEaster);
  date.setDate(date.getDate() + offset);
  return date;
};


function incrementYear() {
  selectedYear.value += 1;
}

function decrementYear() {
  selectedYear.value -= 1;
}
</script>
<style scopde>


/* CSS */
.button-8-pushable {
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

.button-8-shadow {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 12px;
  background: hsl(0deg 0% 0% / 0.25);
  will-change: transform;
  transform: translateY(2px);
  transition:
    transform
    600ms
    cubic-bezier(.3, .7, .4, 1);
}

.button-8-edge {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 12px;
  background: linear-gradient(
    to left,
    hsl(340deg 100% 16%) 0%,
    hsl(340deg 100% 32%) 8%,
    hsl(340deg 100% 32%) 92%,
    hsl(340deg 100% 16%) 100%
  );
}

.button-8-front {
  display: block;
  position: relative;
  padding: 12px 27px;
  border-radius: 12px;
  font-size: 1.1rem;
  color: white;
  background: hsl(345deg 100% 47%);
  will-change: transform;
  transform: translateY(-4px);
  transition:
    transform
    600ms
    cubic-bezier(.3, .7, .4, 1);
}

@media (min-width: 768px) {
  .button-8-front {
    font-size: 1.25rem;
    padding: 12px 42px;
  }
}

.button-8-pushable:hover {
  filter: brightness(110%);
  -webkit-filter: brightness(110%);
}

.button-8-pushable:hover .button-8-front {
  transform: translateY(-6px);
  transition:
    transform
    250ms
    cubic-bezier(.3, .7, .4, 1.5);
}

.button-8-pushable:active .button-8-front {
  transform: translateY(-2px);
  transition: transform 34ms;
}

.button-8-pushable:hover .button-8-shadow {
  transform: translateY(4px);
  transition:
    transform
    250ms
    cubic-bezier(.3, .7, .4, 1.5);
}

.button-8-pushable:active .button-8-shadow {
  transform: translateY(1px);
  transition: transform 34ms;
}

.button-8-pushable:focus:not(:focus-visible) {
  outline: none;
}

</style>