<!-- 선언적 렌더링 : 뱐수를 선언하고 값을 넣으면 자동으로 DOM에 업데이트 되는 렌더링 기법 -->
<template>
  <div id="date">
    <!-- 수염 표기법 : 템플릿에서 변수의 값을 나타내기 위한 표기법 -->
    {{ date }}
  </div>
  <div id="date2">
    {{ date2 }}
  </div>
  <!-- v-text 디렉티브 표기법 -->
  <p v-text="date"></p>
  <!-- 수염 표기법과 v-text 디렉티브 표기법은 HTML 엘리먼트의 textContent 값에 변수를 전달 -->
  <!-- <div v-html="<i>HTML TEXT</i>"></div> -->
  <!-- v-html 디렉티브 표기법은 HTML 엘리먼트의 innerHTML 값에 변수를 전달 -->
  <!-- v-pre 디렉티브 표기법 : 해당 엘리먼트를 포함한 모든 자식 엘리먼트들의 값을 컴파일하지 않음 -->
  <div v-pre>{{ date }}</div>
</template>

<script>
export default {
  // Composition API
  setup() {
    const date = Date().toString()
    return {
      date,
    }
  },
  // Options API
  data() {
    return {
      date2: Date().toString(),
    }
  },
}
</script>