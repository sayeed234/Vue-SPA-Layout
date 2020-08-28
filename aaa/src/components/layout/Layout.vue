<template>
  <div>
  <b-container fluid class="bv-example-row">
  <b-row>
    <b-col cols="12"><Nav/></b-col>
    <b-col cols="12">
    <router-view/>
    </b-col>
    <b-col cols="12"><Footer/></b-col>

  </b-row>
</b-container>



  </div>
</template>

<script>
import Nav from './Nav.vue'
import Footer from './Footer.vue'

export default {
  name: 'Layout',
  components: {
    Nav,
    Footer
  }
}

</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 0px;
}

</style>
