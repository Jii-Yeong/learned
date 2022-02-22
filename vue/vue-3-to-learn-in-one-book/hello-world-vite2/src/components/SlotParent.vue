<template>
  <slot-child v-slot="slotProps">❤ {{ slotProps.item }}</slot-child>
</template>

<script>
import SlotChild from "./SlotChild.vue"
export default {
  components: {
    SlotChild,
  }
}
</script>