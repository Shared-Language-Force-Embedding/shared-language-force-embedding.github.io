---
layout: page
title: Framework
permalink: /framework/
---

Our framework consisted of a dual autoencoder model that was trained to encode inputs from both modalities into a shared latent space and decode them back to construct instances of either modality.

{% include framework.html %}

<br>

<figure>
    <table border="1" style="border-collapse: collapse; text-align: center; width: 100%;">
        <thead>
            <tr>
                <th>Input Type</th>
                <th>Flattened Force Profile Features</th>
                <th>Binary Phrase Vector</th>
                <th>GloVe Embedding Phrase Vector</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Input Vector</strong></td>
                <td><strong>769×1</strong></td>
                <td><strong>62×1</strong></td>
                <td><strong>150×1</strong></td>
            </tr>
            <tr>
                <td>Encoder Layer 1</td>
                <td>769×512</td>
                <td>62×512</td>
                <td>150×512</td>
            </tr>
            <tr>
                <td>Encoder Activation 1</td>
                <td>ReLU + Dropout</td>
                <td>ReLU + Dropout</td>
                <td>ReLU + Dropout</td>
            </tr>
            <tr>
                <td>Encoder Layer 2</td>
                <td>512×128</td>
                <td>512×128</td>
                <td>512×128</td>
            </tr>
            <tr>
                <td>Encoder Activation 2</td>
                <td>ReLU + Dropout</td>
                <td>ReLU + Dropout</td>
                <td>ReLU + Dropout</td>
            </tr>
            <tr>
                <td>Encoder Layer 3</td>
                <td>128×16</td>
                <td>128×16</td>
                <td>128×16</td>
            </tr>
            <tr>
                <td><strong>Latent Space Vector</strong></td>
                <td><strong>16×1</strong></td>
                <td><strong>16×1</strong></td>
                <td><strong>16×1</strong></td>
            </tr>
            <tr>
                <td>Decoder Layer 1</td>
                <td>16×128</td>
                <td>16×128</td>
                <td>16×128</td>
            </tr>
            <tr>
                <td>Decoder Activation 1</td>
                <td>ReLU</td>
                <td>ReLU</td>
                <td>ReLU</td>
            </tr>
            <tr>
                <td>Decoder Layer 2</td>
                <td>128×512</td>
                <td>128×512</td>
                <td>128×512</td>
            </tr>
            <tr>
                <td>Decoder Activation 2</td>
                <td>ReLU</td>
                <td>ReLU</td>
                <td>ReLU</td>
            </tr>
            <tr>
                <td>Decoder Layer 3</td>
                <td>512×769</td>
                <td>512×62</td>
                <td>512×150</td>
            </tr>
            <tr>
                <td><strong>Output Vector</strong></td>
                <td><strong>769×1</strong></td>
                <td><strong>62×1</strong></td>
                <td><strong>150×1</strong></td>
            </tr>
        </tbody>
    </table>
    <figcaption style="text-align: center;">Detailed breakdown of the dimensions of the inputs, layers, and outputs comprising each autoencoder responsible for encoding and decoding its assigned input type. Since we aim to develop a shared latent space for force and language, the latent space vector has the same dimensions across all autoencoders.</figcaption>
</figure>

## Hyperparameters

Dropout chance: 10%

Number of training epochs: 1024

Adam learning rate: 0.001

Force profiles were augmented with per sample random noise residuals with mean 0 and variance 1