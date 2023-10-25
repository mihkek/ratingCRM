<template>
  <div>
    <div
    v-if="hasUnreadNotitfication"
    class="absolute left-auto right-0 top-0 bottom-1 top-auto z-10 inline-block -translate-y-1/2 translate-x-2/4 rotate-0 skew-x-0 skew-y-0 scale-x-100 scale-y-100 rounded-full bg-red-600 p-1 text-xs"></div>
    <dropdown  placement="bottom-end" @click="markNotitficationsRead">
    <svg
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 24"
      fill="#11a09a"
      class="cursor-pointer  h-7 w-7 flex items-center justify-center rounded-lg text-center text-white">
      <path
        fill-rule="evenodd"
        d="M5.25 9a6.75 6.75 0 0113.5 0v.75c0 2.123.8 4.057 2.118 5.52a.75.75 0 01-.297 1.206c-1.544.57-3.16.99-4.831 1.243a3.75 3.75 0 11-7.48 0 24.585 24.585 0 01-4.831-1.244.75.75 0 01-.298-1.205A8.217 8.217 0 005.25 9.75V9zm4.502 8.9a2.25 2.25 0 104.496 0 25.057 25.057 0 01-4.496 0z"
        clip-rule="evenodd" />
    </svg>
      <template #dropdown>
        <div class="max-h-96 overflow-y-auto bg-indigo-800 ">
          <NotificationCard
            v-for="(item, index) in auth"
            :id="item.id"
            :key="index"
            :title="item.title"
            :message="item.message"
            :status="item.status"
          />
        </div>
      </template>
    </dropdown>
  </div>
</template>

<script>
import Dropdown from '@/Shared/Dropdown'
import NotificationCard from './NotificationCard.vue'

export default {
  name: "NotificationsBell",
  components: {
    Dropdown,
    NotificationCard
  },
  props: {
    auth: Object,
  },
  data(){
    return { hasUnreadNotitfication: true }
  },
  computed: {
    hasUnreadNotitficatio(){
      return this.auth.user.notification.filter(item => item.status == 1)
      // return true
    }
  },
  // methods: {
  //   // markNotitficationsRead(){this.auth.user.notification.forEach(item => item.status = 0)}
  //   markNotitficationsRead(){ this.hasUnreadNotitfication = false}
  // }

}
</script>
