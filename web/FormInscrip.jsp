<%-- 
    Document   : FormInscrip
    Created on : 24 nov. 2018, 18:16:34
    Author     : qs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulaire </title>
        
            
    </head>
   <!-- <script>
        function validate(){
            
           var p= f.password.value;
           var cp=f.password2.value;
            if(p!==cp)
                alert("password and confirm password are not similar");
            
            
        }
        
    </script>!-->
<style>
  
  
  * {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -o-box-sizing: border-box;
    -ms-box-sizing: border-box;
    box-sizing: border-box
}

body, html {
    margin: 0;
    padding: 0;
    background-color: #F9F9F9;
    font-family: "Open Sans", Arial, sans-serif
}

.container {
    margin: 0 auto;
    padding-left: 15px;
    padding-right: 15px
}

h1 {
    font-size: 1.5rem;
}

p {
    font-size: 17px;
    line-height: 1.5rem;
    font-weight: 500
}

.pull-right {
    float: right
}

.clearFloat {
    clear: right
}

/* Register Box Rules
   ========================================================================== */

.box {
    background-color: #FFF;
    border-top: 5px solid #fdbb30;
    padding: 35px 25px;
    max-width: 1140px;
    -webkit-box-shadow: 0 2px 3px #aaa;
    -mozbox-shadow: 0 2px 3px #aaa;
    -ms-box-shadow: 0 2px 3px #aaa;
    -o-box-shadow: 0 2px 3px #aaa;
    box-shadow: 0 2px 3px #aaa;
}

.box .form-group {
    padding: 0 15px
}

.box .form-control {
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    -o-border-radius: 2px;
    -ms-border-radius: 2px;
    border-radius: 2px;
    border: 1px solid #BBB
}

.box .form-help {
    display: none
}

.box .form-help .help {
    font-size: 13px;
    font-weight: 600;
    margin-top: 5px;
    margin-bottom: 10px;
    font-family: "Open Sans", Arial, sans-serif;
}

.box .control-label {
    display: inline-block;
    margin-bottom: 5px;
    font-weight: 400;
    color: #777
}

.box .control-label.required:after {
    content: '*';
    position: relative;
    top: 3px;
    left: 3px;
}

.box .required-asterisk {
    font-size: 11px;
    text-align: right;
    margin-bottom: 0;
}

.box .primary-button {
    color: #FFF;
    background-color: #fdbb30;
    border: 1px solid #fd9d30;
    cursor: pointer;
    -webkit-transition: background-color .2s ease-in-out;
    -moz-transition: background-color .2s ease-in-out;
    -ms-transition: background-color .2s ease-in-out;
    -o-transition: background-color .2s ease-in-out;
    transition: background-color .2s ease-in-out;
}

.box .primary-button:hover,
.box .primary-button:focus,
.box .primary-button:active {
    background-color: #fd9d30;
}

.box .has-error .form-control {
    border-color: #e1120e
}

/* Grouping
   ========================================================================== */

.box .has-error .form-help,
.box .form-control,
.box .form-help .help,
.box .form-help.active {
    display: block
}

h1, p,
.box .form-control {
    color: #444
}

h1,
.box .form-group {
    margin-bottom: 15px
}

h1,
.box .required-asterisk {
    margin-top: 20px
}

.box .form-line,
.box .form-control {
    width: 100%
}

.box .primary-button,
.box .form-control {
    padding: 8px 12px;
}

.box .control-label,
.box .form-control,
.box .primary-button {
    font-size: 14px
}

.box .has-error .form-help .help,
.box .control-label.required:after,
.box .required-asterisk {
    color: #e1120e
}

.box .success-alert {
    display: none;
    text-align: right;
    color: #5cb85c
}

.box .success-alert.active {
    display: block
}

/* Media Query
   ========================================================================== */

/* x-small screens */
@media (max-width: 575px) {
    .container {
        width: 100%
    }
}

/* small screens */
@media (min-width: 576px) {
    .container {
        max-width: 540px;
    }
}

/* medium screens */
@media (min-width: 768px) {
    .container {
        max-width: 720px;
    }

    .couple-column {
        display: flex
    }

    .couple-column .form-group {
        flex-grow: 1
    }
}

/* large screens */
@media (min-width: 992px) {
    .container {
        max-width: 960px
    }

    .couple-column {
        display: block
    }

    .form-group:not(.submit):not(.ch-bx) {
        display: flex
    }

    .control-label:not(.c-bx) {
        flex-grow: 1;
        flex-basis: 100px;
        text-align: right;
        padding-right: 20px;
    }

    .form-group > section {
        flex-grow: 10
    }

    .checkbox-container {
        padding-left: 16%
    }
}

/* x-large screens */
@media (min-width: 1200px) {
    .container {
        max-width: 1140px
    }
}
  
  
  
</style>
<div class="container">
    <h1>Create an Account</h1>
    <div class="box">
        <!-- Start Registration From -->
        <form action="TestUser" class="form-line" id="registrationForm" method="post" name="f" >
            <!-- First name field -->
            <div class="form-group">
                <label for="username" class="control-label required">Username</label>
                <section>
                <input type="text" name="username"  class="form-control inp-v" data-rule="required|alpha|min:3|max:25" placeholder="Username"/>
                <div class="form-help">
                    <span class="help"></span>
                </div>
                </section>
            </div>
           
            <!-- Email field -->
            <div class="form-group">
                <label for="email" class="control-label required">E-mail</label>
                <section>
                <input type="text"  name="email" class="form-control inp-v" data-rule="required|email|max:255"  placeholder="E-mail Address"/><%  String erreur1 = (String) request.getAttribute("erreur1");

                                                                                                     if (erreur1 != null) { %>

                                                                               <strong>Votre mail n'est pas valide </strong>
                                                                               <%} %>
                <div class="form-help">
                    <span class="help"></span>
                </div>
                </section>
            </div>
           
            <div class="couple-column">
                <!-- Password field -->
                <div class="form-group">
                    <label for="password" class="control-label required">Password</label>
                    <section>
                    <input type="password" name="password"  class="form-control inp-v" data-rule="required|min:6|max:25"  placeholder="Password"/>
                    <div class="form-help">
                        <span class="help"></span>
                    </div>
                    </section>
                </div>
                <!-- Password confirmation field -->
                <div class="form-group">
                    <label for="passwordConfirmation" class="control-label required">Re-Password</label>
                    <section>
                    <input type="password" name="password2"  class="form-control inp-v"
                           data-rule="required|match:password" placeholder="Your Password Again"/><%  String erreur = (String) request.getAttribute("erreur");

                                                                                                     if (erreur != null) { %>

                                                                               <strong>les deux mots de passe ne sont pas identiques </strong>
                                                                               <%} %>
                                                                               <%  String erreur2 = (String) request.getAttribute("erreur2");

                                                                                                     if (erreur2 != null) { %>

                                                                               <strong>Votre compte a été bien crée </strong>
                                                                              <%} %>
                    <div class="form-help">
                        <span class="help"></span>
                    </div>
                    </section>
                </div>
            </div>
            <!-- Checkbox -->
           

            <!-- Submit button -->
            <div class="form-group submit">
                
                <input type="submit" name="register" value="Register" class="primary-button pull-right" onclick="validate()"/>
                                              
                <div class="clearFloat"></div>
                
            </div>
        </form> <!-- ./ Registration From -->
        
    </div>
</div>
   
    </body>
</html>
