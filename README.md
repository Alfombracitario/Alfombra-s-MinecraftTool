how to use?
# 3D render #

This section is to render a block in 3D as if it were one of your inventory

To take a screenshot press **"S" (Screenshot)**
(The program literally takes a screenshot at the moment, I'll fix that later.)

To change the size of the render use **"R" (Resize)**
(Make sure your screen size is larger than the resolution!)

To change the image you must click on the face you want to change.

with ESC you can exit to the title screen.

# Tinted Image Renderer #

This is more intuitive so I will explain how to make a csv file compatible with the program

The first line is a header, so everything that is there will be ignored, anyway it is recommended to put what each line does

the second line onwards will be processed so make sure you enter correct data

Data must be separated by commas (",")

For reading reasons, the end of each line must also have a comma, or else the last value will be read as 
```value\n"```

Also if you use "render potions" I recommend that the files have the following names:

```potion_overlay.png
potion_bottle_empty.png
potion_splash_empty.png
potion_lingering_empty.png
tipped_arrow_base.png
tipped_arrow_overlay.png
