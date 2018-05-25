var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { alert("submitted!"); }
    });

    $().ready(function() {

        // validate signup form on keyup and submit
        $("#register_form").validate({
            rules: {
                fullname: {
                    required: true,
                    minlength: 6
                },
                address: {
                    required: true,
                    minlength: 10
                },
                username: {
                    required: true,
                    minlength: 5
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                },
                
            },
            messages: {                
                fullname: {
                    required: "Nhập vào họ tên!",
                    minlength: "Họ tên nhập vào hơn 6 ký tự!"
                },
                address: {
                    required: "Nhập vào địa chỉ!.",
                    minlength: "Địa chỉ nhập vào hơn 6 ký tự!"
                },
                username: {
                    required: "Nhập tên đăng nhập!",
                    minlength: "Tên đăng nhập vào hơn 6 ký tự!."
                },
                password: {
                    required: "Nhập vào mật khẩu!.",
                    minlength: "Mật khẩu nhập vào hơn 6 ký tự!."
                },
                confirm_password: {
                    required: "Nhập vào mật khẩu xác nhận.",
                    minlength: "Mật khẩu xác nhận nhập vào hơn 6 ký tự!",
                    equalTo: "Mật khẩu xác nhận giống với mật khẩu đã nhập!"
                },
                email: "Nhập đúng định dạnh email",
            }
        });

    });


}();