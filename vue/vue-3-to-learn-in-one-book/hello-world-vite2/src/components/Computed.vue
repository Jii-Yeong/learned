<template>
  <h2>Small Items</h2>
  <p v-for="item in small_items_o" :key="item.id">{{ item.text }}</p>
  <h2>Big Items</h2>
  <p v-for="item in big_items_o" :key="item.id">{{ item.text }}</p>
</template>

<script>
export default {
  //Options API
  data() {
    return {
      arr: [
        { id: 1, text: '1번 옵션 아이템' },
        { id: 2, text: '2번 옵션 아이템' },
        { id: 3, text: '3번 옵션 아이템' },
        { id: 4, text: '4번 옵션 아이템' },
        { id: 5, text: '5번 옵션 아이템' },
      ],
    }
  },
  computed: {
    small_items_o() {
      return this.arr.filter((i) => i.id < 3)
    },
    big_items_o() {
      return this.arr.filter((i) => i.id >= 3)
    },
  },
}
</script>