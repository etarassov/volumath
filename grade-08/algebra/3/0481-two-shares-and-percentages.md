---
id: "0481"
title: "Le partage de la recette"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [pourcentage, proportion, partage, rapport]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2017.pdf, листок 13, задача 2, с. 56"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Pierre et Jean se partagent toute la recette d'une vente de gâteaux : ce que l'un prend en
plus, l'autre l'a en moins.

Une fois le partage fait, Pierre se dit : « si j'avais pris $40\ \%$ d'argent en plus, la part
de Jean aurait diminué de $60\ \%$ ».

De combien la part de Jean aurait-elle diminué si Pierre avait pris $50\ \%$ d'argent en plus ?

## Hints

1. La recette totale ne change pas : les euros que Pierre prend en plus sont exactement ceux
   que Jean perd.
2. Appelle $a$ la part de Pierre et $b$ celle de Jean, toutes deux en euros. Écris avec $a$ le
   supplément que Pierre prendrait, et avec $b$ la perte de Jean. La phrase de Pierre devient
   alors une égalité.
3. De cette égalité tu ne peux tirer ni $a$ ni $b$ : les montants ne sont pas déterminés. Mais
   tu peux en tirer le **rapport** entre $a$ et $b$, et c'est tout ce dont tu as besoin.

## Solution

**L'idée : seuls les montants comptent l'un par rapport à l'autre, pas leurs valeurs.**

Notons $a$ la part de Pierre et $b$ la part de Jean, en euros.

**Étape 1. Traduire la phrase de Pierre.**

Prendre $40\ \%$ d'argent en plus, c'est prendre $\text{0,4}\,a$ euros de plus. Comme la recette
totale ne change pas, ces euros-là sont pris sur la part de Jean : Jean perdrait $\text{0,4}\,a$
euros.

Cette perte doit représenter $60\ \%$ de la part de Jean, c'est-à-dire $\text{0,6}\,b$ euros. D'où
l'égalité

$$\text{0,4}\,a = \text{0,6}\,b$$

**Étape 2. En tirer le rapport des deux parts.**

$$a = \frac{\text{0,6}}{\text{0,4}}\,b = \text{1,5}\,b$$

La part de Pierre vaut une fois et demie celle de Jean. On ne connaît ni $a$ ni $b$, et ce
n'est pas grave : seul ce rapport servira.

**Étape 3. Répondre à la question posée.**

Si Pierre prenait $50\ \%$ d'argent en plus, il prendrait $\text{0,5}\,a$ euros de plus, et Jean
perdrait ces mêmes euros :

$$\text{0,5}\,a = \text{0,5} \times \text{1,5}\,b = \text{0,75}\,b$$

Jean perdrait donc $\text{0,75}\,b$, c'est-à-dire $75\ \%$ de sa part.

**Vérification sur un exemple.**

Prenons $a = 60$ € pour Pierre et $b = 40$ € pour Jean : on a bien $60 = \text{1,5} \times 40$.

- Pierre prend $40\ \%$ de plus : cela fait $\text{0,4} \times 60 = 24$ € de plus. Il reste
  $40 - 24 = 16$ € à Jean. Sa perte vaut $\frac{24}{40} = \text{0,6}$, soit $60\ \%$. C'est bien ce
  que disait Pierre.
- Pierre prend $50\ \%$ de plus : cela fait $\text{0,5} \times 60 = 30$ € de plus. Il reste
  $40 - 30 = 10$ € à Jean. Sa perte vaut $\frac{30}{40} = \text{0,75}$, soit $75\ \%$.

**Conclusion.**

La part de Jean aurait diminué de $75\ \%$.

## Going further

1. Que se serait-il passé si Pierre avait pris $80\ \%$ d'argent en plus ?
2. De combien Pierre peut-il au maximum augmenter sa part, sans que Jean se retrouve avec
   moins que rien ?
