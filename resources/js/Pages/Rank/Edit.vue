<template>
  <div>
<Head :title="`${form.category_name}`" />
    <h1 class="mb-8 text-3xl font-bold">
      <Link class="text-indigo-400 hover:text-indigo-600" href="/beltlist">Пояса</Link>
      <span class="text-indigo-400 font-medium">/</span>
      {{ form.category_name }}
    </h1>

    <div class="max-w-3xl bg-white rounded-md shadow overflow-hidden">
      <form @submit.prevent="update">
        <div class="flex flex-wrap -mb-8 -mr-6 p-8">
          <text-input v-model="form.category_name" :error="form.errors.category_name" class="pb-8 pr-6 w-full lg:w-1/2" label="Пояс" />
        </div>

                <div class="flex items-center px-8 py-4 bg-gray-50 border-t border-gray-100">
  
          <loading-button class="btn-indigo ml-auto" type="submit">Обновить пояс</loading-button>
        </div>

      </form>
    </div>
   
  </div>
</template>

<script>
import { Head, Link } from '@inertiajs/inertia-vue3'
import Layout from '@/Shared/Layout'
import TextInput from '@/Shared/TextInput'
import SelectInput from '@/Shared/SelectInput'
import LoadingButton from '@/Shared/LoadingButton'
import TrashedMessage from '@/Shared/TrashedMessage'

export default {
  components: {
    Head,
    Link,
    LoadingButton,
    SelectInput,
    TextInput,
    TrashedMessage,
  },
  layout: Layout,
  props: {
    category: Object,
  },
  remember: 'form',
  data() {
    return {
      form: this.$inertia.form({
        category_name: this.category.category_name

      }),
    }
  },

}
</script>
