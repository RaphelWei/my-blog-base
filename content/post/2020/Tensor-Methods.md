---
title: "Tensor Methods"
date: 2020-06-27T19:15:24-05:00
type: post
description : nothing
categories: ["Research"]
tags: ["Optimization"]
---

In this post, I want to briefly talk about Nesterov's paper on tensor methods.
<!--more-->

It has been over 30 years since the term "tensor methods" was first introduced. Let's consider the following unconstrained convex optimization problem:

$$
\min_{x \in \mathbb{R}^n} f(x)
$$

which is Lipchitz continuous hessian:
$$
\Vert \nabla^2f(y)-\nabla^2f(x) \Vert\leq L_p\Vert y-x\Vert
$$
