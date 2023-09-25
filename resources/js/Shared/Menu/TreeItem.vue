<template>
  <li>
    <Link class="group flex items-center py-3">
      <icon :name="model.iconName" class="mr-2 w-4 h-4 fill-black group-hover:fill-white"/>
      <div
        :class="{ 'text-black group-hover:text-white': isFolder }"
        @click="toggle"
        @dblclick="changeType"
      >
        {{ model.name }}
        <!-- <span v-if="isFolder">[{{ isOpen ? '-' : '+' }}]</span> -->
      </div>
    </Link>
    <transition name="fade">
      <ul v-show="isOpen" v-if="isFolder">
        <TreeItem
          class="px-4"
          v-for="child in model.children"
          :key="child.name"
          :model="child"
        ></TreeItem>
      </ul>
    </transition>
  </li>
</template>

<script>
import {Link} from "@inertiajs/inertia-vue3";
import Icon from "@/Shared/Icon.vue";
import InfoIcon from "@/Shared/Icons/InfoIcon.vue";
import {toast} from "vue3-toastify";

export default {
  name: 'TreeItem',
  components: {InfoIcon, Icon, Link},
  props: {
    model: {
      type: Object,
      required: true
    }
  },
  data() {
    return {
      isOpen: false
    };
  },
  computed: {
    isFolder() {
      return this.model.children && this.model.children.length;
    }
  },
  methods: {
    toggle() {
      this.isOpen = !this.isOpen;
    },
    showTopicInfo(){
      toast.success(this.infoMessage, {
        autoClose: 6000,
        position: 'top-left'
      });
    },
    changeType() {
      if (this.isFolder) {
        this.isOpen = !this.isOpen;
      }
    }
  }
};
</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.2s linear;
}

.fade-enter,
.fade-leave-to {
  opacity: 0;
}
</style>
