# the gui system
this is a small little markdown document made to teach you about how the gui system works. i hope this helps!

last updated 19/03/2025, AEST

## basic info
all gui stuff gets created in the `guiInit` script, which is in `Scripts/GUI/Init`. it usually starts like this:
```gml
///guiInit()
global.guiMainLineColor = c_black
global.guiMainFillColor = $DDDDDD
global.guiMainHoverFillColor = $BBBBBB
global.guiMainPrimedFillColor = c_white

globalvar guiRoot; guiRoot = guiCreate(0, 0, 10000, 10000, guiElement)
guiRoot.hasFill = false
guiRoot.hasLine = false
```
it is advised for you not to change this part of the script, as it sets up important parts of the gui system.

the gui system operates on a recursive model where you can put gui elements (objects that have `guiElement` as a parent, or just `guiElement` itself) in other gui elements, and that it can go as deep as you like. coordinates inside of elements are relative; if you have an element with its x variable set to 20 inside of another element with its x variable set to 30, the final position of the first element would be 50.

todo: add a diagram to help explain this, and to provide a depiction of the system in general

## gui scripts
these are all of the gui scripts that arent meant for internal behaviours.

### guiLink(parent,child)
this links two elements together, with the parent coming first and the child coming second.

### guiCreate(x,y,w,h,element,parent)
this is a helper function that creates an element with a certain position and size, and then links it to the specified parent.

## element reference
this is a section that you can go to if youve forgotten something about an element type. please note that this section doesnt have every single thing about each element, it just has information that would likely be useful.

### guiElement
the superclass for all of the other element types. doesnt really have much going for it.

properties:
* `width` (real): the width of the element. this (and `height`) is the most important one
* `height` (real): the height of the element
* `fillColor` (color): the fill color of the element
* `lineColor` (color): the line color of the element
* `hasFill` (bool): whether to fill the element or not
* `hasLine` (bool): whether the element has an outline or not

### guiButton
a button that you can press.
what the button does after being clicked is handled in the `guiButtonClick` script, which is called with the value of `clickAction`.

properties:
* all of the properties of `guiElement`
* `label` (string): text that gets displayed on the button
* `hoverFill` (color): the fill color of the button when its being hovered
* `primedFill` (color): the fill color of the button when its primed
* `clickAction` (string): input to the `guiButtonClick` script, which gets ran when the button is clicked

read-only properties:
* `hover` (bool): if the button is being hovered over
* `primed` (bool): if the button is primed

### guiLabel
a label that displays text.

properties:
* all of the properties of `guiElement` (though some of them arent used)
* `label` (string): the text that it displays.
* `halign` (halign constant): horizontal alignment of the text in the elements box
* `valign` (valign constant): vertical alignment of the text in the elements box

### guiScroll
a scrollable element. masks child elements correctly.

properties:
* all of the properties of `guiElement`
* `actualScrollX` (real): where the element will scroll to
* `scrollX` (real): the current scrolling position. follows `actualScrollX`
* `actualScrollY` (real): see `actualScrollX`
* `scrollY` (real): see `scrollX`
* `scrollRate` (real): how much the element gets scrolled whenever the user scrolls the mouse
* `scrolLSpeed` (real): the speed that the element scrolls (1 = instant, 0 = doesnt scroll)

### guiSprite
displays a sprite.

properties:
* `width` (real): the width of the element
* `height` (real): the height of the element
* `sprite` (sprite): the sprite to display
* `mode` (string): one of 3 scaling modes for the sprite, for when the sprites dimensions and the elements size dont match: "stretch", "square", and "none"
* `subImage` (real): the image index used for drawing the sprite
* `blend` (color): the image blend used for drawing the sprite
* `alpha` (real): the image alpha used for drawing the sprite