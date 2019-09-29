<template>
  <div id="app">
    <p>{{ club.name }}</p>
  </div>
</template>

<script>
export default {
  props: ["club"]
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
