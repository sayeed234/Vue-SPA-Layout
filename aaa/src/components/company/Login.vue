<template>
  <div >

<div id="login" class="container">
  <div class="row-fluid">
    <div class="span12">
      <div class="login well well-small shadows">
        <div class="center">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe1p_pxSF2aXrfj6nrLFMziOHC_oEdKmW0Y2mp2TLx0jDiFeeguA&s" alt="logo"> 
        </div>
        <form action="/users/login" style="" class="login-form" id="UserLoginForm" method="post" accept-charset="utf-8">
        <div class="input-group flex-nowrap">          
        <div class="input-group-prepend">
        <span class="input-group-text" id="addon-wrapping"> <font-awesome-icon icon="user-secret" /></span>
        </div>
        <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="addon-wrapping">
        </div>
        <br>
        <div class="input-group flex-nowrap">          
        <div class="input-group-prepend">
        <span class="input-group-text" id="addon-wrapping">@</span>
        </div>
        <input type="password" class="form-control" placeholder="Password" aria-label="Username" aria-describedby="addon-wrapping">
        </div>
          <br>
          <div class="control-group float-left">
            <label id="remember-me">
              <input type="checkbox" name="data[User][remember_me]" value="1" id="UserRememberMe"> Remember Me?</label>
          </div>
          <div class="control-group">
            <input class="btn btn-primary btn-large btn-block" type="submit" value="Sign in"> 
          </div>
        </form>
      </div><!--/.login-->
    </div><!--/.span12-->
  </div><!--/.row-fluid-->
</div><!--/.container-->
  </div>
</template>

<script>

export default {
  
}
</script>

<style scoped>
#login img{
  margin: 10px 0;
}
#login .center {
  text-align: center;
}

#login .login {
  max-width: 350px;
	margin: 35px auto;
}

#login .login-form{
  padding:20px 25px;
}
.shadows{
       box-shadow:inset 0 0 400px rgb(7, 160, 32);
}

</style>
