import Vue from 'vue'
import Router from 'vue-router'

import Login from '@/components/Login'
import Regist from '@/components/Regist'
import Base from '@/components/user/Base'
import index from '@/components/user/index'
import UserInfo from '@/components/user/UserInfo'
import safety from '@/components/user/safety'
import password from '@/components/user/password'
import setpay from '@/components/user/setpay'
import bindphone from '@/components/user/bindphone'
import email from '@/components/user/email'
import idcard from '@/components/user/idcard'
import question from '@/components/user/question'
import address from '@/components/user/address'
import order from '@/components/user/order'
import collection from '@/components/user/collection'
import foot from '@/components/user/foot'
import comment from '@/components/user/comment'
import news from '@/components/user/news'
import change from '@/components/user/change'
import coupon from '@/components/user/coupon'
import bonus from '@/components/user/bonus'
import bill from '@/components/user/bill'

Vue.use(Router)

export default new Router({
  routes: [
    // { path: '/HelloWorld', name: 'HelloWorld', component: HelloWorld},
    { path: '/login', name: 'login', component: Login},
    { path: '/regist', name: 'regist', component: Regist},
    { path: '/', name: 'userBase', component: Base, children: [
        { path: '/', name: 'index', component: index},
        { path: '/index', name: 'index', component: index},
        { path: '/info', name: 'UserInfo', component: UserInfo},
        { path: '/safety', name: 'safety', component: safety},
        { path: '/password', name: 'password', component: password},
        { path: '/setpay', name: 'setpay', component: setpay},
        { path: '/bindphone', name: 'bindphone', component: bindphone},
        { path: '/email', name: 'email', component: email},
        { path: '/idcard', name: 'idcard', component: idcard},
        { path: '/question', name: 'question', component: question},
        { path: '/address', name: 'address', component: address},
        { path: '/order', name: 'order', component: order},
        { path: '/collection', name: 'collection', component: collection},
        { path: '/foot', name: 'foot', component: foot},
        { path: '/comment', name: 'comment', component: comment},
        { path: '/news', name: 'news', component: news},
        { path: '/change', name: 'change', component: change},
        { path: '/coupon', name: 'coupon', component: coupon},
        { path: '/bonus', name: 'bonus', component: bonus},
        { path: '/bill', name: 'bill', component: bill},
      ]},
    // { path: '/login', name: 'login', component: Login},
  ]
})
