import Vue from 'vue'
import Club from '../club.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(Club)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
