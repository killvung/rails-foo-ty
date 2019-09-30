<template>
  <div>
    <p>{{ club.name }}</p>
    <div class="ui cards"></div>
    <div class="ui stackable eight column grid">
      <div class="column" v-for="({name}, index) in players" v-bind:key="index">  
        <div class="ui fluid card">
          <div class="image">
            <img src="../assets/images/player.png" />
          </div>
          <div class="content">
            <a class="header">{{name}}</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["club", "players"]
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
