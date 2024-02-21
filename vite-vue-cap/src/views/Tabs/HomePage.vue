<!-- Home.vue -->
<template>
  <ion-page>
    <!-- Header -->
    <ion-header>
      <ion-toolbar>
        <div
          class="header-content"
          style="
            background: url('https://t4.ftcdn.net/jpg/01/01/72/17/360_F_101721700_HE5ouiYmnmHljXfxTCYrNre4JgxXN64V.jpg');
            background-size: cover;
            padding-top: 2%;
            padding-bottom: 2%;
          "
        >
          <IonTitle class="header-title">Calendar</IonTitle>
          <ion-buttons slot="end" @click="toggleDatePicker">
            <ion-button
              ><ion-icon class="icons-style" :icon="calendarOutline"></ion-icon
            ></ion-button>
          </ion-buttons>

          <ion-buttons slot="end">
            <ion-button id="popover-button"
              ><ion-icon class="icons-style" :icon="ellipsisVertical"></ion-icon
            ></ion-button>
          </ion-buttons>

          <ion-popover trigger="popover-button" :dismiss-on-select="true">
            <ion-content>
              <ion-list style="padding-bottom: 0px">
                <ion-item :button="true" :detail="false"
                  ><ion-icon
                    class="icons-style"
                    style="margin-right: 4%"
                    :icon="star"
                    @click="redirectToGooglePlay"
                  ></ion-icon
                  >Rating</ion-item
                >
                <ion-item :button="true" :detail="false" @click="sendEmail"
                  ><ion-icon
                    class="icons-style"
                    style="margin-right: 4%"
                    :icon="mail"
                  ></ion-icon>
                  Write me</ion-item
                >
                <ion-item
                  :button="true"
                  :detail="false"
                  @click="openAboutModal"
                >
                  <svg
                    style="margin-right: 4%"
                    width="30px"
                    height="30px"
                    viewBox="0 0 512 512"
                    version="1.1"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    fill="#757575"
                    stroke="#757575"
                  >
                    <g id="SVGRepo_bgCarrier" stroke-width="0" />
                    <g
                      id="SVGRepo_tracerCarrier"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    />
                    <g id="SVGRepo_iconCarrier">
                      <title>about</title>
                      <g
                        id="Page-1"
                        stroke="none"
                        stroke-width="1"
                        fill="none"
                        fill-rule="evenodd"
                      >
                        <g
                          id="about-white"
                          fill="#757575"
                          transform="translate(42.666667, 42.666667)"
                        >
                          <path
                            d="M213.333333,3.55271368e-14 C95.51296,3.55271368e-14 3.55271368e-14,95.51168 3.55271368e-14,213.333333 C3.55271368e-14,331.153707 95.51296,426.666667 213.333333,426.666667 C331.154987,426.666667 426.666667,331.153707 426.666667,213.333333 C426.666667,95.51168 331.154987,3.55271368e-14 213.333333,3.55271368e-14 Z M213.333333,384 C119.227947,384 42.6666667,307.43872 42.6666667,213.333333 C42.6666667,119.227947 119.227947,42.6666667 213.333333,42.6666667 C307.44,42.6666667 384,119.227947 384,213.333333 C384,307.43872 307.44,384 213.333333,384 Z M240.04672,128 C240.04672,143.46752 228.785067,154.666667 213.55008,154.666667 C197.698773,154.666667 186.713387,143.46752 186.713387,127.704107 C186.713387,112.5536 197.99616,101.333333 213.55008,101.333333 C228.785067,101.333333 240.04672,112.5536 240.04672,128 Z M192.04672,192 L234.713387,192 L234.713387,320 L192.04672,320 L192.04672,192 Z"
                            id="Shape"
                          ></path>
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
    <ion-content
      class="ion-padding"
      style="
        background: url('../../assets/img/libarary/oldPaper.jpg');
        background-size: cover;
      "
    >
      <div class="calendar-content">
        <div pager="true" style="width: 100%">
          <!-- Slide 1 -->
          <div style="width: 100%">
            <swiper :loop="true">
              <swiper-slide >
                
                <CalendarComponent
                  :showDatePicker="showDatePicker"
                  @move-forward="handleMoveForward"
                  @move-backward="handleMoveBackward"
                  @update:selectedDate="updateSelectedDate"
                ></CalendarComponent>
                <CardHolidays :selectedDate="selectedDate"></CardHolidays>
              </swiper-slide>
            </swiper>
          </div>
        </div>
      </div>
    </ion-content>

    <!-- Modal for About -->
    <ion-modal v-model:isOpen="aboutModal" @blur="handleBlur">
      <ion-header>
        <ion-toolbar>
          <ion-title style="display: inline-flex">
            <p style="font-size: larger; font-weight: 600">About</p>
          </ion-title>
          <ion-buttons slot="end">
            <ion-button @click="closeAboutModal">
              <ion-icon slot="icon-only" :icon="close"></ion-icon>
            </ion-button>
          </ion-buttons>
        </ion-toolbar>
      </ion-header>
      <ion-content class="ion-padding">
        <div class="library-container">
          <!-- Description Section -->
          <h2>Description</h2>
          <p>
            Приложението е направено с най-добри намерения, да се разпространява
            вярата.
          </p>
          <p>
            Ако видите тази иконка
            <img
              src="../../assets/img/PrayerBook.png"
              style="width: 35px; height: 35px"
            />
            означава, че за въпросният светец или празник има за четене.
          </p>
          <p>
            Ако видите тази иконка
            <svg
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
            означава, че за въпросният светец или празник има аудио.
          </p>
          <p>
            Ако забележите нещо нередно или грешно, не се колебайте да ми
            пишете.
          </p>
          <!-- Resources Section -->
          <h2>Resources</h2>
          <ul class="book-list" style="list-style-type: none">
            <li>
              <a
                href="http://www.pravoslavieto.com/toc/chitalnja.htm"
                target="_blank"
                ><img
                  width="158"
                  height="23"
                  src="http://www.pravoslavieto.com/images/felles/logo_small.gif"
                  alt="ПРАВОСЛАВНАТА ЧИТАЛНЯ. Eastern Orthodox readings in Bulgarian at Pravoslavieto.com"
                  border="0"
              /></a>
            </li>
            <li>
              <img
                width="64"
                height="64"
                src="../../assets/img/libarary/jitiya_na_svetiite_logo.jpg"
              /><a
                href="http://www.sviatost.info/12_jitiya_na_svetiite/index.html"
                target="_blank"
                ><p style="text-align: center;">http://www.sviatost.info</p></a
              >
            </li>
            <li>
              <img
                width="64"
                height="64"
                src="../../assets/img/libarary/PlovdivMitropoliq.png"
              /><a
                href="http://www.plovdivskamitropolia.bg/"
                target="_blank"
                ><p style="text-align: center;">https://plovdivskamitropolia.bg/calendar</p></a
              >
            </li>
            <li>
              <img
                width="64"
                height="64"
                src="../../assets/img/libarary/pravoslaven-kalendar.png"
              /><a
                href="https://pravoslaven-kalendar.com/%D1%86%D1%8A%D1%80%D0%BA%D0%BE%D0%B2%D0%B5%D0%BD-%D0%BA%D0%B0%D0%BB%D0%B5%D0%BD%D0%B4%D0%B0%D1%80-%D1%8F%D0%BD%D1%83%D0%B0%D1%80%D0%B8-2024/"
                target="_blank"
                ><p style="text-align: center;">https://pravoslaven-kalendar</p></a
              >
            </li>
            <li>
              <img
                width="64"
                height="64"
                src="../../assets/img/libarary/bg-patriarshia.png"
              /><a
                href="https://bg-patriarshia.bg/calendar/2024"
                target="_blank"
                ><p style="text-align: center;">https://bg-patriarshia.bg/calendar</p></a
              >
            </li>
            <li>
              <img
                width="64"
                height="64"
                src="../../assets/img/libarary/sv-atanasii-varna.png"
              /><a
                href="https://www.sv-atanasii-varna.org/"
                target="_blank"
                ><p style="text-align: center;">https://sv-atanasii-varna</p></a
              >
            </li>
            <li>
              <img
                width="64"
                height="64"
                src="../../assets/img/libarary/pravoslavenhram.png"
              /><a
                href="https://pravoslavenhram.com/"
                target="_blank"
                ><p style="text-align: center;">https://pravoslavenhram.com</p></a
              >
            </li>
          </ul>
          <!-- Contact Section -->
          <h2>Contact</h2>
          <p>
            Email:
            <a
              href="https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&source=mailto&to=danielpenchev1709@gmail.com"
              >danielpenchev1709@gmail.com</a
            >
          </p>
          <!-- Add more contact information as needed -->
        </div>
      </ion-content>
    </ion-modal>
  </ion-page>
</template>

<script setup lang="ts">
import CalendarComponent from "../../components/CalendarComponent.vue";
import CardHolidays from "../../components/Cards/CardHolidays.vue";
import {
  IonPage,
  IonContent,
  IonHeader,
  IonToolbar,
  IonButton,
  IonButtons,
  IonModal,
  IonIcon,
  IonTitle,
  IonPopover,
  IonList,
  IonItem,
} from "@ionic/vue";
import {
  calendarOutline,
  ellipsisVertical,
  mail,
  star,
  close,
} from "ionicons/icons";
import { Swiper, SwiperSlide } from "swiper/vue";
import "swiper/swiper-bundle.css";
import { ref } from "vue";

const selectedDate = ref(null);
const showDatePicker = ref(true);

const toggleDatePicker = () => {
  showDatePicker.value = !showDatePicker.value;
};

const updateSelectedDate = (newDate: any) => {
  console.log("Selected Date in Home.vue:", newDate);
  selectedDate.value = newDate;
};

const redirectToGooglePlay = () => {
  window.open(
    "https://play.google.com/store/apps/details?id=your-app-id",
    "_system"
  );
};

const sendEmail = () => {
  window.open(
    "https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&source=mailto&to=danielpenchev1709@gmail.com",
    "_system"
  );
};

const handleMoveForward = (newDate: any) => {
  console.log("Move forward to:", newDate);
};

const handleMoveBackward = (newDate: any) => {
  console.log("Move backward to:", newDate);
};

const aboutModal = ref<boolean>(false);

const openAboutModal = () => {
  aboutModal.value = true;
};

const closeAboutModal = () => {
  aboutModal.value = false;
};

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
}

/* Style for each list item */
ul li {
  margin-bottom: 20px;
  padding: 10px;
  border: 1px solid #ccc;
  background-color: #f9f9f9;
  border-radius: 5px;
  border-bottom: 2px solid grey;
  margin: 4%;
  padding: 4%;
}

/* Style for the images inside the list items */
ul li img {
  max-width: 100%;
  height: auto;
  display: block;
  margin: 0 auto;
}

/* Style for the entire list */
ul {
  padding: 0;
  list-style-type: none;
}

/* Style for the library container */
.library-container {
  background-color: #ececec;
  padding: 20px;
  border-radius: 10px;
  margin-top: 20px;
}
ion-toolbar.toolbar-title-default {
  --background: url("https://t4.ftcdn.net/jpg/01/01/72/17/360_F_101721700_HE5ouiYmnmHljXfxTCYrNre4JgxXN64V.jpg");
}

/* Book style */
</style>
