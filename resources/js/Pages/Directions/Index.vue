<template>
  <div>
    <Head title="Направления" />
    <h1 class="mb-8 text-3xl font-bold">Направления</h1>
    <div class="flex items-center justify-between mb-6">
      <div class="flex items-center justify-between mb-6">
        <Link class="btn-indigo" href="/directions/create">
          <span>Создать</span>
          <span class="hidden md:inline">&nbsp;Направление</span>
        </Link>
      </div>
    </div>

    <div class="bg-white rounded-md shadow overflow-x-auto">
      <table class="w-full whitespace-nowrap">
        <tr class="text-left font-bold">
          <th class="pb-4 pt-6 px-6">Название</th>
        </tr>

        <tr v-for="direction in directions" :key="direction.id" class="hover:bg-gray-100 focus-within:bg-gray-100">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/directions/${direction.id}/edit`">
              {{ direction.name }}
            </Link>
          </td>
          <td class="w-px border-t">
            <Link class="flex items-center px-4"  :href="`/directions/${direction.id}/edit`" tabindex="-1">
              <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400" />
            </Link>
          </td>
        </tr>
        <tr v-if="directions.length === 0">
          <td class="px-6 py-4 border-t" colspan="4">Направлений не найдено.</td>
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
    directions: Object,
  },
  data() {
    return {

    }
  },

}
</script>

<style>

</style>
