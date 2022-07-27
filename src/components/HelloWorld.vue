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
      class="border-2 inline-block px-6 py-2 border-blue-600 text-blue-600 font-medium text-xs leading-tight uppercase rounded hover:bg-blue-600 hover:text-white focus:outline-none focus:ring-0 transition duration-150 ease-in-out"
      @click="count++"
    >
      count is {{ count }}
    </button>
  </div>
</template>
