Note that the filenames here don't match the project name. This is because I just copied [another bug demo](https://github.com/brockboland/ExtraCellSelection) to start with.

### Description
A collection view cell cannot be **selected** if the collection view delegate indicates that the cell should not be **highlighted**. These should be independent factors, as the collection view delegate also has a method to indicate that a cell should not be highlighted.

### To Use
Open ExtraCellSelection.xcodeproj and run the app in the simulator. Three collection view cells are shown, each with a randomly-colored background, and a label with a randomly-generated cell identifier.

### Steps to Reproduce
Click on a cell. If the cell is selected (that is, `setSelected:` is called on the cell), the label below the cell identifier is updated to say "Selected." Toggle the switch at the top to change the return value from the UICollectionViewDelegate method `collectionView:shouldHighlightItemAtIndexPath:`.

### Expected Results
Toggling the switch should have no impact: indicating that a cell should not be **highlighted** should not prevent it from being **selected**.

### Actual results
Toggling the switch off prevents the cells from being selected.

### Notes
It's possible that this is the expected behavior and it's just not documented correctly.
