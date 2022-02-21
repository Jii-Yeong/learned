<template>
  <p>줄임말과 원래말을 입력하세요.</p>
  <!-- v-bind : 템플릿을 통해서 변수의 값을 변경시킬 수 없음 -->
  <!-- v-model : 템플릿을 통해 변수를 변경시킬 수 있음 -->
  <input type="text" v-bind:value="abbr" />
  <input type="text" v-model="normal" />
  <hr />
  <abbr v-bind:title="normal">{{ abbr }}</abbr>
</template>

<script>
import { ref } from "vue"

export default {
  // Composition API
  setup() {
    const abbr = ref('DOPT')
    const normal = ref('Dog Project Team')
    return {
      abbr,
      normal
    }
  }
}
</script>>