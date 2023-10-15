<template>
  <div>
    <Head title="Новый Рейтинг"/>
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/club_rating">Рейтинги клубов</Link>
      <span class="text-indigo-400 font-medium">/</span> Создать
    </h1>

    <div class="max-w-3xl bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="store">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
          <text-input v-model="form.name" :error="form.errors.name" class="pb-8 pr-6 w-full lg:w-1/2" label="Название рейтинга клуба"/>
          <text-input v-model="form.first" :error="form.errors.first" class="pb-8 pr-6 w-full lg:w-1/2" label="1 Место"/>
          <text-input v-model="form.second" :error="form.errors.second" class="pb-8 pr-6 w-full lg:w-1/2" label="2 Место"/>
          <text-input v-model="form.third" :error="form.errors.third" class="pb-8 pr-6 w-full lg:w-1/2" label="3 Место"/>
          <text-input v-model="form.total" :error="form.errors.total" class="pb-8 pr-6 w-full lg:w-1/2" label="Общий командный зачет"/>
          <select-input v-model="form.tournament" :error="form.errors.tournament" class="pb-8 pr-6 w-full lg:w-1/2" label="Название турнира">
            <option v-for="tournament in tournaments" :key="tournament.id" :value="tournament.id">{{ tournament.name }}</option>
          </select-input>
          <select-input v-model="form.club" :error="form.errors.club" class="pb-8 pr-6 w-full lg:w-1/2" label="Название клуба">
            <option v-for="club in clubs" :key="club.id" :value="club.id">{{ club.name }}</option>
          </select-input>
          <div class="flex items-center justify-end px-8 py-4 bg-gray-50 border-t border-gray-100">
            <loading-button :loading="form.processing" class="btn-indigo" type="submit">Создать</loading-button>
          </div>
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
  props: {
    tournaments: Array,
    clubs: Array,
  },
  layout: Layout,
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        name: '',
        first: '',
        second: '',
        third: '',
        total: '',
        tournament: '',
        club: ''
      }),
    }
  },
  methods: {
    store() {
      this.form.post('/club_rating')
    },
  },
}
</script>
