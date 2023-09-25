<script setup>
import { ref } from 'vue'
import TreeItem from './TreeItem.vue'

const treeData = ref({
  name: 'РЕЁТИНГИ',
  iconName: 'star',
  children: [
    {
      name: 'Прошлое полугодие',
      children: [
        { name: 'Рейтинг 6-7 лет', link: 'star' },
        { name: 'Рейтинг 8-9 лет' },
        { name: 'Рейтинг 10-11 лет' },
        { name: 'Рейтинг 12-13 лет' },
        { name: 'Рейтинг 14-15 лет' },
        { name: 'Рейтинг 16-17 лет' },
        { name: 'Наставники' }
      ]
    },
    {
      name: 'Текущее полугодие',
      children: [
        { name: 'Рейтинг 6-7 лет' },
        { name: 'Рейтинг 8-9 лет' },
        { name: 'Рейтинг 10-11 лет' },
        { name: 'Рейтинг 12-13 лет' },
        { name: 'Рейтинг 14-15 лет' },
        { name: 'Рейтинг 16-17 лет' },
        { name: 'Наставники' }
      ]
    },
    {
      name: 'Прошлый год',
      children: [
        { name: 'Рейтинг 6-7 лет' },
        { name: 'Рейтинг 8-9 лет' },
        { name: 'Рейтинг 10-11 лет' },
        { name: 'Рейтинг 12-13 лет' },
        { name: 'Рейтинг 14-15 лет' },
        { name: 'Рейтинг 16-17 лет' },
        { name: 'Наставники' }
      ]
    },
    {
      name: 'Текущий год',
      children: [
        { name: 'Рейтинг 6-7 лет' },
        { name: 'Рейтинг 8-9 лет' },
        { name: 'Рейтинг 10-11 лет' },
        { name: 'Рейтинг 12-13 лет' },
        { name: 'Рейтинг 14-15 лет' },
        { name: 'Рейтинг 16-17 лет' },
        { name: 'Наставники' }
      ]
    }
  ],
})
</script>

<template>
  <ul class="mb-4 flex no-wrap items-center">
    <TreeItem class="item" :model="treeData"></TreeItem>
  </ul>
</template>
