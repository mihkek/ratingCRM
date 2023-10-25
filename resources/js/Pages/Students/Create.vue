<template>
  <div>
    <Head title="Create User" />
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/students" @click="direction = ''">Ученики</Link>
      <span class="text-indigo-400 font-medium">/</span> Создать
    </h1>
    <div class="max-w-3xl bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="store">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
          <text-input v-model="form.first_name" :error="form.errors.first_name" class="pb-8 pr-6 w-full lg:w-1/2" label="Имя" />
          <text-input v-model="form.last_name" :error="form.errors.last_name" class="pb-8 pr-6 w-full lg:w-1/2" label="Фамилия" />
          <text-input v-model="form.surname" :error="form.errors.surname" class="pb-8 pr-6 w-full lg:w-1/2" label="Отчество" />
          <text-input v-model="form.email" :error="form.errors.email" class="pb-8 pr-6 w-full lg:w-1/2" label="Email" />
          <text-input v-model="form.password" :error="form.errors.password" class="pb-8 pr-6 w-full lg:w-1/2" type="password" autocomplete="new-password" label="Пароль" />

          <select-input v-model="form.mentor" :error="form.errors.mentor" class="pb-8 pr-6 w-full lg:w-1/2" label="Наставник">
            <option v-for="mentor in mentors" :key="mentor.id" :value="mentor.id">{{ getFullName(mentor) }}</option>
          </select-input>
          
          <select-input v-model="form.trainer" :error="form.errors.trainer" class="pb-8 pr-6 w-full lg:w-1/2" label="Тренер">
            <option v-for="trainer in trainers" :key="trainer.id" :value="trainer.id">{{ getFullName(trainer) }}</option>
          </select-input>

            <select-input v-if="auth.user.role.name === 'Админ'" v-model="form.direction" :error="form.errors.direction" class="pb-8 pr-6 w-full lg:w-1/2" label="Направления">
              <option v-for="direction in directions" :key="direction.id" :value="direction.name">{{ direction.name }}</option>
            </select-input>

            <select-input v-if="form.direction" v-model="form.inputs" :error="form.errors.inputs" class="pb-8 pr-6 w-full lg:w-1/2" label="Доп меню">
              <option v-for="inputs in direction_inputs" :key="inputs.id" :value="inputs.name">{{ inputs.name }}</option>
            </select-input>
        

          <!--<file-input v-model="form.photo" :error="form.errors.photo" class="pb-8 pr-6 w-full lg:w-1/2" type="file" accept="image/*" label="Фото" />-->
        </div>
        <div class="flex items-center justify-end px-8 py-4 bg-gray-50 border-t border-gray-100">
          <loading-button :loading="form.processing" class="btn-indigo" type="submit">Создать ученика</loading-button>
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
import SelectInput from '@/Shared/SelectInput'
import LoadingButton from '@/Shared/LoadingButton'

export default {
  components: {
    FileInput,
    Head,
    Link,
    LoadingButton,
    SelectInput,
    TextInput,
  },
  layout: Layout,

  props: {
    mentors: Array,
    trainers: Array,
    directions: Array,
    auth: Object,
  },

  remember: 'form',

  data() {
    return {
      
      direction_inputs: [
        {name: 'Разряд', id: '1'},
        {name: 'Пояс', id: '2'},
      ],

      form: this.$inertia.form({
        first_name: '',
        last_name: '',
        surname: '',
        email: '',
        password: '',
        owner: false,
        photo: null,
        mentor: null,
        trainer: null,
        direction: '',
        inputs: '',
      }),
    }
  },

  methods: {
    store() {
      this.form.post('/students')
      this.form.direction = ''
    },
    getFullName($user){
      return $user.first_name + ' ' + $user.last_name + ' ' + $user.surname
    },
  },
}
</script>
