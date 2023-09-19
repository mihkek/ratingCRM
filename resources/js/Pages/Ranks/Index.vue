<template>
  <div>
    <Head title="Разряд"/>
    <h1 class="mb-8 text-3xl font-bold">Разряды</h1>

    <div class="grid place-items-end mb-2">
      <Link class="btn-indigo" href="/ranks/create">
        <span>Добавить</span>
        <span class="hidden md:inline">&nbsp;Разряд</span>
      </Link>
    </div>

    <div class="bg-white rounded-md shadow overflow-x-auto">
      <table class="w-full whitespace-nowrap">
        <tr class="text-left font-bold">
          <th class="pb-4 pt-6 px-6">Разряд</th>
        </tr>

        <tr v-for="rank in ranks" class="hover:bg-gray-100 focus-within:bg-gray-100">

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/ranks/${rank.id}/edit`">
              {{ rank.name }}
            </Link>
          </td>

          <td class="w-px border-t">
            <Link class="flex items-center px-4" :href="`/ranks/${rank.id}/edit`" tabindex="-1">
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
    Icon
  },
  layout: Layout,
  props: {
    ranks: Object,
  },
  data() {
    return {
      items: [
        {name: 'Высший', id: '1'},
        {name: '1 спортивный', id: '2'},
        {name: '1 судейская', id: '3'},
        {name: '1 юношеский', id: '4'},
        {name: '2 спортивный', id: '5'},
        {name: '3 спортивный', id: '6'},
        {name: 'КМС', id: '7'},
        {name: 'МС', id: '8'},
        {name: 'Без разряда', id: '9'}
        ]
    }
  }
}
</script>
