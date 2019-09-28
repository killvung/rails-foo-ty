<template>
  <div id="app">
    <p>{{ message }}</p>
    <ul id="example-1">
      <li v-for="{name} in clubs">
        {{ name }}
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Clubs!"
    }
  },
  props: ['clubs']
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
