---
author : "Sihan Wei"
title: "Support Vector Machines (Part I): What Is a Margin, Really?"
date: 2025-03-12T00:08:20-04:00
tags : ["Machine Learning", "SVM"]
categories : ["ml-notes"]
description : "Understanding the space that separates data—and why it’s more than just geometry."
image: "margin.jpg"
draft: true
---

## Before we get started

SVM is easily my favorite machine learning algorithm, without "one of". In fact, I start the whole "Wandering ML" series just because one day it strikes my mind that I should write something about SVM. It's simple, elegant, and powerful.

I actually heard about SVM in my early years of college. At that time I know nothing about machine learning and was enthusiastic about doing "signal processing" (God you don't know how crazy I was about Fouriest transform). Later, when I came to the US, I took a course on machine learning and when I saw the instructor deriving the Lagrange dual problem (which I later know is a very common technique in convex optimization), I was like "Wow, this is so cool!".

I always remember how fascinated I was when I first understand the idea of SVM. This feeling become even more intense when I touched the field of learning theory (Thanks to Dr. Vapnik). hopefully, after this SVM series, you can feel the same feeling.

## Motivation
Suppose our data is linearly separable, we can easily draw a line to separate the two classes without making any mistakes. Then we are done.

But wait, it seems we can draw infinitely many lines to separate the two classes. As you can see from the figures below, all of the three lines separate the two classes perfectly. But which one is the best? 

Let's imagine now we have a new data point, which we call a dangerous point. How does the previous classifiers perform on this new point?

Whoops, it makes a mistake.

Let's try another one. See? It makes a mistake again.

How about the last one? It classifies the new point correctly.

It seems that the last classifier is safer and more robust against the "dangerous point". But why?

## What is a margin?
Let's first think about the roads. Suppose we drive on a road with two lanes, one for each direction. The road is wide enough that we can drive in the middle without worrying about hitting the other car. But what if the road is narrow? We need to be more careful and keep a safe distance from the other car.

You know what, we feel safer when we drive in a wider road, so does the classifier. The margin acts as a buffer zone, allowing the classifier to be more robust against noise and outliers. The wider the margin, the less likely the classifier is to make mistakes.

Now let's do some math. We have heard abour the term "margin" in SVM, but what does it really mean? The margin is defined as the distance between the decision boundary and the closest data point from either class. In other words, it is the space that separates the two classes.

## Linear classifier

The decision boundary is defined as 

$$
\mathbf{w}^\top \mathbf{x} + b = 0
$$

What is the distance from a point to a line? Let's say we have a point $x$ and a line defined by the equation $\mathbf{w}^\top \mathbf{x} + b = 0$. $x_p$ is the projection of $x$ on the line. $\mathbf{w}$ is the normal vector of the line.

We consider the vector $\mathbf{x}$ and $\mathbf{x_p}$. Then the distance $d$ from the point to the line is given by:

$$
d\cdot \frac{\mathbf{w}}{\|\mathbf{w}\|} = \mathbf{x} - \mathbf{x_p}
$$

Since $\mathbf{x_p}$ is on the line, we have:
$$
\mathbf{w}^\top \mathbf{x_p} + b = 0
$$
We can rewrite the above equation as:
$$
\mathbf{w}^\top \mathbf{x} + b = d\cdot \frac{\mathbf{w}}{\|\mathbf{w}\|} + b
$$
Then we have:
$$
d = \frac{\mathbf{w}^\top \mathbf{x} + b}{\|\mathbf{w}\|}
$$
This is the distance from a point to a line. The margin is defined as the distance from the decision boundary to the closest data point from either class. In other words, it is the space that separates the two classes.
The margin is given by:
$$
\text{margin} = \frac{2}{\|\mathbf{w}\|}
$$

<figure>
<img src="distance.svg" style="width: 40%;">
<figcaption>Fig. 1. Distance of a point to a line.</figcaption>
</figure>

