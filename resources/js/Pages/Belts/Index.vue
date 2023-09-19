<template>
  <div>
    <Head title="Пояса" />
    <h1 class="mb-8 text-3xl font-bold">Пояса</h1>

      <div class="grid place-items-end mb-2">
        <Link class="btn-indigo" href="/belts/create">
          <span>Добавить</span>
          <span class="hidden md:inline">&nbsp;Пояс</span>
        </Link>
      </div>

       <div class="bg-white rounded-md shadow overflow-x-auto">
      <table class="w-full whitespace-nowrap">
        <tr class="text-left font-bold">
          <th class="pb-4 pt-6 px-6">Пояс</th>
        </tr>

        <tr v-for="belt in belts" class="hover:bg-gray-100 focus-within:bg-gray-100">

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/belts/${belt.id}/edit`">
              {{ belt.name }}
            </Link>
          </td>

          <td class="w-px border-t">
            <Link class="flex items-center px-4" :href="`/belts/${belt.id}/edit`" tabindex="-1">
              <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400" />
            </Link>
          </td>

        </tr>

      </table>
    </div>

  </div>
</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
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
    belts: Object,
  },
    data() {
    return {
      items: [{ first_name: 'Leanne Graham', id: '1'},
       { first_name: 'Clementine Bauch', id: '2' },
       { first_name: 'Patricia Lebsack', id: '3' },
       { first_name: 'Chelsey Dietrich', id: '4' },
       { first_name: 'Mrs. Dennis Schulist', id: '5' },
       { first_name: 'Kurtis Weissnat', id: '6' },
       { first_name: 'Nicholas Runolfsdottir', id: '7' },
       { first_name: 'Glenna Reichert', id: '8' },
       { first_name: 'Clementina DuBuque', id: '9' }]
  }

}
}
</script>
