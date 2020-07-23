---
title: "Cubic Regularized Newton"
date: 2020-07-23T18:10:23-05:00
draft: false
---

# Motivation

The standard newton method has been proved to be powerful through these years. Let's first consider the following unconstrained optimization problem,
$$
\min_{x\in \mathbb{R}^n}f(x)
$$
where $f(x)$ is twice differentiable.
$$
f(y)=f(x)+\langle \nabla f(x), y-x\rangle+\frac{1}{2}\langle \nabla^2f(x)(y-x),y-x \rangle
$$
However, the standard newton method has a lot of drawbacks. 

+ **Computational expensive**, as you need to compute the full hessian.
+ The hessian must be **positive definite**.
+ Sometimes it will converge to saddle points or even local maxima.

# Cubic Regularization of Newton Method