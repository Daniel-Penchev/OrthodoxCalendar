<template>
  <div class="calendar-container" :style="gridStyle">
    <!-- <VCalendar style="margin: 0.5%;" class="vc-pane-header-wrapper"
      v-for="index in 12"
      :key="`month-${index + 1}`"
      :initial-page="{ month: index + 1 }"
      :color="selectedColor"
      :attributes="attrs"
    /> -->
    <VCalendar :rows="12" style="margin: 0.5%;" class="vc-pane-header-wrapper"
      :color="selectedColor"
      :attributes="attrs"/>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue';

const selectedColor = ref('red');
const attrs = ref([
  {
    key: 'test',
    highlight: true,
    dates: [
      { color: "blue", start: new Date(2024, 3, 15), end: new Date(2024, 3, 19) },
      { color: "green", start: new Date(2024, 4, 15), end: new Date(2024, 4, 19) },
    ],
  },
]);

const gridStyle = ref({
  gridTemplateColumns: 'repeat(3, 1fr)',
});

</script>

<style scoped>
@media only screen and (max-width: 600px) {
  .calendar-container {
    grid-template-columns: repeat(3, 1fr);
    justify-content: space-around;
  }
}


.VCalendar .vc-pane-header-wrapper{
  display: none;
}
</style>