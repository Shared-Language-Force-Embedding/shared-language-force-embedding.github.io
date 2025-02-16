---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: Cross-Modality Embedding of Force and Language for Natural Human-Robot Communication
permalink: /
---

<style>
/* Ensure links inside .section-title maintain their color and only show an underline on hover */
.section-title a {
    text-decoration: none;  /* No underline by default */
    color: inherit; /* Keep text color the same */
}

.section-title a:hover {
    text-decoration: underline; /* Underline only on hover */
}
</style>

A method for cross-modality embedding of force profile and words is presented for synergistic coordination of verbal and haptic communication. When two people carry a large, heavy object together, they coordinate through verbal communication about the intended movements and physical forces applied to the object. This natural integration of verbal and physical cues enables effective coordination. Similarly, human-robot interaction could achieve this level of coordination by integrating verbal and haptic communication modalities. This paper presents a framework for embedding words and force profiles in a unified manner, so that the two communication modalities can be integrated and coordinated in a way that is effective and synergistic. Here, it will be shown that, although language and physical force profiles are deemed completely different, the two can be embedded in a unified latent space and proximity between the two can be quantified. In this latent space, a force profile and words can a) supplement each other, b) integrate the individual effects, and c) substitute in an exchangeable manner. First, the need for cross-modality embedding is addressed, and the basic architecture and key building block technologies are presented. Methods for data collection and implementation challenges will be addressed, followed by experimental results and discussions.

## Demonstration

## Presentation

Insert video here

<h2 class="section-title"><a href="/framework/">Framework 🔗</a></h2>

Our framework consisted of a dual autoencoder model that was trained to encode inputs from both modalities into a shared latent space and decode them back to construct instances of either modality.

{% include framework.html %}

<h2 class="section-title"><a href="/therapy-sessions/">Therapy Sessions 🔗</a></h2>

We conducted an observational study of a physical therapist demonstrating various therapeutic techniques on a patient with neurological injuries at the Spaulding Rehabilitation Center, Cambridge, MA. The therapist's use of both verbal and physical gestures to guide patients motivated us to develop a framework that could learn the relationship between the 2 modalities.

<h2 class="section-title"><a href="/data-collection/">Data Collection 🔗</a></h2>

To train and evaluate the shared language-force embedding framework, we collected data from 10 participants interacting with a robot arm. Each participant underwent 2 procedures, Phrase-To-Force and Force-To-Phrase, each examining translation from one modality to the other.

{% include download_data.html %}

<h2 class="section-title"><a href="/results/">Results 🔗</a></h2>

We evaluated 2 variations of our framework against 3 other baseline models. Our experiments were designed to assess the performance of our framework on language-force translation and generalization to unseen examples. It also tested the impact of the framework leveraging different phrase representations.

{% include overall_results.html %}

<br>

Our dual autoencoder models consistently outperformed the baselines by 20–30% across core metrics. They also generalized well to unseen modifiers and directions, especially with GloVe embeddings, which enhanced force profile accuracy. Meanwhile, binary-based embeddings offered more precise textual output. Overall, unifying force and language in a single representation enables more natural and robust human-robot interactions.

## Code

Refer to the [Shared Language-Force Embedding repository](https://github.com/Shared-Language-Force-Embedding/shared-language-force-embedding) for the codebase of our framework and baseline models.