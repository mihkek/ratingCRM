<template>
  <div>
    <Head title="Рейтинг клубов"/>
    <h1 class="mb-8 text-3xl font-bold">Рейтинг клубов</h1>

    <div class="grid  place-items-end mb-2">
      <Link class="btn-indigo" href="/club_rating/create">
        <span>Добавить</span>
        <span class="hidden md:inline">&nbsp;Рейтинг</span>
      </Link>
    </div>

    <div class="bg-white rounded-md shadow overflow-x-auto">
      <table class="w-full whitespace-nowrap">
        <tr class="text-left font-bold">
          <th class="pb-4 pt-6 px-6">Название клуба</th>
          <th class="pb-4 pt-6 px-6">1 Место</th>
          <th class="pb-4 pt-6 px-6">2 Место</th>
          <th class="pb-4 pt-6 px-6">3 Место</th>
          <th class="pb-4 pt-6 px-6">Общий командный зачет</th>
        </tr>

        <tr v-for="(club, index) in clubs" :key="club.id" :class="getClass(index)">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/club_rating/${club.id}/edit`">
              {{ club.name }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/club_rating/${club.id}/edit`">
              {{ club.first }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/club_rating/${club.id}/edit`">
              {{ club.second }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/club_rating/${club.id}/edit`">
              {{ club.third }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/club_rating/${club.id}/edit`">
              {{ club.total }}
            </Link>
          </td>
          <td class="w-px border-t">
            <Link class="flex items-center px-4" :href="`/club_rating/${club.id}/edit`" tabindex="-1">
              <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400"/>
            </Link>
          </td>
        </tr>
      </table>
    </div>

  </div>
</template>

<script>
import {Head, Link} from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import Icon from '@/Shared/Icon'

export default {
  components: {
    Head,
    Link,
    Icon,
  },
  layout: Layout,
  props: {
    clubs: Object,
  },

  methods: {
    getClass(index) {
      if (index < 3) {
        return "bg-gray-100 focus-within:bg-gray-100";
      } else {
        return "hover:bg-gray-100 focus-within:bg-gray-100";
      }
    }
  }
}

</script>
