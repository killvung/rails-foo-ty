import Vue from 'vue'
import Clubs from '../clubs.vue'

const node = document.getElementById("data");
const props = JSON.parse(node.getAttribute('data'));

const app = new Vue({
  render: h => h(Clubs, { props })
}).$mount()

document.body.appendChild(app.$el)
