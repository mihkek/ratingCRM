<template>
  <div>
    <menu-item @onClick="itemClick" link="students" label="Ученики" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="schedules" iconName="poias" label="Расписание" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="directions" iconName="poias" label="Направления" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="achievements"  iconName="list" label="Журнал достижений" infoMessage="Текст информации о разделе" />
    
    <menu-item @onClick="itemClick" link="clubs" iconName="ticher" label="Клубы" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="tournaments" iconName="ticher" label="Турниры" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="club_rating" iconName="ticher" label="Рейтинг клубов" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="progress" iconName="flag" label="Достижения" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="belts" iconName="poias" label="Пояса" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="ranks" iconName="san" label="Разряды" infoMessage="Текст информации о разделе" />

    <!-- <menu-item @onClick="itemClick" link="ratings" iconName="star" label="РЕЙТИНГИ" infoMessage="Текст информации о разделе" /> -->

    <menu-item-drop @onClick="itemClick" link="" iconName="site" label="На сайт" infoMessage="Текст информации о разделе" />

    <menu-item v-if="auth.user.role.name === 'Админ'" @onClick="itemClick" link="branches" iconName="razdel" label="Филиалы" infoMessage="Текст информации о разделе" />

    <menu-item @onClick="itemClick" link="admin" iconName="razdel" label="Раздел админа" infoMessage="Текст информации о разделе" />


    <menu-item @onClick="itemClick" link="journal" iconName="razdel" label="Раздел наставника" infoMessage="Текст информации о разделе" />
    
    <menu-item @onClick="itemClick" link="" iconName="site" label="На сайт" infoMessage="Текст информации о разделе" />
  </div>
</template>

<script>
import MenuItem from './Menu/MenuItem.vue'
import MenuItemDrop from './Menu/MenuItemDrop.vue'
import {Link} from '@inertiajs/inertia-vue3'
import Icon from '@/Shared/Icon'

export default {
  components: {
    Icon,
    Link,
    MenuItem,
    MenuItemDrop,
  },
  props: {
    auth: Object,
  },
  emits: ['menuItemClick'],
  mounted(){
    // const currentUser = window.authUser;
    console.log(this.auth.user)
    // this.$inertia.get('').then((res) => {
    //   console.log('res')
    // })
  },
  methods: {
    itemClick(){
      this.$emit('menuItemClick')
    },
    isUrl(...urls) {
      let currentUrl = this.$page.url.substr(1)
      if (urls[0] === '') {
        return currentUrl === ''
      }
      return urls.filter((url) => currentUrl.startsWith(url)).length
    },
  },
}
</script>
