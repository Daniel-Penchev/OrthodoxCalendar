<!-- Home.vue -->
<template>
  <ion-page>
    <!-- Header -->
    <ion-header>
      <ion-toolbar>


        <div class="header-content">

          <IonTitle class="header-title">Calendar</IonTitle>

          <ion-buttons slot="end" @click="toggleDatePicker">
            <ion-button><ion-icon class="icons-style" :icon="calendarOutline"></ion-icon></ion-button>
          </ion-buttons>

          <ion-buttons slot="end">
            <ion-button id="popover-button"><ion-icon class="icons-style"
                :icon="ellipsisVertical"></ion-icon></ion-button>

          </ion-buttons>

          <ion-popover trigger="popover-button" :dismiss-on-select="true">
            <ion-content>
              <ion-list>
                <ion-item :button="true" :detail="false"><ion-icon class="icons-style" style="margin-right: 4%;"
                    :icon="star" @click="redirectToGooglePlay"></ion-icon >Rating</ion-item>
                <ion-item :button="true" :detail="false" @click="sendEmail"><ion-icon class="icons-style" style="margin-right: 4%;"
                    :icon="mail"></ion-icon> Write me</ion-item>
                <ion-item :button="true" :detail="false" @click="openAboutModal">

                  <svg style="margin-right: 4%;" width="30px" height="30px"
                    viewBox="0 0 512 512" version="1.1" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink" fill="#757575" stroke="#757575">

                    <g id="SVGRepo_bgCarrier" stroke-width="0" />

                    <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" />

                    <g id="SVGRepo_iconCarrier">
                      <title>about</title>
                      <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <g id="about-white" fill="#757575" transform="translate(42.666667, 42.666667)">
                          <path
                            d="M213.333333,3.55271368e-14 C95.51296,3.55271368e-14 3.55271368e-14,95.51168 3.55271368e-14,213.333333 C3.55271368e-14,331.153707 95.51296,426.666667 213.333333,426.666667 C331.154987,426.666667 426.666667,331.153707 426.666667,213.333333 C426.666667,95.51168 331.154987,3.55271368e-14 213.333333,3.55271368e-14 Z M213.333333,384 C119.227947,384 42.6666667,307.43872 42.6666667,213.333333 C42.6666667,119.227947 119.227947,42.6666667 213.333333,42.6666667 C307.44,42.6666667 384,119.227947 384,213.333333 C384,307.43872 307.44,384 213.333333,384 Z M240.04672,128 C240.04672,143.46752 228.785067,154.666667 213.55008,154.666667 C197.698773,154.666667 186.713387,143.46752 186.713387,127.704107 C186.713387,112.5536 197.99616,101.333333 213.55008,101.333333 C228.785067,101.333333 240.04672,112.5536 240.04672,128 Z M192.04672,192 L234.713387,192 L234.713387,320 L192.04672,320 L192.04672,192 Z"
                            id="Shape"> </path>
                        </g>
                      </g>
                    </g>

                  </svg> 
                  About
                </ion-item>
              </ion-list>
            </ion-content>
          </ion-popover>
        </div>

      </ion-toolbar>
    </ion-header>

    <!-- Body -->
    <ion-content class="ion-padding">
      <div class="calendar-content">
        <div pager="true" style="width: 100%">
          <!-- Slide 1 -->
          <div style="width: 100%">
            <CalendarComponent :showDatePicker="showDatePicker" @update:selectedDate="updateSelectedDate">
            </CalendarComponent>

            <CardHolidays :selectedDate="selectedDate"></CardHolidays>
          </div>
        </div>
      </div>
    </ion-content>
  </ion-page>

<!-- Modal for About -->
<ion-modal v-model:isOpen="aboutModal" @blur="handleBlur">
  <ion-header>
    <ion-toolbar>
      <ion-title>About</ion-title>
      <ion-buttons slot="end">
        <ion-button @click="closeAboutModal">
          <ion-icon slot="icon-only" :icon="close"></ion-icon>
        </ion-button>
      </ion-buttons>
    </ion-toolbar>
  </ion-header>
  <ion-content class="ion-padding">
    <div>
      <!-- Description Section -->
      <h2>Description</h2>
      <p>Your app description goes here.</p>

      <!-- Resources Section -->
      <h2>Resources</h2>
      <ul style="list-style-type: none">
        <li> <a href="http://www.pravoslavieto.com/toc/chitalnja.htm" target=_blank><img width=158 height=23
                      src="http://www.pravoslavieto.com/images/felles/logo_small.gif"
                      alt="ПРАВОСЛАВНАТА ЧИТАЛНЯ. Eastern Orthodox readings in Bulgarian at Pravoslavieto.com"
                      border=0></a></li>
        <li>Resource 2</li>
        <li>Resource 3</li>
        <!-- Add more resources as needed -->
      </ul>

      <!-- Contact Section -->
      <h2>Contact</h2>
      <p>Email: <a href="https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&source=mailto&to=danielpenchev1709@gmail.com">danielpenchev1709@gmail.com</a></p>
      <!-- Add more contact information as needed -->
    </div>
  </ion-content>
</ion-modal>
</template>

<script setup lang="ts">
import CalendarComponent from '../../components/CalendarComponent.vue';
import CardHolidays from '../../components/Cards/CardHolidays.vue';
import { IonPage, IonContent, IonHeader, IonToolbar, IonButton, IonButtons,IonModal, IonIcon, IonTitle, IonPopover, IonList, IonItem } from '@ionic/vue';
import { calendarOutline, ellipsisVertical, mail, star,close } from 'ionicons/icons';
import { ref } from 'vue';

// import { Swiper, SwiperSlide } from 'swiper/vue';
// import 'swiper/css';
// import '@ionic/vue/css/ionic-swiper.css';

const selectedDate = ref(null);
const showDatePicker = ref(true);

const toggleDatePicker = () => {
  showDatePicker.value = !showDatePicker.value;

};

const updateSelectedDate = (newDate: any) => {
  // Тук можете да направите нещо с новата стойност на selectedDate
  console.log('Selected Date in Home.vue:', newDate);
  selectedDate.value = newDate
};

const redirectToGooglePlay = () =>  {
    window.open('https://play.google.com/store/apps/details?id=your-app-id', '_system');
}
const sendEmail = () => {
  window.open('https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&source=mailto&to=danielpenchev1709@gmail.com', '_system');
}

// About Logic


const aboutModal = ref<boolean>(false);

const openAboutModal = () => {
  aboutModal.value = true;
};

const closeAboutModal = () => {
  aboutModal.value = false;
};
// Handle the blur event to close the modal
const handleBlur = () => {
  aboutModal.value = false;
};
</script>

<style scoped>
.calendar-content {
  display: inline-flex;
  align-items: center;
  justify-content: space-between;
  /* height: auto; */
  flex-direction: column;
  width: 100%;
}

.header-content {
  display: flex;
  align-items: center;
  justify-content: end;
  gap: 2%;
}

.icons-style {
  width: 30px;
  height: 30px;
}

.header-title {
  text-align: start;
  font-size: 150%;
  margin-left: 4%;
  padding-left: inherit;
  font-weight: bold;
}</style>