<template>
  <div>
    <Head title="Рейтинг клубов"/>
    <h1 class="mb-8 text-3xl font-bold">Рейтинг клубов</h1>

    <div class="grid  place-items-end mb-2">
      <Link class="btn-indigo" href="/mentors/create">
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

        <tr class="bg-gray-100 focus-within:bg-gray-100">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              Зенит
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              21
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              14
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              5
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              46
            </Link>
          </td>
        </tr>

        <tr class="bg-gray-100 focus-within:bg-gray-100">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              Краснодар
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              19
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              12
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              4
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              41
            </Link>
          </td>
        </tr>

        <tr class="bg-gray-100 focus-within:bg-gray-100">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              Ростов
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              16
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              10
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              3
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              21
            </Link>
          </td>
        </tr>


        <tr class="hover:bg-gray-100 focus-within:bg-gray-100">
          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              Локомотив
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              14
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              8
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              2
            </Link>
          </td>

          <td class="border-t">
            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors//edit`">
              18
            </Link>
          </td>
        </tr>

<!--        <tr v-for="mentor in mentors.data" :key="mentor.id" class="hover:bg-gray-100 focus-within:bg-gray-100">-->

<!--          <td class="border-t">-->
<!--            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors/${mentor.id}/edit`">-->
<!--              {{ mentor.first_name }}-->
<!--              <icon v-if="mentor.deleted_at" name="trash" class="flex-shrink-0 ml-2 w-3 h-3 fill-gray-400"/>-->
<!--            </Link>-->
<!--          </td>-->

<!--          <td class="border-t">-->
<!--            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors/${mentor.id}/edit`">-->
<!--              {{ mentor.last_name }}-->
<!--              <icon v-if="mentor.deleted_at" name="trash" class="flex-shrink-0 ml-2 w-3 h-3 fill-gray-400"/>-->
<!--            </Link>-->
<!--          </td>-->

<!--          <td class="border-t">-->
<!--            <Link class="flex items-center px-6 py-4 focus:text-indigo-500" :href="`/mentors/${mentor.id}/edit`">-->
<!--              {{ mentor.surname }}-->
<!--              <icon v-if="mentor.deleted_at" name="trash" class="flex-shrink-0 ml-2 w-3 h-3 fill-gray-400"/>-->
<!--            </Link>-->
<!--          </td>-->

<!--          <td class="w-px border-t">-->
<!--            <Link class="flex items-center px-4" :href="`/mentors/${mentor.id}/edit`" tabindex="-1">-->
<!--              <icon name="cheveron-right" class="block w-6 h-6 fill-gray-400"/>-->
<!--            </Link>-->
<!--          </td>-->
<!--        </tr>-->
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
    mentors: Object,
  },
}

</script>
