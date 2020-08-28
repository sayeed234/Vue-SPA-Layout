<template>
 <div>
 <hr>
 <div class="text-right">
     <b-button  variant="outline-danger" v-b-modal.modal-prevent-closing>Open Modal</b-button> 
</div>
<hr>



 <div >
 <table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Mobile</th>
      <th scope="col">Status</th>
      <th scope="col">join Date</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="item in items" v-bind:key="item">
      <td>{{item.name}}</td>
      <td>{{item.mobile}}</td>
      <td>{{item.status}}</td>
      <td>{{item.created_at}}</td>
    </tr>
  </tbody>
</table>

  </div>


    <b-modal
      id="modal-prevent-closing"
      ref="modal"
      title="Submit Your Name"
      @show="resetModal"
      @hidden="resetModal"
      @ok="handleOk"
    >
      <form ref="form" @submit.stop.prevent="handleSubmit">
        <b-form-group
          :state="nameState"
          label="Name"
          label-for="name-input"
          invalid-feedback="Name is required"
        >
          <b-form-input
            id="name-input"
            v-model="name"
            :state="nameState"
            required
          ></b-form-input>
        </b-form-group>
      </form>
    </b-modal>
</div>
</template>

<script>
  export default {
 
    data() {
      
      return {
        nameState: null,
        submittedNames: [],
        items:[]
      }
    },
     mounted () {
  this.axios.get('http://127.0.0.1:8000/api/customerapi').then((response) => {
        this.items = response['data']
       console.log(response.data)

})
     
  },
    methods: {
      checkFormValidity() {
        const valid = this.$refs.form.checkValidity()
        this.nameState = valid
        return valid
      },
      resetModal() {
        this.name = ''
        this.nameState = null
      },
      handleOk(bvModalEvt) {
        // Prevent modal from closing
        bvModalEvt.preventDefault()
        // Trigger submit handler
        this.handleSubmit()
      },
      handleSubmit() {
        // Exit when the form isn't valid
        if (!this.checkFormValidity()) {
          return
        }
        // Push the name to submitted names
        this.submittedNames.push(this.name)
        // Hide the modal manually
        this.$nextTick(() => {
          this.$bvModal.hide('modal-prevent-closing')
        })
      }
    }
  }
</script>


<style scoped>
.ll{
  color:red;
}
</style>
