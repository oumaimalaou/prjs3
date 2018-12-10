/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
document.getElementById("link_form").hidden= true;
document.getElementById("post_form").hidden= false;
document.getElementById("image_form").hidden= true;
document.getElementById("video_form").hidden= true;

document.getElementById("link").addEventListener("click", fucntion(){  
    
    
    document.getElementById("link_form").hidden= false;
document.getElementById("post_post").hidden= true;
document.getElementById("image_form").hidden= true;
document.getElementById("video_form").hidden= true;
    
});
document.getElementById("image").addEventListener("click", fucntion(){  
    
    
    document.getElementById("image_form").hidden= false;
document.getElementById("link_post").hidden= true;
document.getElementById("post_form").hidden= true;
document.getElementById("video_form").hidden= true;
    
});
document.getElementById("video").addEventListener("click", fucntion(){  
    
    
    document.getElementById("video_form").hidden= false;
document.getElementById("link_post").hidden= true;
document.getElementById("post_form").hidden= true;
document.getElementById("image_form").hidden= true;
    
});
