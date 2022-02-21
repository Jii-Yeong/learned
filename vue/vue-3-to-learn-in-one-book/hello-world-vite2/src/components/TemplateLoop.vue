<template>
  <div style="width: 200px">
    <ol>
      <li v-for="(item, key, index) in items" :key="item">{{ key }} {{ item }} {{ index }}</li>
    </ol>
  </div>
</template>

<script>
import { reactive } from '@vue/reactivity'
export default {
  data() {
    return {
      items: reactive({ 1: '1번 객체', 2: '2번 객체', 3: '3번 객체' }),
    }
  },
}
</script>