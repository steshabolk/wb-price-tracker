import { createApp } from 'vue'
import router from '@/router/router'
import store from '@/store'
import App from '@/App.vue'

import '@/assets/scss/main.scss'

const app = createApp(App)

app.use(router)
app.use(store)

app.mount('#app')
