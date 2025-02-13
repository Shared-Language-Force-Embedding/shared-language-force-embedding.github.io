---
layout: page
title: Results
permalink: /results/
---

## Metrics

- **Force Profile Accuracy (FPAcc):** Measures how closely the predicted force profile $\hat{x}_f$ matches the ground truth $x_f$ using Mean Squared Error (MSE).

$$\text{FPAcc}=\text{MSE}(\hat{x}_f,x_f)$$

- **Force Direction Accuracy (FDAcc):** Evaluates directional alignment between predicted impulse $\hat{J}(T)$ and ground truth impulse $J(T)$ using cosine similarity.

$$\text{FDAcc}=\frac{\hat{J}(T)\cdot J(T)}{||\hat{J}(T)||\cdot||J(T)||}$$

- **Modifier Similarity (ModSim):** Cosine similarity between the predicted modifier $\hat{w}_m$ and the ground truth $w_m$ using SBERT embeddings $E$:

$$\text{ModSim}=\frac{E(\hat{w}_m)\cdot E(w_m)}{||E(\hat{w}_m)||\cdot||E(w_m)||}$$

- **Direction Similarity (DirSim):** Cosine similarity between predicted direction words $\hat{w}_d$ and ground truth $w_d$:

$$\text{DirSim}=\frac{E(\hat{w}_d)\cdot E(w_d)}{||E(\hat{w}_d)||\cdot||E(w_d)||}$$

- **Full Phrase Similarity (PhraseSim):**  Average of $\text{ModSim}$ and $\text{DirSim}$:

$$\text{PhraseSim}=\frac{1}{2}\left(\text{ModSim}+\text{DirSim}\right)$$

## Overall Results

{% include overall_results.html %}

<h2>Out-of-Distribution Modifiers</h2>
<div class="image-grid">
    {% for image in site.static_files %}
        {% if image.path contains '/assets/images/out_of_distribution_modifier_results/' %}
            <figure>
                <img src="{{ site.baseurl }}{{ image.path }}" alt="Modifier Result">
                <figcaption></figcaption> <!-- Add caption if needed -->
            </figure>
        {% endif %}
    {% endfor %}
</div>

<h2>Out-of-Distribution Directions</h2>
<div class="image-grid">
    {% for image in site.static_files %}
        {% if image.path contains '/assets/images/out_of_distribution_direction_results/' %}
            <figure>
                <img src="{{ site.baseurl }}{{ image.path }}" alt="Direction Result">
                <figcaption></figcaption>
            </figure>
        {% endif %}
    {% endfor %}
</div>

<style>
    .image-grid {
        display: grid;
        grid-template-columns: repeat(3, 1fr); /* Forces 3 columns */
        gap: 20px; /* Adjust spacing between images */
        justify-items: center;
        align-items: start;
        width: 100%;
    }

    .image-grid figure {
        margin: 0;
        text-align: center;
        width: 100%; /* Ensures figures fit inside grid */
    }

    .image-grid img {
        max-width: 100%; /* Ensures images resize correctly */
        height: auto;
        border-radius: 5px;
    }
</style>
