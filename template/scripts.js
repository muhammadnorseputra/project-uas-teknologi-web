/*!
* Start Bootstrap - Personal v1.0.1 (https://startbootstrap.com/template-overviews/personal)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-personal/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

// Contact Form
let form = $("form#contactForm");
form.on("submit", function(event) {
    event.preventDefault();
    let _ = $(this);
    $.ajax({
        url: _.attr('action'),
        type: _.attr('method'),
        data: _.serialize(),
        success: function(res) {
            if(res.status == true) {
                form[0].reset();
                window.location.reload();
                return alert(res.msg);
            }
            alert(res.msg);
        },
        error: function(e) {
            console.log(e.error);
        }
    })
});