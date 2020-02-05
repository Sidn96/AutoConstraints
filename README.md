# AutoConstraints
Auto-layout using AutoConstraints

# Pros and cons for writing Auto Layout constraints in code
## Pros

Easier to merge in GIT
The code is easier to debug
Constraints might be easier to overview

## Cons

There’s no visual representations. The IB allows you to see your view in different size classes.
You might end up with a lot of layout code in your view controllers

##### *Combining the Interface Builder with constraints in code could be a solution as well.*

## Writing Auto Layout constraints in code

##### Auto Layout Visual Format Language will no longer needed.

First of all, we need to set the translatesAutoresizingMaskIntoConstraints to false. This is to prevent the view’s auto-resizing mask to be translated into Auto Layout constraints and affecting your constraints.

