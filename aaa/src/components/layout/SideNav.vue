<template>
<div class="bg-danger">
<br>
<b-container class="bv-example-row ">
  <b-row>
    <b-col>Filters</b-col>
    <b-col><b-icon-filter-left></b-icon-filter-left> </b-col>
  </b-row>
  <br>
  <b-row>
    <b-col>Class</b-col>
    <b-col><b-icon-chevron-down></b-icon-chevron-down> </b-col>
  </b-row>
  <br>
   <b-row>
    <b-col cols="2"> <b-form-checkbox
      id="checkbox-1"
      v-model="status"
      name="checkbox-1"
    >
    
    </b-form-checkbox></b-col>
    <b-col class="text-left">  Economy </b-col>
  </b-row>
   <b-row>
    <b-col cols="2"> <b-form-checkbox
      id="checkbox-2"
      v-model="status"
      name="checkbox-2"
    >
    
    </b-form-checkbox></b-col>
    <b-col class="text-left">  Business </b-col>
  </b-row>
   <b-row>
    <b-col cols="2"> <b-form-checkbox
      id="checkbox-3"
      v-model="status"
      name="checkbox-3"
    >
    
    </b-form-checkbox></b-col>
    <b-col class="text-left">Premium Business</b-col>
  </b-row>
   <b-row>
    <b-col cols="2"> <b-form-checkbox
      id="checkbox-4"
      v-model="status"
      name="checkbox-4"
    >
    
    </b-form-checkbox></b-col>
    <b-col class="text-left">First Class</b-col>
  </b-row>
</b-container>



  <b-nav vertical class=" bg-cyan h" fixed="top">
   <b-dropdown text="Company" variant="outline-danger" class="m-2">
   
   <b-dropdown-item > <router-link :to="{name:'Admin'}">Admin</router-link></b-dropdown-item>
    
  </b-dropdown>

    
  </b-nav>
</div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: ['items'],
}
</script>


<style scoped>
.h{
    height:600px;
    width:235px;
}
</style>
