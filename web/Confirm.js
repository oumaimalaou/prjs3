/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


document.getElementById("link_form").hidden=true;
document.getElementById("image_form").hidden=true;
document.getElementById("video_form").hidden=true;
document.getElementById("link").addEventListener("click",function(){
        document.getElementById("post_form").hidden=true;

    document.getElementById("link_form").hidden=false;
    document.getElementById("image_form").hidden=true;
    document.getElementById("video_form").hidden=true;
});
document.getElementById("image").addEventListener("click",function(){
        document.getElementById("post_form").hidden=true;

    document.getElementById("link_form").hidden=true;
    document.getElementById("image_form").hidden=false;
    document.getElementById("video_form").hidden=true;
});
document.getElementById("video").addEventListener("click",function(){
        document.getElementById("post_form").hidden=true;

    document.getElementById("link_form").hidden=true;
    document.getElementById("image_form").hidden=true;
    document.getElementById("video_form").hidden=false;
});
