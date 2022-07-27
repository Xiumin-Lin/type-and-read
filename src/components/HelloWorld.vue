<script setup>
import { ref } from 'vue';

defineProps({
  msg: String,
});

const count = ref(0);
</script>

<template>
  <div class="text-center">
    <p class="text-3xl">{{ msg }}</p>
    <p class="italic">*Work in progress*</p>
  </div>

  <div>
    <button
      type="button"
      data-mdb-ripple="true"
      data-mdb-ripple-color="primary"
      class="inline-block rounded border-2 border-blue-600 px-6 py-2 text-xs font-medium uppercase leading-tight text-blue-600 transition duration-150 ease-in-out hover:bg-blue-600 hover:text-white focus:outline-none focus:ring-0"
      @click="count++"
    >
      count is {{ count }}
    </button>
  </div>
</template>
