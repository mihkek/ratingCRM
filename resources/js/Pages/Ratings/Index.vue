<template>
  <div>
    <Head title="Рейтинг" />
    <h1 class="mb-8 text-3xl font-bold">
      <!-- <Link class="text-indigo-400 hover:text-indigo-600" href="/achievements">Достижения</Link> -->
      <span class="text-indigo-400 font-medium">/</span> Рейтинги
    </h1>
    <div class=" bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="store">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
          <select-input v-model="form.organization_id" :error="form.errors.organization_id" class="pb-8 pr-6 w-full lg:w-1/2" label="Период">
            <option >Прошлое полугодие</option>
            <option selected>Текущее полугодие</option>
            <option >Прошлый год</option>
            <option >Текущий год</option>
          </select-input>
          <select-input v-model="form.oldGroup" :error="form.errors.organization_id" class="pb-8 pr-6 w-full lg:w-1/2" label="Возрастная группа">
            <option :value="1">6-7 лет</option>
            <option :value="1">8-9 лет</option>
            <option :value="1">10-11 лет</option>
            <option :value="1">12-13 лет</option>
            <option :value="1" selected>14-15 лет</option>
            <option :value="1">16-17 лет</option>
            <option :value="2">Наставники</option>
          </select-input>
        </div>
      </form>


        <div class="bg-white rounded-md shadow overflow-x-auto">
          <table  v-if="form.oldGroup != 2" class="w-full whitespace-nowrap">
            <tr class="text-left font-bold">
              <th class="pb-4 pt-6 px-6">Ученик</th>
              <th class="pb-4 pt-6 px-6">Пояс</th>
              <th class="pb-4 pt-6 px-6">Разряд</th>
              <th class="pb-4 pt-6 px-6" >Наставник</th>
              <th class="pb-4 pt-6 px-6">Мояши</th>
            </tr>
            <tr v-for="(rating, index) in ratings" :key="index" class="hover:bg-gray-100 focus-within:bg-gray-100">
              <td class="border-t">
                <Link class="flex items-center px-6 py-4"  tabindex="-1">
                  {{ rating.student }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4"  tabindex="-1">
                  {{ rating.belt }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4"  tabindex="-1">
                  {{ rating.rang }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4"  tabindex="-1">
                  {{ rating.trainer }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4"  tabindex="-1">
                  {{ rating.moyashi }}
                </Link>
              </td>
            </tr>
          </table>

          <table v-if="form.oldGroup == 2" class="w-full whitespace-nowrap">
            <tr class="text-left font-bold">
              <th class="pb-4 pt-6 px-6">Наставник</th>
              <th class="pb-4 pt-6 px-6">Мояши</th>
            </tr>
            <tr v-for="(trainer, index) in trainers" :key="index" class="hover:bg-gray-100 focus-within:bg-gray-100">
              <td class="border-t">
                <Link class="flex items-center px-6 py-4"  tabindex="-1">
                  {{ trainer.name }}
                </Link>
              </td>
              <td class="border-t">
                <Link class="flex items-center px-6 py-4"  tabindex="-1">
                  {{ trainer.moyashi }}
                </Link>
              </td>
            </tr>
          </table>
      </div>

    </div>
  </div>
</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import TextInput from '@/Shared/TextInput'
import SelectInput from '@/Shared/SelectInput'
import LoadingButton from '@/Shared/LoadingButton'

export default {
  components: {
    Head,
    Link,
    LoadingButton,
    SelectInput,
    TextInput,
  },
  layout: Layout,
  props: {
    ratings: Array,
    trainers: Array,
  },
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        first_name: '',
        last_name: '',
        organization_id: null,
        email: '',
        phone: '',
        address: '',
        city: '',
        region: '',
        country: '',
        postal_code: '',
        oldGroup: 0
      }),
    }
  },
  methods: {
    store() {
      this.form.post('/achievements')
    },
  },
}
</script>
