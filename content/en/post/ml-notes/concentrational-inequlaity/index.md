---
author : "Sihan Wei"
title: "Math Tricks for Machine Learning (Part I): Concentrational Inequality"
date: 2025-03-02T06:52:04-05:00
tags : ["Machine Learning", "Math Tricks", "Probability"]
categories : ["ml-notes"]
description : "Understanding How Randomness Behaves in Machine Learning"
draft: false
---
## Introduction

Over the past few years, I’ve passionately studied various machine learning and statistical concepts. One thing I’ve learned is that many research papers rely on clever mathematical “tricks”—techniques that are used so routinely they often go unexplained. In this series, I plan to catalog these tricks to help demystify the math behind modern ML.

In this first installment, we’ll focus on concentration inequalities, a key tool for understanding how random variables behave. Whether you’re analyzing generalization bounds or just trying to get a grip on how data “concentrates” around its mean, these inequalities provide a rigorous way to quantify uncertainty.

### What Are Concentration Inequalities?

Concentration inequalities provide bounds on the probability that a random variable deviates from some central value (often its expected value). In simpler terms, they tell us how “concentrated” a random variable is around its mean.

For example, if you compute the average of a large number of independent samples, a concentration inequality can help you answer: How likely is it that the average is far from the true mean? This is crucial for ensuring that what we observe empirically (on our training set, say) is representative of the underlying data distribution.

### Why They Matter in Machine Learning

In machine learning, concentration inequalities are the backbone of many generalization guarantees. They help us:
+ Quantify the reliability of empirical estimates: For instance, ensuring that the training error is close to the true error.
+ Derive performance bounds: Many algorithms’ guarantees hinge on these inequalities.
+ Analyze convergence: When using stochastic optimization methods, concentration inequalities can show how fast our estimates converge to their true values.

### Key Examples of Concentration Inequalities

Here are some of the most common concentration inequalities that you might encounter in ML literature:
+ Hoeffding’s Inequality: Provides a bound for the sum of bounded independent random variables.
+ McDiarmid’s Inequality: Useful when the function of independent random variables does not change too much when any single variable is altered.
+ Chebyshev’s Inequality: Offers a more general (though often looser) bound using the variance of the random variable.
+ Chernoff Bounds: Provide exponentially decreasing bounds on tail distributions of sums of independent random variables.
---

## A Closer Look: Hoeffding’s Inequality

To illustrate the concept, consider Hoeffding’s inequality. Suppose you have independent random variables \(X_1, X_2, \dots, X_n\) that are bounded (say, each \(X_i \in [a_i, b_i]\)). Define the empirical average:

\[
\frac{1}{n} \sum_{i=1}^n X_i
\]

Hoeffding’s inequality gives us a bound on how far this average can deviate from its expected value. Specifically, for any \(t > 0\):

\[
\Pr\left( \left| \frac{1}{n} \sum_{i=1}^n X_i - \mathbb{E}\left[\frac{1}{n} \sum_{i=1}^n X_i\right] \right| \ge t \right) \le 2\exp\left(\frac{-2n^2 t^2}{\sum_{i=1}^n (b_i - a_i)^2}\right)
\]

In plain terms: the more samples you have, the tighter the concentration around the true mean. The probability of a large deviation shrinks exponentially fast in the number of samples \(n\).

### Common Variants in ML

In machine learning, our data is often assumed to be i.i.d. and bounded in \([0, 1]\). In this case, Hoeffding’s inequality simplifies to:


\[
\Pr\left( \left| \frac{1}{n} \sum_{i=1}^n X_i - \mathbb{E}[X_i] \right| \ge t \right)
\le 2 \exp(-2nt^2)
\]

This is commonly used when bounding the difference between empirical risk and true risk.

### One-Sided Version

If you only care about the upper (or lower) tail—for example, bounding overestimation of the mean—you can drop the absolute value:

\[
\Pr\left( \frac{1}{n} \sum_{i=1}^n X_i - \mathbb{E}[X_i] \ge t \right)
\le \exp(-2nt^2)
\]

This is especially handy when applying a union bound across multiple events.

---

## A Closer Look: McDiarmid’s Inequality

McDiarmid’s inequality is a powerful concentration result that applies to functions of independent random variables—especially when the function doesn't change too much if a single variable is altered. It is sometimes referred to as the **bounded difference inequality**.

### Setup

Let \( X_1, X_2, \dots, X_n \) be independent random variables taking values in arbitrary spaces. Suppose we have a function  
\[
f : \mathcal{X}_1 \times \dots \times \mathcal{X}_n \to \mathbb{R}
\]  
such that changing any one coordinate \( X_i \) (while keeping the others fixed) changes the value of \( f \) by at most \( c_i \). Formally, for all \( i \in \{1, \dots, n\} \):

\[
\sup_{x_1,\dots,x_n,\,x_i'} \left| f(x_1, \dots, x_i, \dots, x_n) - f(x_1, \dots, x_i', \dots, x_n) \right| \le c_i
\]

Then for any \( t > 0 \):

\[
\Pr\left( f(X_1, \dots, X_n) - \mathbb{E}[f(X_1, \dots, X_n)] \ge t \right)
\le \exp\left( \frac{-2t^2}{\sum_{i=1}^n c_i^2} \right)
\]

There is also a **two-sided version**:

\[
\Pr\left( \left| f(X_1, \dots, X_n) - \mathbb{E}[f(X_1, \dots, X_n)] \right| \ge t \right)
\le 2\exp\left( \frac{-2t^2}{\sum_{i=1}^n c_i^2} \right)
\]

---

### Why It Matters in ML

McDiarmid’s inequality is especially useful in situations where we evaluate some function over a dataset, like the **empirical risk**, and want to show that it concentrates around its expected value.

Unlike Hoeffding’s inequality, which applies to sums of random variables, McDiarmid applies to more general functions—as long as **no single variable has too much influence**. This makes it highly suitable for:

- **Stability analysis of algorithms**
- **Generalization bounds** when empirical loss functions change only slightly with a single data point
- **Complex random processes**, such as Rademacher complexities or covering number arguments

---

### Example

Let’s say \( f \) is the empirical risk over a dataset of \( n \) samples:

\[
f(X_1, \dots, X_n) = \frac{1}{n} \sum_{i=1}^n \ell(X_i)
\]

If the loss function \( \ell \) is bounded in \([0, 1]\), then changing one data point changes the empirical risk by at most \( \frac{1}{n} \). So \( c_i = \frac{1}{n} \), and:

\[
\sum_{i=1}^n c_i^2 = n \cdot \left(\frac{1}{n}\right)^2 = \frac{1}{n}
\]

Plugging this into McDiarmid’s inequality gives:

\[
\Pr\left( f(X_1, \dots, X_n) - \mathbb{E}[f] \ge t \right)
\le \exp(-2nt^2)
\]

— which is exactly the same bound as Hoeffding’s inequality for i.i.d. bounded random variables, but derived in a more general framework.