<template>
  <div>
    <ion-card v-if="!isHidden" >
      <ion-card-content class="thoughtsStyle">

        <div style="display: flex;justify-content: end;gap: 10%;align-items: baseline;margin-bottom: -20px;">
          <ion-buttons style="float: inline-end;">
            <ion-button @click="hideComponent">
              <ion-icon slot="icon-only" :icon="close"></ion-icon>
            </ion-button>
          </ion-buttons>
        </div>
        <h1 style="text-align: center;margin-bottom: 10%;font-weight: 700;">Кратки Мисли</h1>

        <div v-if="shortThoughts.length > 0" style="text-align: center;font-size: large;margin-bottom: 5%;">
          <div style="font-size: larger;padding-left: 3%;padding-right: 3%;">{{ currentThought.text }}</div>
          <div style="margin-top: 7%;">{{ currentThought.author }}</div>
        </div>
      </ion-card-content>
    </ion-card>
  </div>
</template>

<script setup lang="ts">
import { IonCard, IonCardContent, IonButton, IonButtons } from "@ionic/vue";
import { close } from "ionicons/icons";
import { onMounted, ref } from "vue";

const shortThoughts = ref([] as { text: string, author: string }[]);
const currentThought = ref({ text: "", author: "" } as { text: string, author: string });
const isHidden = ref(false);

onMounted(() => {
  fetchShortThoughts();
  setupThoughtUpdateTimer();
});

async function fetchShortThoughts() {
  try {
    const response = await fetch("/src/data/short_thoughts.json");
    const data = await response.json();
    shortThoughts.value = Object.values(data.short_thoughts);
    updateCurrentThought();
  } catch (error) {
    console.error("Error fetching short thoughts:", error);
  }
}

function getRandomThought() {
  const randomIndex = Math.floor(Math.random() * shortThoughts.value.length);
  return shortThoughts.value[randomIndex];
}

function updateCurrentThought() {
  currentThought.value = getRandomThought();
}

function setupThoughtUpdateTimer() {
  setInterval(() => {
    updateCurrentThought();
    isHidden.value = false;
  }, 2 * 60 * 1000);
}

function hideComponent() {
  isHidden.value = true;
}
</script>

<style scoped>

.thoughtsStyle{
  background: url('../../assets/img/libarary/concrete-wall-scratched-material.jpg');
  background-size: cover;
  padding: 3%;
}

</style>