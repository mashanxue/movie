

$(function(){
    //发送验证码
    $(".sendVerifyCode").on("click", function(){
        var phone = $("input[name=phone]").val();
        $.ajax({
            url: "/sendSms",
            async : true,
            type: "post",
            dataType: "json",
            data: {"phone":phone},
            success: function (data) {
                if(data == 'fail'){
                    alert("发送验证码失败");
                    return ;
                }
            }
        });
    })



    //提交
    $(".sub-btn").on("click", function(){
        var data = {};
        data.password = $.trim($("input[name=password]").val());
        data.phone = $.trim($("input[name=phone]").val());
        data.verifyCode = $.trim($("input[name=verifyCode]").val());
        $.ajax({
            url: "/zc",
            async : true,
            type: "post",
            dataType: "json",
            data: data,
            success: function (data) {
                if(data == 'fail'){
                    alert("注册失败");
                    return ;
                }
                alert("注册成功");
            }
        });
    })
});



