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
})