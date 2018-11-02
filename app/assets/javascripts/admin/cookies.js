$(document).on('turbolinks:load', () => {
  $('#sign-in-form').validate({
    rules: {
      'account': {
        required: true
      },
      'password': {
        required: true
      }
    },
    messages: {
      'account': {
        required: '请输入用户账号！'
      },
      'password': {
        required: '请输入用户密码！'
      }
    }
  })

  $('#forget-password-form').validate({
    rules: {
      'account': {
        required: true,
        minlength: 6
      },
      'mobile': {
        required: true
      },
      'password': {
        required: true,
        minlength: 6
      },
      'password_confirmation': {
        required: true,
        minlength: 6,
        equalTo: '#user_password'
      },
      _rucaptcha: {
        required: true
      }
    },
    messages: {
      'account': {
        required: '请输入用户账号！',
        minlength: '请输入最少长度为6位的用户账号!'
      },
      'mobile': {
        required: '请输入手机号码！'
      },
      'password': {
        required: '请输入用户密码！',
        minlength: '请输入最少长度为6位的用户密码!'
      },
      'password_confirmation': {
        required: '请输入确认密码！',
        minlength: '请输入最少长度为6位的确认密码!',
        equalTo: '请输入与密码相同的内容！'
      },
      _rucaptcha: {
        required: '请输入验证码！'
      }
    }
  })
})