<%-- 
    Document   : FormPost
    Created on : 21 nov. 2018, 18:16:11
    Author     : qs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form</title>
    </head>
    <body>
        <h1>Formulaire de post</h1>
        <div style="width: 900px; margin-left: auto; margin-right: auto;">
            <form id="post_form" action="TEST" method="post">
                <button type="button" name="link">Link</button>
                <button type="button" name="image">Image</button>
                <button type="button" name="video">Video</button>
                <button type="button" name="post">Post</button><br>
                Titre:<br>
                <input type="text" name="titre" style="width: 200px;"><br>
                Contenu:<br>
                <textarea name="contenu" style="width: 200px; height: 200px;"></textarea><br>
                <input type="text" name="type"  style="width: 200px;"><br>
                
                <input type="submit" value="Enregistrer" onclick="function()">
             
            </form>
            <form id="image_form" action="TEST" method="post">
                <button type="button" name="link">Link</button>
                <button type="button" name="image">Image</button>
                <button type="button" name="video">Video</button>
                <button type="button" name="post">Post</button><br>
                Titre:<br>
                <input type="text" name="titre" style="width: 200px;"><br>
                Contenu:<br>
                <textarea name="contenu" style="width: 200px; height: 200px;"></textarea><br>
                <input type="text" name="type"  style="width: 200px;"><br>
                
                <input type="submit" value="Enregistrer" onclick="function()">
             
            </form>
            <form id="video_form" action="TEST" method="post">
                <button type="button" name="link">Link</button>
                <button type="button" name="image">Image</button>
                <button type="button" name="video">Video</button>
                <button type="button" name="post">Post</button><br>
                Titre:<br>
                <input type="text" name="titre" style="width: 200px;"><br>
                Contenu:<br>
                <textarea name="contenu" style="width: 200px; height: 200px;"></textarea><br>
                <input type="text" name="type"  style="width: 200px;"><br>
                
                <input type="submit" value="Enregistrer" onclick="function()">
             
            </form>
            <form id="link_form" action="TEST" method="post">
                <button type="button" name="link">Link</button>
                <button type="button" name="image">Image</button>
                <button type="button" name="video">Video</button>
                <button type="button" name="post">Post</button><br>
                Titre:<br>
                <input type="text" name="titre" style="width: 200px;"><br>
                Contenu:<br>
                <textarea name="contenu" style="width: 200px; height: 200px;"></textarea><br>
                <input type="text" name="type"  style="width: 200px;"><br>
                
                <input type="submit" value="Enregistrer" onclick="function()">
             
            </form>
            <script src="Confirm.js"></script>
            <!--Complete Interface Addnew.-->
        </div>
    </body>
</html>


