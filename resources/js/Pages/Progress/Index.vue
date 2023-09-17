<template>
  <div>
    <Head title="Достижения" />
    <h1 class="mb-8 text-3xl font-bold">Достижения</h1>

      <div class="grid  place-items-end mb-2">
        <Link class="btn-indigo" href="/progress/create">
          <span>Добавить</span>
          <span class="hidden md:inline">&nbsp;Достижение</span>
        </Link>
      </div>

       <div class="bg-white rounded-md shadow overflow-x-auto">
      <table class="w-full whitespace-nowrap">
        <tr class="text-left font-bold">
          <th class="pb-4 pt-6 px-6">Достижение</th>
          <th class="pb-4 pt-6 px-6">Мояши</th>
        </tr>

        <tr v-for="progres in progress" :key="progres.id" class="hover:bg-gray-100 focus-within:bg-gray-100">

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/progress/${progres.id}/edit`">
              {{ progres.progress_name }}
              <icon v-if="progres.deleted_at" name="trash" class="flex-shrink-0 ml-2 w-3 h-3 fill-gray-400" />
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/progress/${progres.id}/edit`">
              {{ progres.moiashi}}
              <icon v-if="progres.deleted_at" name="trash" class="flex-shrink-0 ml-2 w-3 h-3 fill-gray-400" />
            </Link>
          </td>

          <td class="w-px border-t">
            <Link class="flex items-center px-4" :href="`/progress/${progres.id}/edit`" tabindex="-1">
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
    progress: Object,
  },
}
</script>
