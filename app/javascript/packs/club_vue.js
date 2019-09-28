import Vue from 'vue'
import Club from '../club.vue'

const node = document.getElementById("data");
const props = JSON.parse(node.getAttribute('data'));

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(Club, {props}) 
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
