<template>
    <div class="mb-4 flex no-wrap items-center">
      <Link @click="linkClick" class="group flex items-center py-3" :href="'/' + link">
        <icon :name="getIconName" class="mr-2 w-4 h-4"
              :class="isUrl(link) ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl(link) ? 'text-white' : 'text-black group-hover:text-white'">{{label}} </div>
      </Link>
      <InfoIcon @click="showTopicInfo"/>
    </div>
</template>


<script>
import InfoIcon from '../Icons/InfoIcon.vue'
import {Link} from '@inertiajs/inertia-vue3'
import Icon from '@/Shared/Icon'
import { toast } from 'vue3-toastify';

export default {
  name: "MenuItem",
  emits: ['onClick'],
  components: {
    InfoIcon,
    Link,
    Icon
  },
  props: {
    link: String,
    label: String,
    infoMessage: String,
    iconName: {type: String, default: null},
  },
  computed: {
    getIconName(){
      if(this.iconName == null) {
        return this.link
      }
      return this.iconName
    }
  },
  methods: {
    linkClick(){
      this.$emit('onClick')
    },
    isUrl(...urls) {
      let currentUrl = this.$page.url.substr(1)
      if (urls[0] === '') {
        return currentUrl === ''
      }
      return urls.filter((url) => currentUrl.startsWith(url)).length
    },
    showTopicInfo(){
      toast.success(this.infoMessage, {
          autoClose: 6000,
          position: 'top-left'
        });
    }
  },
}
</script>
