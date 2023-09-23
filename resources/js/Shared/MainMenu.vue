<template>
  <div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/students">
        <icon name="students" class="mr-2 w-4 h-4"
              :class="isUrl('students') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('students') ? 'text-white' : 'text-black group-hover:text-white'">Ученики</div>
      </Link>
    </div>
   <div class="mb-4">
     <Link class="group flex items-center py-3" href="/achievements">
       <icon name="list" class="mr-2 w-4 h-4"
            :class="isUrl('achievements') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('achievements') ? 'text-white' : 'text-black group-hover:text-white'">Журнал достижений
       </div>
      </Link>
   </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/mentors">
        <icon name="ticher" class="mr-2 w-4 h-4"
              :class="isUrl('mentors') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('mentors') ? 'text-white' : 'text-black group-hover:text-white'">Наставники</div>
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/progress">
        <icon name="flag" class="mr-2 w-4 h-4"
              :class="isUrl('progress') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('progress') ? 'text-white' : 'text-black group-hover:text-white'">Достижения</div>
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/belts">
        <icon name="poias" class="mr-2 w-4 h-4"
              :class="isUrl('belts') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('belts') ? 'text-white' : 'text-black group-hover:text-white'">Пояса</div>
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/ranks">
        <icon name="san" class="mr-2 w-4 h-4"
              :class="isUrl('ranks') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('ranks') ? 'text-white' : 'text-black group-hover:text-white'">Разряды</div>
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/ratings">
        <icon name="star" class="mr-2 w-4 h-4"
              :class="isUrl('ratings') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('ratings') ? 'text-white' : 'text-black group-hover:text-white'">РЕЙТИНГИ</div>
      </Link>
    </div>

    <div v-if="auth.user.role.slug == 'admin'" class="mb-4" >
      <Link class="group flex items-center py-3" href="/admin">
        <icon name="razdel" class="mr-2 w-4 h-4"
              :class="isUrl('admin') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('admin') ? 'text-white' : 'text-black group-hover:text-white'">Раздел админа</div>
         <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400" />
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/journal">
        <icon name="razdel" class="mr-2 w-4 h-4"
              :class="isUrl('journal') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('journal') ? 'text-white' : 'text-black group-hover:text-white'">Раздел наставника</div>
         <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400" />
      </Link>

    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="https://moyashi.ru/">
        <icon name="site" class="mr-2 w-4 h-4"
              :class="isUrl('') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('') ? 'text-white' : 'text-black group-hover:text-white'">На сайт</div>
      </Link>

    </div>

  </div>
</template>

<script>
import {Link} from '@inertiajs/inertia-vue3'
import Icon from '@/Shared/Icon'

export default {
  components: {
    Icon,
    Link,
  },
  props: {
    auth: Object,
  },
  mounted(){
    // const currentUser = window.authUser;
    console.log(this.auth.user)
    // this.$inertia.get('').then((res) => {
    //   console.log('res')
    // })
  },
  methods: {
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
