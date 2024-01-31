import { createApp } from 'vue';
import { IonicVue } from '@ionic/vue';

import App from './App.vue';
import router from './router';
import { setupCalendar, Calendar, DatePicker } from 'v-calendar';
import VueAwesomeSwiper from 'vue-awesome-swiper';
import 'swiper/swiper-bundle.css';
import 'v-calendar/style.css';

import VueDatePicker from '@vuepic/vue-datepicker';
import '@vuepic/vue-datepicker/dist/main.css'

// Инсталирайте vue-awesome-swiper компонентите глобално
// import { Swiper, SwiperSlide } from 'vue-awesome-swiper';
import 'swiper/swiper-bundle.css';
import 'v-calendar/style.css';

/* Core CSS required for Ionic components to work properly */
import '@ionic/vue/css/core.css';

/* Basic CSS for apps built with Ionic */
import '@ionic/vue/css/normalize.css';
import '@ionic/vue/css/structure.css';
import '@ionic/vue/css/typography.css';

/* Optional CSS utils that can be commented out */
import '@ionic/vue/css/padding.css';
import '@ionic/vue/css/float-elements.css';
import '@ionic/vue/css/text-alignment.css';
import '@ionic/vue/css/text-transformation.css';
import '@ionic/vue/css/flex-utils.css';
import '@ionic/vue/css/display.css';

/* Theme variables */
// import './theme/variables.css';

const app = createApp(App)
  .use(IonicVue)
  .use(router)
  .use(setupCalendar, {})
  .use(VueAwesomeSwiper, [])

// Настройка на vue-awesome-swiper компонентите глобално
// app.component('Swiper', Swiper);
// app.component('SwiperSlide', SwiperSlide);

app.component('Calendar', Calendar);
app.component('DatePicker', DatePicker);
app.component('VueDatePicker', VueDatePicker);
// Стартиране на приложението
router.isReady().then(() => {
  app.mount('#app');
});