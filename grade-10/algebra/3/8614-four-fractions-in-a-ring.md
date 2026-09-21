---
id: "8614"
title: "Quatre fractions en ronde"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, moyenne arithmetico geometrique, regroupement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, entraînement de mi-parcours, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ des réels strictement positifs. Montrer que

$$\frac{a}{b} + \frac{b}{c} + \frac{c}{d} + \frac{d}{a} \geqslant 4 .$$

## Hints

1. Commence par le cas le plus simple : pour tout réel $t > 0$, montre que $t + \dfrac{1}{t} \geqslant 2$. Pense à multiplier par $t$ et à reconnaître une identité remarquable.
2. Les quatre fractions ne se regroupent pas n'importe comment. Cherche un regroupement en deux paquets dont les produits soient inverses l'un de l'autre.
3. Essaie le regroupement $\left(\dfrac{a}{b} + \dfrac{c}{d}\right) + \left(\dfrac{b}{c} + \dfrac{d}{a}\right)$. Que valent les deux produits $\dfrac{a}{b} \times \dfrac{c}{d}$ et $\dfrac{b}{c} \times \dfrac{d}{a}$ ?
4. Pour deux réels positifs $u$ et $v$, on a $u + v \geqslant 2\sqrt{uv}$ : c'est l'inégalité entre moyenne arithmétique et moyenne géométrique, qui découle de $(\sqrt{u} - \sqrt{v})^2 \geqslant 0$.

## Solution

**Deux outils.**

*Outil 1.* Pour tous réels $u, v > 0$ :

$$u + v \geqslant 2\sqrt{uv} .$$

En effet, $(\sqrt{u} - \sqrt{v})^2 \geqslant 0$ se développe en $u - 2\sqrt{uv} + v \geqslant 0$.

*Outil 2.* Pour tout réel $t > 0$ :

$$t + \frac{1}{t} \geqslant 2 .$$

C'est l'outil 1 avec $u = t$ et $v = \dfrac{1}{t}$, puisque $\sqrt{t \times \frac 1t} = 1$.

**Le bon regroupement.** Écrivons

$$\frac{a}{b} + \frac{b}{c} + \frac{c}{d} + \frac{d}{a} = \underbrace{\left( \frac{a}{b} + \frac{c}{d} \right)}_{\text{premier paquet}} + \underbrace{\left( \frac{b}{c} + \frac{d}{a} \right)}_{\text{second paquet}} .$$

Ce regroupement est choisi parce que les produits des deux paquets sont inverses l'un de l'autre :

$$\frac{a}{b} \times \frac{c}{d} = \frac{ac}{bd} \qquad \text{et} \qquad \frac{b}{c} \times \frac{d}{a} = \frac{bd}{ac} .$$

**L'estimation.** Posons

$$t = \sqrt{\frac{ac}{bd}} \; > 0, \qquad \text{de sorte que} \qquad \sqrt{\frac{bd}{ac}} = \frac{1}{t} .$$

L'outil 1 appliqué à chaque paquet donne

$$\frac{a}{b} + \frac{c}{d} \geqslant 2\sqrt{\frac{ac}{bd}} = 2t \qquad \text{et} \qquad \frac{b}{c} + \frac{d}{a} \geqslant 2\sqrt{\frac{bd}{ac}} = \frac{2}{t} .$$

En additionnant ces deux inégalités, puis en appliquant l'outil 2 :

$$\frac{a}{b} + \frac{b}{c} + \frac{c}{d} + \frac{d}{a} \;\geqslant\; 2t + \frac{2}{t} \;=\; 2\left( t + \frac{1}{t} \right) \;\geqslant\; 2 \times 2 = 4 .$$

**Conclusion.** L'inégalité est démontrée. Il y a égalité lorsque $t = 1$ et que les deux applications de l'outil 1 sont des égalités, c'est-à-dire lorsque $\dfrac{a}{b} = \dfrac{c}{d}$ et $\dfrac{b}{c} = \dfrac{d}{a}$ et $ac = bd$ ; en particulier $a = b = c = d$ convient et donne bien $4$.

## Going further

Le regroupement n'est pas arbitraire. Si l'on avait essayé $\left(\dfrac{a}{b} + \dfrac{b}{c}\right) + \left(\dfrac{c}{d} + \dfrac{d}{a}\right)$, les produits auraient été $\dfrac{a}{c}$ et $\dfrac{c}{a}$ : cela marche aussi, et c'est d'ailleurs un bon exercice de le rédiger.

En revanche le regroupement $\left(\dfrac{a}{b} + \dfrac{d}{a}\right) + \left(\dfrac{b}{c} + \dfrac{c}{d}\right)$ donne les produits $\dfrac{d}{b}$ et $\dfrac{b}{d}$, et fonctionne encore. Le point commun des trois : chaque lettre apparaît autant de fois en haut qu'en bas dans le produit total, qui vaut donc $1$. C'est cela qui rend l'inégalité vraie, et c'est aussi ce que dit la version générale de l'inégalité arithmético-géométrique, appliquée directement aux quatre fractions.
