<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<title>Animated Login and Sign up</title>

  <link href="./images/SystemLogo.png" rel="icon">
  <link rel="stylesheet" href="css/reset.min.css">
  <link rel="stylesheet" href="css/style.css">

</head>
<body>

<section class="user">
  <div class="user_options-container">
    <div class="user_options-text">
      <div class="user_options-unregistered">
        <h2 class="user_unregistered-title">没有账号？</h2>
        <p class="user_unregistered-text">点击注册</p>
        <button class="user_unregistered-signup" id="signup-button">注册</button>
      </div>

      <div class="user_options-registered">
        <h2 class="user_registered-title">已有账号?</h2>
        <p class="user_registered-text">点击登录.</p>
        <button class="user_registered-login" id="login-button">登录</button>
      </div>
    </div>
    
    <div class="user_options-forms" id="user_options-forms">
      <div class="user_forms-login">
        <h2 class="forms_title">登录</h2>
        <form class="forms_form"  action="/findUserById.do" method="post">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input name="userId" type="text" placeholder="账号" class="forms_field-input" required autofocus />
            </div>
            <div class="forms_field">
              <input name="pwd" type="password" placeholder="密码" class="forms_field-input" required />
            </div>
          </fieldset>
          <div class="forms_buttons">
            <button type="button" class="forms_buttons-forgot">忘记密码?</button>
            <input type="submit" value="登录" class="forms_buttons-action">
          </div>
        </form>
      </div>
      <div class="user_forms-signup">
        <h2 class="forms_title">注册</h2>
        <form class="forms_form" action="/addUser.do">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input name="userName" type="text" placeholder="名称" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input name="userId" type="text" placeholder="账号" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input name="pwd" type="password" placeholder="密码" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input name="departmentId" type="text" placeholder="部门" class="forms_field-input" required />
            </div>
          </fieldset>
          <div class="forms_buttons">
            <input type="submit" value="注册" class="forms_buttons-action">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

<script src="js/script.js"></script>

</body>
</html>
