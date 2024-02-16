<template>
  <div class="bg">
    <div class="book book1">
      <div class="ribbon ribbon1"></div>
      <div class="bookCut"></div>
    </div>

    <div class="book book3">
      <div class="ribbon ribbon3"></div>
      <div class="bookCut3"></div>
    </div>

    <div class="book book6">
      <div class="ribbon ribbon6"></div>
      <div class="bookCut6"></div>
    </div>
  </div>
</template>

<script lang="ts">
export default {
  name: 'BookComponent',
  props: {
    title: String,
    href: String,
    hrefName: String,
    image: String,
    srcHref: String,
  },
  data() {
    return {};
  },
};
</script>

<style scoped>
/* .bg {
  height: 14vh;
  width: 81vw;
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin: -14px;
  margin-top: -8%;
} */

.book {
  position: relative;
  height: 30px;
  border-radius: 10px;
  background: #fffff0;
}

.book1 {
  width: 140px;
  border: 5px solid #942343;
  /* margin-left: 53vw; */
  border-right-style: none;
  z-index: 9;
  margin-top: 10%;
}

.bookCut {
  margin-left: 97%;
  width: 5px;
  height: 30px;
}

.ribbon {
  position: absolute;
  height: 25px;
  width: 20px;
}

.ribbon1 {
  background: #ff785b;
  margin: 12px 0 0 10px;
}

.book3 {
  width: 140px;
  border: 5px solid #004d25;
  /* margin-left: 53vw; */
  border-left-style: none;
  z-index: 8;
}

.bookCut3 {
  width: 5px;
  height: 30px;
}

.ribbon3 {
  background: #a4d5bd;
  position: absolute;
  margin: 10px 0 0 100px;
}

.book6 {
  width: 165px;
  border: 5px solid #622d18;
  /* margin-left: 48.5vw; */
  border-left-style: none;
  z-index: 7;
}

.bookCut6 {
  width: 5px;
  height: 30px;
}

.ribbon6 {
  background: #a4d5bd;
  position: absolute;
  margin: 14px 0 0 105px;
}
</style>