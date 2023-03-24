<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Digital Form</title>
</head>

  <body>
  <div class="container">
    <h1 class="main-header">Account Application Form.</h1>
    <hr>
    <form id="app-form" action="">
    <fieldset class="sub-container" id="basic-details">
      <h2 class="sub-heading">Basic Details</h2>
      <hr>
        <label for="dropdown" class="standard-label">
          Title<span class="required">*</span>
          <br>
          <select  id="dropdown" class="standard-select" required>
            <option value="select" disabled selected>Select Title</option>
            <option value="Mr">Mr</option>
            <option value="Mrs">Mrs</option>
            <option value="Miss">Miss</option>
            <option value="Ms">Ms</option>
            <option value="Dr">Dr</option>
            <option value="Prof">Prof</option>
          </select>
        </label>
        <label for="firstname" class="standard-label">
          First Name<span class="required">*</span>
          <input class="standard-input" name="firstname" id="firstname" type="text" placeholder="First name..." required>
        </label>
        <label for="middlenames" class="standard-label">
          Middle Names (If Applicable)
          <input class="standard-input" name="middlename" id="middlename" type="text" placeholder="Middle names...">
        </label>
        <label for="lastname" class="standard-label">
          Last Name<span class="required">*</span>
          <input class="standard-input" name="lastname" id="lastname" type="text" placeholder="Last name..." required>
        </label>
        <label for="phone-number" class="standard-label">
          Phone Number<span class="required">*</span>
          <input class="standard-input" type="tel" id="phone" name="phone" pattern='^\+?\d{10,12}' placeholder="Example: 01925999111" required>
        </label>
        <label for="email-address" class="standard-label">
          Email<span class="required">*</span>
          <input class="standard-input" id="email-address" type="email" placeholder="Your email address..." required>
        </label>
        <label for="DOB" class="standard-label">
          Date of Birth<span class="required">*</span>
          <input class="standard-input" type="date" name="DOB" id="DOB" required>
        </label>
        <label for="accounttype" class="standard-label">
          What type of account are you applying for?<span class="required">*</span>
          <br>
          <select  id="account-select" class="standard-select" required>
            <option value="select" disabled selected>Choose Account</option>
            <option value="basic-current">Basic Current Account</option>
            <option value="premium-current">Premium Current Account</option>
            <option value="instant-saver">Instant Access Savings Account</option>
            <option value="lifetime-isa">Lifetime ISA</option>
            <option value="help-to-buy">Help to Buy ISA</option>
          </select>
        </label>
        <button type="button" id="show-address">Continue</button>
      </fieldset>
      
      <fieldset class="sub-container" id="address-history">
        <h2 class="sub-heading">Address History</h2>
        <hr>
        <h3 class="small-heading">Are you currently a UK resident?</h3>
        <label for="yes" class="radio-label">
          <input class="radio-input" name="UK-res" value="yes" id="yes" type="radio">Yes</input>
        </label>
        <label for="no" class="radio-label">
          <input class="radio-input" name="UK-res" value="no" id="no" type="radio">No</input>
        </label>
        <p id="non-uk">We're really sorry. We currently only offer banking services to UK residents.</p>
        <div id="current-address">
          <h3 class="small-heading">Current Address</h3>
          <label for="line1" class="standard-label">
            Address line 1<span class="required">*</span>
            <input class="standard-input" type="text" required>
          </label>
          <label for="line2" class="standard-label">
            Address line 2
            <input class="standard-input" type="text">
          </label>
          <label for="town-city" class="standard-label">
            Town/City<span class="required">*</span>
            <input class="standard-input" type="text" required>
          </label>
          <label for="county" class="standard-label">
            County
            <input class="standard-input" type="text">
          </label>
          <label for="postcode" class="standard-label">
            Post Code<span class="required">*</span>
            <input class="standard-input" type="text" maxlength="8" required>
          </label>
          <h3 class="small-heading">Have you lived at any other address within the last 5 years?</h3>
          <label for="yes-prev" class="radio-label">
            <input class="radio-input" name="UK-res" value="yes" id="yes-prev" type="radio">Yes</input>
          </label>
          <label for="no-prev" class="radio-label">
            <input class="radio-input" name="UK-res" value="no" id="no-prev" type="radio">No</input>
          </label>
        </div>
        <div id="previous-address">
          <h3 class="small-heading">Previous Address</h3>
          <label for="line1" class="standard-label">
            Address line 1<span class="required">*</span>
            <input class="standard-input" type="text">
          </label>
          <label for="line2" class="standard-label">
            Address line 2
            <input class="standard-input" type="text">
          </label>
          <label for="town-city" class="standard-label">
            Town/City<span class="required">*</span>
            <input class="standard-input" type="text">
          </label>
          <label for="county" class="standard-label">
            County
            <input class="standard-input" type="text">
          </label>
          <label for="postcode" class="standard-label">
            Post Code<span class="required">*</span>
            <input class="standard-input" type="text" maxlength="8">
          </label>
        </div>
        <button type="button" id="get-consent">Continue</button>
      </fieldset>

      <fieldset class="sub-container" id="your-consent">
        <h2 class="sub-heading">Your Consent</h2>
        <hr>
        <label class="standard-label" id="credit-search" for="credit-search">
          Tick the box below to allow the bank to use the details you have provided to conduct a credit search if necessary.
          <br>
        <input type="checkbox" id="credit-click" name="credit-search"><br>
        </label>
        <label class="standard-label" for="info-request" id="info-request">
          Tick the box below to allow the bank to contact you via email if further information is needed to progress your application.
          <br>
          <input type="checkbox" id="info-click" name="info-request"><br>
        </label>
        <input id="submit-app" type="submit" name="submit" value="Submit Application" onclick="logValues()">
      </fieldset>
    </form>
  </div>
</body>
</html>
