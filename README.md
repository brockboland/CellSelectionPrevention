Note that the filenames here don't match the project name. This is because I just copied [another bug demo](https://github.com/brockboland/ExtraCellSelection) to start with.

### Description
A collection view cell cannot be selected if the collection view delegate indicates that the cell should not be highlighted. These should be independent factors, as the collection view delegate also has a method to indicate that a cell should not be highlighted.

### To Use
Open ExtraCellSelection.xcodeproj and run the app in the simulator. Three collection view cells are shown, each with a randomly-colored bar at the top, and a table view with six rows.

### Steps to Reproduce
Click on the colored bar in the collection view cell to select the collection view cell.

### Expected Results
The collection view cell is selected, but the table view cells remain unselected and unhighlighted.

### Actual results
The collection view cell is selected, and the table view cells become highlighted, but not selected.

### Notes
The code includes several comments beginning with NOTE to explain what's going on.

Ultimately, the `setSelected:` method on the UICollectionViewCell seems to be the problem. If the cell subclass in use does NOT call that method on the superclass, this problem does not manifest itself. As such, I'm inclined to believe that the UICollectionViewCell implementation of `setSelected:` does something like a recursive walk through its subviews to set them selected and/or highlighted.
