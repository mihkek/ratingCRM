<template>
  <div>
    <Head title="Рейтинг турниров"/>
    <h1 class="mb-8 text-3xl font-bold">Турниры</h1>

    <div class="grid  place-items-end mb-2">
      <Link class="btn-indigo" href="/tournaments/create">
        <span>Добавить</span>
        <span class="hidden md:inline">&nbsp;Турнир</span>
      </Link>
    </div>

    <div class="bg-white rounded-md shadow overflow-x-auto">
      <table class="w-full whitespace-nowrap">
        <tr class="text-left font-bold">
          <th class="pb-4 pt-6 px-6">Название турнира</th>
        </tr>

        <tr v-for="(tournament, index) in tournaments" :key="tournament.id">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/tournaments/${tournament.id}/edit`">
              {{ tournament.name }}
            </Link>
          </td>
          <td class="w-px border-t">
            <Link class="flex items-center px-4" :href="`/tournaments/${tournament.id}/edit`" tabindex="-1">
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
    tournaments: Object,
  },

  methods: {

  }
}

</script>
