<!DOCTYPE html>
<html>
<head>
    <title>Client Registration Form</title>

    <!-- Inline CSS -->
    <style>
        .error { color: red; }
    </style>

    <script>
        function validateForm() {
            const name = document.forms["clientForm"]["name"].value;
            const email = document.forms["clientForm"]["email"].value;
            const message = document.forms["clientForm"]["message"].value;

            // Define the regex patterns
            const namePattern = /^[A-Za-z\s]+$/;
            const emailPattern = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}/;

            const messagePattern = /^[A-Za-z0-9\s!@#*]+$/;

            // Validate name
            if (!namePattern.test(name)) {
                alert("Name can only contain letters and spaces.");
                return false;
            }

            // Validate email
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // Validate message
            if (message.length > 200 || !messagePattern.test(message)) {
                alert("Message can only contain letters, numbers, and allowed special characters (!@#*), and must be 200 characters or less.");
                return false;
            }

            return true; // Form is valid
        }
    </script>

</head>
<body>

    <form name="clientForm" action="${pageContext.request.contextPath}/workout/processForm" modelAttribute="client" onsubmit="return validateForm()">
        Name: <input type="text" name="name" required />
        <span class="error"></span><br><br>

        Age: <input type="number" name="age" required />
        <span class="error"></span><br><br>

        Email: <input type="email" name="email" required />
        <span class="error"></span><br><br>

        Message: <input type="text" name="message" required />
        <span class="error"></span><br><br>

        <input type="submit" value="Submit" />
    </form>

</body>
</html>
