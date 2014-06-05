InYourFace
==========

An iOS app demonstrating alert views with movie lines

###Step 1: Set a rootViewController (you don't need an XIB)
- Seriously, you should be able to do this in your sleep now.

###Step 2: Show an alert
- In the viewDidLoad method instatiate an alert
  - Give 2 options: "Never again" (as cancel) and "Hit me" (as other option)
- Set self as delegate to the alert
- Show the alert (obviously)

###Step 3: Add alert delegate methods
- Add didDismissWithButtonIndex method
- If the index is 1 ("Hit me") show another alert view
