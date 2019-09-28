import Vue from 'vue'
import Clubs from '../clubs.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(Clubs)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
