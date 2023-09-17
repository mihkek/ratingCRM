<template>
  <div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/users">
        <icon name="students" class="mr-2 w-4 h-4"
              :class="isUrl('users') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('users') ? 'text-white' : 'text-black group-hover:text-white'">Ученики</div>
      </Link>
    </div>
   <div class="mb-4">
     <Link class="group flex items-center py-3" href="/contacts">
       <icon name="list" class="mr-2 w-4 h-4"
            :class="isUrl('contacts') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('contacts') ? 'text-white' : 'text-black group-hover:text-white'">Журнал достижений
       </div>
      </Link>
   </div>
    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/reports">
        <icon name="ticher" class="mr-2 w-4 h-4"
              :class="isUrl('reports') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('reports') ? 'text-white' : 'text-black group-hover:text-white'">Наставники</div>
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
      <Link class="group flex items-center py-3" href="/beltlist">
        <icon name="poias" class="mr-2 w-4 h-4"
              :class="isUrl('beltlist') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('beltlist') ? 'text-white' : 'text-black group-hover:text-white'">Пояса</div>
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/categorylist">
        <icon name="san" class="mr-2 w-4 h-4"
              :class="isUrl('categorylist') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('categorylist') ? 'text-white' : 'text-black group-hover:text-white'">Разряды</div>
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/statistics">
        <icon name="star" class="mr-2 w-4 h-4"
              :class="isUrl('statistics') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('statistics') ? 'text-white' : 'text-black group-hover:text-white'">РЕЙТИНГИ</div>
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/admin">
        <icon name="razdel" class="mr-2 w-4 h-4"
              :class="isUrl('admin') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('admin') ? 'text-white' : 'text-black group-hover:text-white'">Раздел админа</div>
         <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400" />
      </Link>
    </div>

    <div class="mb-4">
      <Link class="group flex items-center py-3" href="/trainer">
        <icon name="razdel" class="mr-2 w-4 h-4"
              :class="isUrl('trainer') ? 'fill-white' : 'fill-black group-hover:fill-white'"/>
        <div :class="isUrl('trainer') ? 'text-white' : 'text-black group-hover:text-white'">Раздел наставника</div>
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
