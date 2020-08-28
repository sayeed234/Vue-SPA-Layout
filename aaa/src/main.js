import Vue from 'vue'
import App from './App.vue'
import axios from 'axios'
import VueAxios from 'vue-axios'
import {routes} from './router/index'
import VueRouter from "vue-router"
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'


Vue.use(BootstrapVue)
Vue.use(VueRouter)
Vue.use(IconsPlugin)
Vue.config.productionTip = false
Vue.use(VueAxios, axios)
const router = new VueRouter({
  mode: "history",
  routes: routes,
});

new Vue({
  el: "#app",
  router: router,
  render: (h) => h(App),
});

