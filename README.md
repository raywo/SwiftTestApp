# SwiftTestApp

This is a demo for a problem I encountered while developing an iOS app. 

## The Problem

This is a very simple app. It has only one view display a simple hello message. There is also
a button in the toolbar which triggers the display of a sheet view. 

The sheet uses the local `State` property `tmpEvent` and displays the value of it’s `desc` 
property. This `tmpEvent` property is initialised with a default `Event`. Whenever the toolbar 
button is tapped this `tmpEvent` is getting a new Event assigned before the sheet is 
displayed. – And here comes the weird stuff – One would expect that the sheet is displaying 
the value of the newly assigned event. But when the sheet is displayed the _first_ time it 
shows the text from the default event. On every subsequent presentation of the sheet it 
works as expected.

Why is the first presentation different from all others? Why is the value of the `tmpEvent` 
property not the expected new event but the default event on the first time?

Just to be sure that this is not a fluke the sheet is setting `tmpEvent` to a different value 
when getting dismissed, which is of course overwritten once the sheet is triggered again. 
The event set by the dismiss closure is never to be seen. (Just as one would expect.)
