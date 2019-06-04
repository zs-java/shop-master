import Vue from 'vue'
import Router from 'vue-router'
import index from '../views/index.vue'
import seach from '../components/search/seach.vue'
import trigger from '../components/search/trigger.vue'
import search from '../views/search.vue'
import introduction from '../views/introduction.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: index
    },{
          path: '/search',
          name: 'seach',
          redirect:'seach',
          component: search,
          children:[
              { path:'/seach',
                  component:seach
              },
              { path:'/trigger',
                  component:trigger
              }
          ]
      },
      {
          path: '/introduction',
          name: 'introduction',
          component: introduction
      }

  ]
})
