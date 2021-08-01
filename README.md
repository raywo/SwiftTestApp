# SwiftTestApp

This is a demo for a problem I encountered while developing an iOS app. 

## The Problem

This is a very simple app. It has a view with a `Text` view. There is also a button in the toolbar which 
triggers the display of a sheet view. The sheet uses a local `State` variable `tmpEvent` to display some text. 
This `tmpEvent` property is initialised with a default `Event`. Whenever the toolbar button is tapped this 
`tmpEvent` is getting a new Event assigned before the sheet is displayed. And here comes the weird stuff: 

When the sheet is _first_ presented it shows the default `Event`. Which I don’t understand because this default 
`Event` is already overwritten by the newly assigned `Event`. Presenting the sheet a second time (and all 
following times) will display the expected newly assigned `Event`. 

Why is the first presentation different from all others? Why is the value of the `tmpEvent` property not
the expected new event but the default event?
