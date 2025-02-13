---
layout: page
title: Results
permalink: /results/
---

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