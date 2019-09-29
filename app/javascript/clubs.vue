<template>
  <div class="ui container">
    <div class="ui text">
      <h1 class="ui inverted header">
        <p>{{ message }}</p>
      </h1>
    </div>
    <div class="ui items" v-for="({name}, index) in clubs" v-bind:key="index">
      <div class="item">
        <div class="image">
          <img src="../assets/images/default.png" />
        </div>
        <div class="content">
          <a class="header">{{name}}</a>
          <div class="meta">
            <span>Description</span>
          </div>
          <div class="description">
            <p></p>
          </div>
          <div class="extra">Additional Details</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      message: "Clubs"
    };
  },
  props: ["clubs"]
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
