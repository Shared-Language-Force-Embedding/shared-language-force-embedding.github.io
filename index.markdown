---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
title: Shared Force-Language Embeddings for Natural Human-Robot Communication
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

We present a framework that maps language and force into a shared latent space, enabling seamless translation between verbal commands and physical interactions. Using a dual autoencoder model trained on human data, our approach facilitates natural human-robot collaboration and lays the groundwork for multimodal communication in robotics.

## Demonstration

<video class="video-js" style="display:block;width:100%;" autoplay controls preload="auto">
    <source src="/assets/videos/demo.webm" type="video/webm">
</video>

## Presentation

[Slides](https://docs.google.com/presentation/d/1sQLPpRt3YNDDI3nDV0YD3PT097j20cjJ7gldSTidsmA/edit?usp=sharing)

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