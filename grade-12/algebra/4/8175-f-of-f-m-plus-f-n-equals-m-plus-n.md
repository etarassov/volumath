---
id: "8175"
title: "f(f(m) + f(n)) = m + n"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [equation-fonctionnelle, involution, additivite, entiers-naturels]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 59 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Déterminer toutes les fonctions $f : \mathbb{N} \to \mathbb{N}$ telles que, pour tous entiers naturels $m$ et $n$,

$$f(f(m) + f(n)) = m + n .$$

(Ici $\mathbb{N} = \{0, 1, 2, \ldots\}$.)

## Hints

1. Commence par $m = n = 0$ : que vaut $f$ en un certain point ?
2. Utilise le point que tu viens de trouver comme nouvelle valeur de $m$ et de $n$. Tu obtiendras une équation sur $f(0)$ seul.
3. Une fois $f(0) = 0$ connu, prends $n = 0$ dans l'équation générale. Quelle relation très simple obtiens-tu sur $f \circ f$ ?
4. Cette relation dit que $f$ est sa propre réciproque. Applique alors $f$ aux deux membres de l'équation de départ.
5. Tu aboutis à $f(m+n) = f(m) + f(n)$. Qu'est-ce que cela impose à $f$, et que vaut $f(1)$ ?

## Solution

**Étape 1 : $f(0) = 0$.**

Posons $c = f(0)$. En prenant $m = n = 0$ dans l'équation :

$$f(2c) = 0 .$$

Reprenons l'équation avec $m = n = 2c$ :

$$f(f(2c) + f(2c)) = 2c + 2c = 4c .$$

Mais $f(2c) = 0$, donc le membre de gauche vaut $f(0+0) = f(0) = c$. Ainsi

$$c = 4c, \qquad \text{donc} \qquad 3c = 0, \qquad \text{donc} \qquad c = f(0) = 0 .$$

**Étape 2 : $f$ est sa propre réciproque.**

Prenons $n = 0$ dans l'équation générale :

$$f(f(m) + f(0)) = m + 0, \qquad \text{c'est-à-dire} \qquad f(f(m)) = m \quad \text{pour tout } m .$$

En particulier $f$ est bijective : elle est sa propre fonction réciproque.

**Étape 3 : $f$ est additive.**

Appliquons $f$ aux deux membres de l'équation de départ :

$$f(f(f(m)+f(n))) = f(m+n) .$$

Le membre de gauche est de la forme $f(f(x))$ avec $x = f(m)+f(n)$, donc il vaut $x$. Ainsi

$$f(m) + f(n) = f(m+n) \qquad \text{pour tous } m, n .$$

**Étape 4 : conclure.**

Posons $a = f(1)$. Par récurrence immédiate à partir de l'additivité,

$$f(n) = f(\underbrace{1 + 1 + \cdots + 1}_{n \text{ fois}}) = n\,f(1) = n\,a \qquad \text{pour tout } n \geqslant 0 .$$

Or l'étape 2 donne $f(f(1)) = 1$, c'est-à-dire $f(a) = 1$. En utilisant $f(a) = a \times a$ :

$$a^2 = 1 .$$

Comme $a$ est un entier naturel, $a = 1$, donc $f(n) = n$ pour tout $n$.

**Réciproque.** L'identité convient : $f(f(m)+f(n)) = m+n$.

$$\boxed{\ \text{La seule solution est } f(n) = n.\ }$$

## Going further

La marche à suivre illustre une stratégie standard pour les équations fonctionnelles : d'abord trouver une valeur particulière ($f(0)$), ensuite obtenir une propriété structurelle (ici $f \circ f = \mathrm{id}$), et enfin s'en servir pour simplifier l'équation générale jusqu'à une équation classique (ici l'additivité).

Attention toutefois : sur $\mathbb{N}$, l'additivité force bien $f(n) = n f(1)$, mais sur $\mathbb{R}$ l'équation $f(x+y) = f(x)+f(y)$ admet aussi des solutions monstrueuses, non continues. C'est le travail sur les entiers qui rend la dernière étape immédiate.
