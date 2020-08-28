<template>
       <div>
       
  <b-navbar toggleable="lg" fixed="top" type="light"   variant="light">
   <router-link :to="{name:'Index'}"> <b-navbar-brand >SES ALO</b-navbar-brand></router-link>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    <b-collapse id="nav-collapse" is-nav>


      <b-navbar-nav  class="left" >
        
        <router-link   :to="{name:'product'}" v-for="cat in category" v-bind:key="cat"><button>{{cat.category}}</button> </router-link>
    

         
      </b-navbar-nav>

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <b-nav-form>
          <b-form-input size="sm" class="mr-sm-2" placeholder="Search"></b-form-input>
            <b-button size="sm" class="my-2 my-sm-0 "  variant="outline-danger" type="submit">Search</b-button>

        </b-nav-form>

        <b-nav-item-dropdown text="Lang" right  >
          <b-dropdown-item  href="#">EN</b-dropdown-item>
          <b-dropdown-item href="#">ES</b-dropdown-item>
          <b-dropdown-item href="#">RU</b-dropdown-item>
          <b-dropdown-item href="#">FA</b-dropdown-item>
        </b-nav-item-dropdown>

        <b-nav-item-dropdown right>
          <!-- Using 'button-content' slot -->
          <template v-slot:button-content >
            <em >User</em>
          </template>
          <b-dropdown-item href="#">Profile</b-dropdown-item>
          <b-dropdown-item href="#">Sign Out</b-dropdown-item>
        </b-nav-item-dropdown>
      </b-navbar-nav>
    </b-collapse>
  </b-navbar>
<br><br>
</div>
</template>

<script>
  export default {
 
    data() {
      
      return {
        nameState: null,
        submittedNames: [],
        category:[]
      }
    },
     mounted () {
  this.axios.get('http://127.0.0.1:8000/api/category').then((response) => {
        this.category = response.data
       console.log(response.data)

})
     
  }
     
  }
</script>


<style scoped>
.left{
  margin-left:180px;
}
router-link a{
    text-decoration: none;
}
.hello{
  position: fixed;
}
</style>
