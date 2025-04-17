<?php
// Your secret key (replace with the secret key provided by Google)
$secret = '6LeQ3-UqAAAAAOm_lurIRs8lw71lD2Dinhk9TLJj';

// The reCAPTCHA response from the form
$response = $_POST['g-recaptcha-response'];

// The user's IP address
$remoteip = $_SERVER['REMOTE_ADDR'];

// URL for Google's reCAPTCHA verification endpoint
$verify_url = 'https://www.google.com/recaptcha/api/siteverify';

// Create the verification request
$response_data = file_get_contents($verify_url . '?secret=' . $secret . '&response=' . $response . '&remoteip=' . $remoteip);

// Decode the JSON response from Google
$response_json = json_decode($response_data);

// Check if the reCAPTCHA was successful
if ($response_json->success) {
    // reCAPTCHA was verified, process the form (e.g., save to database, send email)
    echo 'reCAPTCHA validation successful!';
    // Further form processing goes here (e.g., send an email, store data)
} else {
    // reCAPTCHA failed, show an error message
    echo 'reCAPTCHA validation failed. Please try again.';
}
?>
