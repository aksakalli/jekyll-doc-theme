---
title: Welcome
permalink: /docs/home/
redirect_from: /docs/index.html
---

## Accidental pinhole and pinspeck cameras.
## Purpose: to predict the scene outside the image.


In an image, in day light, in a room, or in any closed area with a small opening, the walls of the room will act as screens and the opening as a pinhole. Thus we can extract an iverted image of the surroundings. 
 As it can be seen in the image below.
	
There are many limitations with these :
1)The size of the opening
2)The surface of the walls
3)The illumination
We use retinex algorithm to find the equivalent image of the outside image .
Since window is not a perfect aperture, we take the function T(x,y) as the point spread function. If image to be formed was actually S(x,y). Then the image that will be formed L= T * S (convolution of both).
Taking the surface of the wall into consideration the albedo(ρ) that defines the nature of the surface.
I(formed)=  ρ x L.
This image has 3 components to be processed: 
1) reflectance and shadows from within the room
2) blurring of the image by the window (due to imperfect shape)
In this paper they have used the retinex algorithm to seperate the bluring in the image.
Assuming that the surface adds extra edges, we threshold the edges and remove them.
Let the logarithms, be denoted by primes,
I’=  ρ’ + L’
Our aim is to find the value of L;
L’=I’- ρ’
using canny edge detector to find the edges and thresholding it.
L’= I’- I’*(1-Ed) 
Ed is the o/p after thresholding the deges.Thus, removing the unnecessary edges, we find the image. 
Difficulties: 
Image is too blurry to be recognized.
Image contains more amount of blue light (sky) which makes it difficult to understand the scene.
A-original image. 
I-image after removing edges
k-upsidedown image of the image formed on the screen(wall)
L-true image of the surroundings.

Accidental pinspeck cameras
Instead of having a pin hole that allows only a part of the light to enter, if there is an obstacle that stops light to flow from itself, then we can find the equivalent pinhole image.

Thus the background image is equla to sum of these two images.
B=Ipinhole + I antipinhole.
Thus if we have the background image and image of some occluder passing by it, we can get the image of the pinhole model to find the surroundings.

I pinhole = I background− I occluder
= ρ x (L − L occluder)
= ρ x (T hole ∗ S) ,

L pinhole/L = 1 −I occluder/I background
if(L is constant which is not the usual case).
Thus we find still a small amount of noise or blur in the final images formed.
Image sformed will be sharp enough if the aperture size is relatively small based on the size of the screen. 

Ipinhole = I window  − I occluded−window 
	    = ρ(x, y) (T hole (x, y) ∗ S(x, y))
Thus if the T hole becomes smaller ie, when there is only a window and when there is a man or some object in between, the difference gives a better image. This is equivalent to an image with smaller occluder. 


Thus to get the final image, 
I = I(Background)- I(occluder);
Result of the difference image is shown below. Itcontains lot of noise. Because, the difference is too low. There is not much information from these two images except the surrounding image.  




Solution:
We need to have an image of the background where there is no occluder and the image is clear. Thus taking this image as the I(background), we can use videos with few frames not having any occluder.
Noise removal
If we assume the noise to be poisson, The noise is proportional to N(no of events mathematically) , here N can be taken as the area of the aperture.
SNR(signal to noise ratio) for no occlusion will be proportional to .(formula:Awindow/).
The SNR of the final image is proportional to A(occluder). And inversely proportional to .  Aoccluder/ is the SNR of the final image.
Thus, image reduces its SNR from original image’s SNRto 
SNR =  Aoccluder/Awindow.
This proves that if the Awindow is small compared to occluder, the image produces will be sharper.
Applications:
1)It is used in forensics to find the reliability of a source.
2)We can build a 3D model of the surrounding using the shadows produces by a moving object.
3)the reflections in a glass or mirror can also be used to predict the surroundings of the image.

Reference:
link:https://link.springer.com/content/pdf/10.1007%2Fs11263-014-0697-5.pdf


