<template>
  <div>
    <Head title="Ученики" />
    <h1 class="mb-8 text-3xl font-bold">Ученики</h1>
    <div class="flex items-center justify-between mb-6">
      <search-filter v-model="form.search" class="mr-4 w-full max-w-md" @reset="reset">
        <label class="block text-gray-700">ФИО:</label>
        <select class="form-select mt-1 w-full">
          <option :value="null" />
          <option value="user">Иванов Иван Иваныч</option>
          <option value="user">Иванов Иван Иваныч</option>
        </select>
        <label class="block text-gray-700">Наставник:</label>
        <select class="form-select mt-1 w-full">
          <option :value="null" />
          <option value="user">Иванов Иван Иваныч</option>
          <option value="user">Иванов Иван Иваныч</option>
        </select>
        <label class="block mt-4 text-gray-700">Пояс:</label>
        <select class="form-select mt-1 w-full">
          <option :value="null" />
          <option value="with">Черный </option>
          <option value="only">Белый</option>
        </select>
        <label class="block mt-4 text-gray-700">Разряд:</label>
        <select class="form-select mt-1 w-full">
          <option :value="null" />
          <option value="with">Без разряда </option>
          <option value="only">1 разряд</option>
          <option value="only">2 разряд</option>
          <option value="only">3 разряд</option>
          <option value="only">4 разряд</option>
        </select>
      </search-filter>
<!--       <Link class="btn-indigo" href="/users/create">
        <span>Создать</span>
        <span class="hidden md:inline">&nbsp;Ученика</span>
      </Link> -->
    </div>
    <div class="bg-white rounded-md shadow overflow-x-auto">
      <table class="w-full whitespace-nowrap">
        <tr class="text-left font-bold">
          <th class="pb-4 pt-6 px-6">Ученик</th>
          <th class="pb-4 pt-6 px-6">День рождения</th>
          <th class="pb-4 pt-6 px-6">Пояс</th>
          <th class="pb-4 pt-6 px-6">Разряд</th>
          <th class="pb-4 pt-6 px-6">Наставник</th>
          <th class="pb-4 pt-6 px-6">Логин</th>
          <th class="pb-4 pt-6 px-6">Пароль</th>
          <th class="pb-4 pt-6 px-6">Уровень доступа</th>
        </tr>
        <tr v-for="user in users" :key="user.id" class="hover:bg-gray-100 focus-within:bg-gray-100">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500">
              <img v-if="user.photo" class="block -my-2 mr-2 w-5 h-5 rounded-full" :src="user.photo" />
              {{ user.name }}
              <icon v-if="user.deleted_at" name="trash" class="flex-shrink-0 ml-2 w-3 h-3 fill-gray-400" />
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" tabindex="-1">
              {{ user.date }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" tabindex="-1">
              {{ user.belt }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" tabindex="-1">
              {{ user.category }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" tabindex="-1">
              {{ user.trainer }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" tabindex="-1">
              {{ user.login }}
            </Link>
          </td>
          <td class="border-t">
            <Link class="flex items-center px-6 py-4" tabindex="-1">
              {{ user.password }}
            </Link>
          </td>
          <td class="w-px border-t">
            <Link class="flex items-center px-4" tabindex="-1">
              {{ user.role }}
            </Link>
          </td>
        </tr>
        <tr v-if="users.length === 0">
          <td class="px-6 py-4 border-t" colspan="4">Учеников не найдено.</td>
        </tr>
      </table>
    </div>
  </div>

</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
import Icon from '@/Shared/Icon'
import pickBy from 'lodash/pickBy'
import Layout from '@/Shared/Layout'
import throttle from 'lodash/throttle'
import mapValues from 'lodash/mapValues'
import SearchFilter from '@/Shared/SearchFilter'

export default {
  components: {
    Head,
    Icon,
    Link,
    SearchFilter,
  },
  layout: Layout,
  props: {
    filters: Object,
    users: Array,
  },
  data() {
    return {
      form: {
        search: this.filters.search,
        role: this.filters.role,
        trashed: this.filters.trashed,
      },
    }
  },
  watch: {
    form: {
      deep: true,
      handler: throttle(function () {
        this.$inertia.get('/users', pickBy(this.form), { preserveState: true })
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
