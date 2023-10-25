<template>
  <div>
    <Head title="Create User" />
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/journal">Раздел наставника</Link>
      <span class="text-indigo-400 font-medium">/</span> Создать
    </h1>
    <div class="max-w-3xl bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="store">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
          <select-input v-model="form.mentor_id" :error="form.errors.mentor_id" class="pb-8 pr-6 w-full lg:w-1/2" label="Наставник">
            <option v-for="mentor in mentors" :key="mentor.id" :value="mentor.id">{{ getFullName(mentor) }}</option>
          </select-input>
          <select-input v-model="form.student" :error="form.errors.student" class="pb-8 pr-6 w-full lg:w-1/2" label="Ученик">
            <option v-for="student in students" @click="addRoutePoint(student)" :key="student.id" :value="student.id">{{ getFullName(student) }}</option>
          </select-input>
          <date-input v-model="form.date" :error="form.errors.date" class="pb-8 pr-6 w-full lg:w-1/2" label="Дата"/>
          <textarea-input v-model="form.description" :error="form.errors.description" class="pb-8 pr-6 w-full" label="Описание" />

          <div class="lg:flex-none lg:w-1/2">
            <h2 class="font-semibold text-slate-900 dark:text-slate-100 mb-2">Ученики:</h2>
            <ul class="mt-3 mb-3 space-y-2">
              <li v-for="student in all_route_points" :key="student.id">
                <div class="flex items-center">
                  <a class="ml-2 hover:text-slate-900 dark:hover:text-slate-300">{{ getFullName(student) }}</a>
                  <button class="flex-shrink-0 ml-2 w-3 h-3 fill-gray-400" @click="deleteRoutePoint(student)">
                    <icon name="trash" class="fill-red-400"/>
                  </button>
                </div>
              </li>
            </ul>
          </div>

        </div>
        <div class="flex items-center justify-end px-8 py-4 bg-gray-50 border-t border-gray-100">
          <loading-button :loading="form.processing" class="btn-indigo" type="submit">Создать запись</loading-button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import FileInput from '@/Shared/FileInput'
import TextInput from '@/Shared/TextInput'
import TextareaInput from "@/Shared/TextareaInput.vue";
import SelectInput from '@/Shared/SelectInput'
import LoadingButton from '@/Shared/LoadingButton'
import DateInput from "@/Shared/DateInput.vue";

export default {
  components: {
    DateInput,
    FileInput,
    Head,
    Link,
    LoadingButton,
    SelectInput,
    TextInput,
    TextareaInput,
  },
  layout: Layout,
  remember: 'form',
  props: {
    mentors: Array,
    students: Array,
  },
  data() {
    return {
      all_route_points: [],
      form: this.$inertia.form({
        mentor_id: null,
        date: null,
        description: '',
      }),
    }
  },
  methods: {
    addRoutePoint(user) {
      const index = this.students.findIndex(student => student.id === user.id);

      if (index !== -1) {
        this.all_route_points.push(user);
        this.students.splice(index, 1);
      }
    },
    deleteRoutePoint(user) {
      const index = this.students.findIndex(student => student.id === user.id);

      if (index !== -1) {
        this.all_route_points.splice(index, 1);
        this.students.push(user);
      }
    },
    getFullName($user){
      return $user.first_name + ' ' + $user.last_name + ' ' + $user.surname
    },
    store() {
      this.form.post('/journal/store', this.all_route_points)
      //  this.form.post('/journal/store', ['param','value'])
    },
  },
}
</script>
