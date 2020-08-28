<template>
 <div>
 <br>
 <div>
  <b-card no-body class="text-center">
    <div class="bg-light text-dark h">
      <b-container class="bv-example-row">
  <b-row class="pad">
    <b-col>1 of 3</b-col>
    <b-col cols="2">
     <b>3382.34 $ </b> <p class="size">Hotel + flight Price</p>
     <b-button size="sm"  class="dk" variant="primary">Select</b-button>
     <br>
     <b-button size="sm" class="d" >Show Details</b-button>
    </b-col>

  </b-row>
</b-container>
    </div>
  </b-card>
  <br>
   <b-card no-body class="text-center">
    <div class="bg-light text-dark h">
      This is some content without the default <samp>&lt;b-card-body&gt;</samp> section. Notice the
      lack of padding between the card's border and this gray <samp>&lt;div&gt;</samp>.
    </div>
  </b-card>
</div>

</div>
</template>

<script>

export default {
  name: 'Product',
 components:{
  
 }
}
</script>


<style scoped>
.h{
  height:150px;
}
.d{
  margin-top:9px;
}
.dk{
  width:100px;
}
.size{
  font-size:10px;
}
.pad{
  padding:8px;
}
</style>
