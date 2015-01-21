InYourFace
==========

An iOS app demonstrating alert views with movie lines

###Step 1: Set a rootViewController in a UINavigationController (you don't need an XIB)
- You should be able to do this in your sleep now.

###Step 2: Create the Alert and Responses to User Interaction
- Create a method named presentAlertViewController
- Instantiate a UIAlertController with a title, message, and UIAlertControllerStyleAlert style
- In the viewDidLoad method instatiate an alert
- Add two actions:
  - "Never Again" - log "I'll never show the alert again" as a response
  - "Hit Me" - present the AlertViewController again
- Call the presentAlertViewController method in the viewDidLoad

###Step 3: Add alert delegate methods
- Add a data method that returns an array of movie lines
- Add a method that returns a random title
- Set the title of the UIAlertController to use the random movie line

```
- (NSString *)randomTitle {

    int index = arc4random_uniform([self lines].count);
    return [self lines][index];
    
}

- (NSArray *)lines {

    return @[@"If peeing is cool, consider me Miles Davis",
             @"We don't need no stinking badges",
             @"Thank you very little",
             @"You can't fight in here. This is a war room.",
             @"There's no crying in baseball",
             @"I have nipples, greg. Could you milk me?",
             @"You could be drinking whole, if you wanted to.",
             @"Fat guy in a little coat",
             @"How can we be expected to teach children how to read if they can't even fit inside the building?"];
    
}
```