<template>
  <div>
    <Head title="Achievements" />
    <h1 class="mb-8 text-3xl font-bold">Журнал достижений</h1>
    <div class="flex items-center justify-between mb-6">
      <!-- <search-filter v-model="form.search" class="mr-4 w-full max-w-md" @reset="reset">
        <label class="block text-gray-700">Trashed:</label>
        <select v-model="form.trashed" class="form-select mt-1 w-full">
          <option :value="null" />
          <option value="with">With Trashed</option>
          <option value="only">Only Trashed</option>
        </select>
      </search-filter> -->
      <Link class="btn-indigo" href="/achievements/create">
        <span>Создать</span>
        <span class="hidden md:inline">&nbsp;Достижение</span>
      </Link>
    </div>
    <div class="block max-w-full mb-5 p-6 bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Батраков Михаил Сакитович</h5>
        <p class="text-2xl font-normal text-gray-700 dark:text-gray-400"><strong>Пояс</strong> - Оранжевый (10 кю) .</p>
        <p class="text-2xl font-normal text-gray-700 dark:text-gray-400"><strong>Разряд</strong> - Без разряда .</p>
        <p class="text-2xl font-normal text-gray-700 dark:text-gray-400"><strong>Наставник</strong> - Иванов Иван Иваныч .</p>
    </div>
    <div class="bg-white rounded-md shadow overflow-x-auto">
      <table class="w-full whitespace-nowrap">
        <tr class="text-left font-bold">
          <th class="pb-4 pt-6 px-6">Ученик</th>
          <th class="pb-4 pt-6 px-6">Достижения</th>
          <th class="pb-4 pt-6 px-6">Дата</th>
          <th class="pb-4 pt-6 px-6">Мояши</th>
          <th class="pb-4 pt-6 px-6" colspan="2">Наставник</th>
        </tr>
        <tr v-for="contact in achievements" :key="contact.id" class="hover:bg-gray-100 focus-within:bg-gray-100">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/achievements/1/edit`">
              {{ contact.student }}
              <icon v-if="contact.deleted_at" name="trash" class="flex-shrink-0 ml-2 w-3 h-3 fill-gray-400" />
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" :href="`/achievements/1/edit`" tabindex="-1">
              <div v-if="contact.progress_name">
                {{ contact.progress_name }}
              </div>
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" :href="`/achievements/1/edit`" tabindex="-1">
              {{ contact.date }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" :href="`/achievements/1/edit`" tabindex="-1">
              {{ contact.moyashi }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" :href="`/achievements/1/edit`" tabindex="-1">
              {{ contact.trainer }}
            </Link>
          </td>

          <td class="w-px border-t">
            <Link class="flex items-center px-4" :href="`/achievements/1/edit`" tabindex="-1">
              <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400" />
            </Link>
          </td>
        </tr>
        <tr v-if="achievements.length === 0">
          <td class="px-6 py-4 border-t" colspan="4">Достижение ещё нет.</td>
        </tr>
      </table>
    </div>
    <!-- <pagination class="mt-6" :links="achievements.links" /> -->
  </div>
</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
import Icon from '@/Shared/Icon'
import pickBy from 'lodash/pickBy'
import Layout from '@/Shared/Layout'
import throttle from 'lodash/throttle'
import mapValues from 'lodash/mapValues'
import Pagination from '@/Shared/Pagination'
import SearchFilter from '@/Shared/SearchFilter'

export default {
  components: {
    Head,
    Icon,
    Link,
    Pagination,
    SearchFilter,
  },
  layout: Layout,
  props: {
    filters: Object,
    achievements: Object,
  },
  data() {
    return {
      form: {
        search: this.filters.search,
        trashed: this.filters.trashed,
      },
    }
  },
  watch: {
    form: {
      deep: true,
      handler: throttle(function () {
        this.$inertia.get('/achievements', pickBy(this.form), { preserveState: true })
      }, 150),
    },
  },
  methods: {
    reset() {
      this.form = mapValues(this.form, () => null)
    },
  },
}
</script>
