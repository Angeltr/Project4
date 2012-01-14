<%-- 
    Document   : info
    Created on : Jan 3, 2012, 10:54:47 PM
    Author     : Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Info_CSS.css" />
    </head>
    <body>
        <p id="logo">angeltr</p>

        <a id="home" href="/Project4" style>Home</a>
        <a id="info" href="info.jsp">Info</a>
        <a id="login" href="login.jsp">Login</a>
        <br />
        <p id="line">______________________________________________________________________________________________________________________</p>
        <br /><br />

        <h1><b>Project4 Report</b></h1>

        <p id="text">
            Για την υλοποίηση του project χρησιμοποίησα το framework struts.
            Η εφαρμογή λέγετε Online Bookstore και αποτελείται από τρεις σελίδες
            τις home, info και login.
        </p>
        <p id="text">
            Η home είναι η κεντρική σελίδα της εφαρμογής όπου υπάρχει ένας πίνακας
            με τα διαθέσιμα βιβλία και πληροφορίες για αυτά, ο χρήστης εισάγει ποσότητα
            για όποιο βιβλίο τον ενδιαφέρει πατάει calculate και η εφαρμογή υπολογίζει το
            ποσό πληρωμής.Ο υπολογισμός πραγματοποιείται στο αρχείο Compute.java.Εκεί 
            επίσης τίθονται τα Cookies ώστε αν ο χρήστης ξαναμπεί στην σελίδα να υπάρχουν
            τα δεδομένα της προηγούμενης αγοράς του.
        </p>
        <p id="text">
            Στην info υπάρχουν πληροφορίες για το project.Στην login ο χρήστης δίνει 
            όνομα και email και στην κεντρική σελίδα εμφανίζεται ένα μήνυμα "Hello όνομα_χρήστη".
            Αυτή η πληροφορία επίσης κρατιέται σε Cookie και εμφανίζεται αν ο χρήστης ξαναμπεί 
            στην σελίδα.Η λειτουργικότητα για το login πραγματοποιείται στο αρχείο LoginAction.java.
        </p>
        <p id="text">
            Οι πληροφορίες για τα βιβλία,δηλαδή τίτλος,συγγραφέας,έτος και τιμή
            βρίσκονται στο αρχείο bookstore.xml το οποίο κάνω parse για να τις ανακτήσω
            με χρήση javascript.
        </p>
        <p id="text">
            Αντιμετώπισα τις εξής δυσκολίες:<br />
            -Αρχική μου πρόθεση ήταν να υλοποιήσω τον κεντρικό πίνακα της εφαρμογής με κάποια 
            επαναληπτική &nbsp;δομή.Δοκίμασα πρώτα με javascript, άλλα δεν λειτουργεί η EL μέσα σε μπλοκ
            < script &nbsp;type="text/javascript">< /script>.<br />Μετά δοκίμασα βρόχο c:forEach.Εκεί τα 
            πράγματα ήταν καλύτερα (παραθέτω τον κώδικα σε σχόλια) άλλα το πρόβλημα ήταν ότι δεν μπόρεσα
            να διατρέξω μεταξύ των cookies.Δοκίμασα πίνακα απο String που θα περιέχει τα ονόματα των Cookies άλλα η δήλωση
            "cookie.totalCookies[i].value" όπου totalCookies το όνομα του πίνακα δεν λειτούργησε.<br />
            -Δεν κατάφερα να κάνω parse τις τιμές των βιβλίων απο το bookstore.xml.Έχω αφήσει την συνάρτηση 
            μέσα στο Compute.java, την δοκίμασα και σε ένα άλλο project και δούλευε κανονικά.Δεν κατάλαβα 
            γιατί δεν δουλεύει εδώ.
        </p>
        <p id="text">
            Από πηγές χρησιμοποίησα το 
            <a href="http://netbeans.org/kb/docs/web/quickstart-webapps-struts.html" style="color: #F1EBE3;">
                tutorial
            </a>
            για να καταλάβω πως δουλεύει το struts και χρησιμοποίησα τον κώδικα που έχει για το δικο μου login.
        </p>
        <p id="text">Τον πηγαίο κώδικα της εφαρμογής μπορείται να βρείτε στο github εδώ:
            <a href="https://github.com/Angeltr/Project4/tree/master/Project4" style="color: #F1EBE3;"> Source Code </a>
        </p>
        <p id="text">
            Τρίγκας Άγγελος<br />
            ΑΕΜ:803
        </p>



    </body>
</html>
