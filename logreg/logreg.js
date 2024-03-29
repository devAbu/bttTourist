jQuery.noConflict();
jQuery("#registerButton").click(function () {

    var registerName = document.getElementById('register-name').value;
    var registerEmail = document.getElementById('register-name').value;
    var registerPhone = document.getElementById('register-phone').value;
    var registerPassword = document.getElementById('register-password').value;
    var reRegisterPassword = document.getElementById('register-re-password').value;

    if (registerName === "" || registerPhone === "" || registerEmail === "" || registerPassword === "" || reRegisterPassword === "") {
        document.getElementById("registerSuccess").innerHTML = "Please enter every field!"
        document.getElementById("registerSuccess").style.backgroundColor = "#bb0000";

        return false;
    } else {
        document.getElementById("registerSuccess").innerHTML = ""
        if (registerPassword.length >= 6) {
            if (reRegisterPassword.length >= 6) {
                if (registerPassword == reRegisterPassword) {
                    var data = jQuery("#registerForm").serialize();
                    jQuery("#registerForm").find('input').each(function () {
                        data[jQuery(this).attr('name')] = jQuery(this).val();
                    });
                    jQuery.ajax({
                        type: "POST",
                        url: "logreg/register.php",
                        dataType: "text",
                        data: data,
                        contentType: "application/x-www-form-urlencoded"
                    }).done(function (response, textStatus) {
                        if (response.trim() == 'success') {
                            document.getElementById("registerSuccess").innerHTML = "Account created. Please check your e-Mail for activation link.";
                            document.getElementById("registerSuccess").style.backgroundColor = "#18BC9C";
                            jQuery("#registerForm").find('input').each(function () { //clear fields
                                jQuery(this).val('');
                            });

                        } else if (response.trim() == 'user') {
                            document.getElementById("registerSuccess").innerHTML = "User already exists";
                            document.getElementById("registerSuccess").style.backgroundColor = "#bb0000";
                            document.getElementById("register-name").innerHTML = "";

                        } else if (response.trim() == 'email') {
                            document.getElementById("registerSuccess").innerHTML = "Please enter valid E-Mail address";
                            document.getElementById("registerSuccess").style.backgroundColor = "#bb0000";
                            document.getElementById("register-email").innerHTML = "";
                        } else {
                            document.getElementById("registerSuccess").innerHTML = "There was an error. Try again or contact us.";
                            document.getElementById("registerSuccess").style.backgroundColor = "#bb0000";

                        }
                        //success
                    }).fail(function (jqXHR, textStatus, errorThrown) {
                        document.getElementById("registerSuccess").innerHTML = response + " " + errorThrown;
                        //error
                    });

                    return false;
                } else {
                    document.getElementById("registerSuccess").innerHTML = "Passwords must be same!"
                }
            } else {
                document.getElementById("registerSuccess").innerHTML = "Password needs to be at least 6 characters long!"
            }
        } else
            document.getElementById("registerSuccess").innerHTML = "Password needs to be at least 6 characters long!"
        return false;
    }


});




jQuery("#loginButton").click(function () {

    var loginEmail = document.getElementById('login-email').value;
    var loginPassword = document.getElementById('login-password').value;

    function validateEmail($loginEmail) {
        var loginEmail = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        return loginEmail.test($loginEmail);
    }

    if (loginEmail == "" && loginPassword == "") {
        document.getElementById("loginSuccess").style.backgroundColor = "#bb0000";
        document.getElementById("loginSuccess").innerHTML = "Please enter Your E-Mail and password";
        return false;
    } else if (loginEmail == "") {
        document.getElementById("loginSuccess").style.backgroundColor = "#bb0000";
        document.getElementById("loginSuccess").innerHTML = "Please enter Your E-Mail";
        return false;
    } else if (!validateEmail(loginEmail)) {
        document.getElementById("loginSuccess").style.backgroundColor = "#bb0000";
        document.getElementById("loginSuccess").innerHTML = "Please enter a valide E-Mail address";
        return false;
    } else if (loginPassword == "") {
        document.getElementById("loginSuccess").style.backgroundColor = "#bb0000";
        document.getElementById("loginSuccess").innerHTML = "Please enter Your password";
        return false;
    } else {
        var data = jQuery("#loginForm").serialize();
        jQuery("#loginForm").find('input').each(function () {
            data[jQuery(this).attr('name')] = jQuery(this).val();
        });

        jQuery
            .ajax({
                type: "POST",
                url: "logreg/login.php",
                dataType: "text",
                data: data,
                contentType: "application/x-www-form-urlencoded"
            })
            .done(function (response, textStatus) {
                if (response.trim() == 'success') {
                    document.getElementById("loginSuccess").innerHTML = "Redirecting...";
                    document.getElementById("loginSuccess").style.backgroundColor = "#18BC9C";
                    window.location.replace("profile.php");
                } else if (response.trim() == 'password') {
                    document.getElementById("loginSuccess").innerHTML = "Incorrect password";
                    document.getElementById("loginSuccess").style.backgroundColor = "#bb0000";
                } else if (response.trim() == 'status') {
                    document.getElementById("loginSuccess").innerHTML = "Your E-Mail is not verified yet!";
                    document.getElementById("loginSuccess").style.backgroundColor = "#bb0000";
                } else {
                    document.getElementById("loginSuccess").innerHTML = "The e-mail does not exists!!!";
                    document.getElementById("loginSuccess").style.backgroundColor = "#bb0000";
                }
            })
            .fail(function (jqXHR, textStatus, errorThrown) {
                document.getElementById("loginSuccess").innerHTML = response + " " + errorThrown;
            });

        return false;
    }

});