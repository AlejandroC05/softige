<?php
    if (isset($_POST['enviar'])) {
        if (!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['message'])) {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $message = $_POST['message'];
            $header = "From: yeineralejandro3@gmail.com" . "\r\n";
            $header.= "Reply-To: noreply@example.com" . "\r\n";
            $header.= "X-Mailer: PHP". phpversion();
            $mail = @mail($email, $message, $header);
            if ($mail) {
                echo "<h4>¡Correo enviado exitosamente!</h4>";
            }
        }
    }
?>