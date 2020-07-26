---
title: "A Brief Review on Cubic Regularization of Newton's Method"
date: 2020-07-23T18:10:23-05:00
categories: ["Research"]
tags: ["Optimization"]
draft: false
---



First-order methods, e.g, gradient descent, have been proved powerful 

In this post, I want to briefly talk about Nesterov's paper on cubic regularization of newton's method. The standard newton's method has been proved to be powerful through these years. 

<!--more-->

### Motivation

Let's first consider the following unconstrained optimization problem
$$
\min_{x\in \mathbb{R}^n}f(x)
$$
,where $f(x)$ is twice differentiable.

The standard newton's method tries to construct a sequence of $\{x_k\}$ from an initial guess $x_0\in \mathbb{R}^n$, by using second-order Taylor approximation of $f(x)$ in each iteration. The second-order Taylor expansion of $f(x)$ around $x_k$ is
$$
f(y)=f(x_k)+\langle \nabla f(x_k), y-x_k\rangle+\frac{1}{2}\langle \nabla^2f(x_k)(y-x),y-x \rangle
$$
If the hessian of $f(x)$ is positive definite, by setting the gradient to zero, 
$$
\nabla f(x_k)+\nabla^2 f(x_k)(y-x_k)=0
$$
we can derive the iterative scheme (update rule) in the following form
$$
x_{k+1}=x_k-\Big[\nabla^2 f(x_k)\Big]^{-1}\nabla f(x_k)
$$


 drawbacks. 

+ **Computational expensive**, as you need to compute the full hessian.
+ The hessian must be **positive definite**.
+ Sometimes it will converge to saddle points or even local maxima.

### Cubic Regularization of Newton Method

Nesterov regularized the problem with a cubic term