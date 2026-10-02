---
id: "1209"
title: "Le plus petit n au-delà de 2023"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [second-degre, racines, somme-et-produit, entiers, minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 6.3 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

Trouver le plus petit entier $n > 2023$ pour lequel le trinôme

$$x^2 - 23x - n$$

admet au moins une racine entière.

## Hints

1. Supposer que $r$ est une racine entière et exprimer $n$ en fonction de $r$.
2. Réciproquement, si $n$ s'écrit de cette façon avec $r$ entier, le trinôme a-t-il bien une racine entière ?
3. Le problème devient : parmi tous les nombres $r^2 - 23r$ où $r$ est entier, lesquels dépassent $2023$, et quel est le plus petit d'entre eux ?
4. La fonction $r \mapsto r^2 - 23r$ est une parabole. Où se trouve son sommet ? Comment varie-t-elle de part et d'autre ?
5. Chercher autour de $r = 58$ et de $r = -35$.

## Solution

**Traduire la condition.**

Supposons que le trinôme $x^2 - 23x - n$ admette une racine entière $r$. Alors

$$r^2 - 23r - n = 0, \qquad \text{donc} \qquad n = r^2 - 23r.$$

Réciproquement, si $r$ est un entier et si $n = r^2 - 23r$, alors $r$ est bien racine du trinôme.

*(Au passage : la somme des deux racines vaut $23$, donc si l'une est entière, l'autre l'est aussi. Ici, la seconde racine est $23 - r$.)*

Le problème est donc devenu :

> parmi les nombres de la forme $r^2 - 23r$ avec $r$ entier, trouver le plus petit qui dépasse $2023$.

**Étudier $f(r) = r^2 - 23r$.**

Mettons sous forme canonique :

$$f(r) = \left(r - \frac{23}{2}\right)^{\!2} - \frac{529}{4}.$$

C'est une parabole tournée vers le haut, de sommet en $r = \dfrac{23}{2} = \text{11,5}$. La valeur de $f(r)$ est donc d'autant plus grande que $r$ est loin de $\text{11,5}$ ; plus précisément, $f(r)$ ne dépend que de la distance $\left|r - \text{11,5}\right|$, et croît avec elle.

Comme $r$ est un entier, cette distance vaut $\text{0,5}$, $\text{1,5}$, $\text{2,5}$, … C'est un demi-entier impair, atteint par exactement deux entiers : la distance $d$ correspond à $r = \text{11,5} + d$ et à $r = \text{11,5} - d$.

**Chercher le minimum.**

On veut $f(r) > 2023$, c'est-à-dire

$$\left(r - \frac{23}{2}\right)^{\!2} > 2023 + \frac{529}{4} = \frac{8092 + 529}{4} = \frac{8621}{4}.$$

Comme $\sqrt{8621} \approx \text{92,85}$, la condition s'écrit

$$\left|r - \frac{23}{2}\right| > \frac{\text{92,85}}{2} \approx \text{46,42}.$$

La plus petite distance admissible de la forme voulue est donc $\text{46,5}$, obtenue pour

$$r = \text{11,5} + \text{46,5} = 58 \qquad \text{ou} \qquad r = \text{11,5} - \text{46,5} = -35.$$

Dans les deux cas :

$$f(58) = 58 \times (58 - 23) = 58 \times 35 = 2030, \qquad f(-35) = (-35) \times (-35 - 23) = (-35)\times(-58) = 2030.$$

**Vérification.** Avec la distance juste en dessous, $\text{45,5}$, on obtient $r = 57$ ou $r = -34$, et

$$f(57) = 57 \times 34 = 1938 < 2023.$$

Aucune autre valeur entière de $r$ ne donne un résultat strictement compris entre $2023$ et $2030$.

Pour $n = 2030$, le trinôme $x^2 - 23x - 2030$ a pour racines $58$ et $-35$, toutes deux entières. On vérifie : $58 \times (-35) = -2030$ et $58 + (-35) = 23$. ✓

**Conclusion.** Le plus petit entier convenable est $n = 2030$.

## Going further

1. Combien y a-t-il d'entiers $n$ compris entre $1$ et $2023$ tels que $x^2 - 23x - n$ ait des racines entières ?
2. Même question pour $x^2 - 23x + n$ (avec un signe $+$). Attention, la réponse est très différente : le produit des racines est maintenant positif.
