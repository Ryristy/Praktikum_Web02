<?php
 require_once 'navbar.html' ;
 require_once 'sidebar.html' ;
 ?>
 
 <h1>form Registrasi pengguna</h1>
            <form action="submit_get.php" method="GET">
            <div>
                <label for="name_Lengkap">Nama Lengkap </label>
                <input type="texs" name="nama_Lengkap" id="Nama_lengkap"required>
</div><br>
<div>
    <label for="username">username</label>
    <input type="text" name="username" id="username" require>
</div><br>
<div>
    <label for="password"password></label>
    <input type="password" name="password" id="password" require>
</div><br>
<div>
    <button type="submit">Register</button>
</div>
        


</form>


<?php require_once 'footer.html'; ?>