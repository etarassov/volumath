---
id: "8174"
title: "Trois étages de f qui font 3n"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [equation-fonctionnelle, entiers-naturels, injectivite, recurrence-forte]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 62 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Déterminer toutes les fonctions $f : \mathbb{N} \to \mathbb{N}$ telles que, pour tout entier naturel $n$,

$$f(f(f(n))) + f(f(n)) + f(n) = 3n .$$

(Ici $\mathbb{N} = \{0, 1, 2, \ldots\}$ : les valeurs de $f$ sont des entiers **positifs ou nuls**.)

## Hints

1. Commence par $n = 0$. Trois entiers naturels de somme nulle : que valent-ils ?
2. Montre que $f$ est injective. Si $f(a) = f(b)$, que peux-tu dire de $f(f(a))$, puis de l'équation écrite en $a$ et en $b$ ?
3. Raisonne ensuite par récurrence forte : suppose $f(k) = k$ pour tout $k < n$ et cherche $f(n)$.
4. Avec l'injectivité, quelles sont les valeurs que $f$ ne peut **plus** prendre en un point $m \geqslant n$ ?
5. Tu obtiens $f(m) \geqslant n$ pour tout $m \geqslant n$. Applique-le trois fois de suite aux trois termes de l'équation écrite en $n$.

## Solution

**Étape 1 : $f(0) = 0$.**

Écrivons l'équation en $n = 0$ :

$$f(f(f(0))) + f(f(0)) + f(0) = 0 .$$

C'est une somme de trois entiers naturels, donc positifs ou nuls, qui vaut $0$ : chacun est nul. En particulier $f(0) = 0$.

**Étape 2 : $f$ est injective.**

Supposons $f(a) = f(b)$. En appliquant $f$, on obtient $f(f(a)) = f(f(b))$, puis $f(f(f(a))) = f(f(f(b)))$. Les membres de gauche des équations écrites en $a$ et en $b$ sont donc égaux, donc $3a = 3b$, donc $a = b$.

**Étape 3 : récurrence forte.**

Montrons que $f(n) = n$ pour tout entier naturel $n$. C'est fait pour $n = 0$. Soit $n \geqslant 1$ et supposons

$$f(k) = k \qquad \text{pour tout } k < n .$$

Les $n$ valeurs $0, 1, \ldots, n-1$ sont donc déjà atteintes par $f$, aux points $0, 1, \ldots, n-1$. Comme $f$ est injective, aucun autre point ne peut donner ces valeurs :

$$(\star) \qquad m \geqslant n \ \Longrightarrow\ f(m) \geqslant n .$$

Appliquons $(\star)$ trois fois :

- $n \geqslant n$, donc $f(n) \geqslant n$ ;
- $f(n) \geqslant n$, donc $f(f(n)) \geqslant n$ ;
- $f(f(n)) \geqslant n$, donc $f(f(f(n))) \geqslant n$.

Les trois termes de la somme $f(f(f(n))) + f(f(n)) + f(n) = 3n$ sont donc chacun supérieurs ou égaux à $n$, et leur somme vaut exactement $3n$. C'est donc que chacun vaut exactement $n$. En particulier

$$f(n) = n .$$

La récurrence est terminée.

**Réciproque.**

La fonction identité convient : $n + n + n = 3n$.

$$\boxed{\ \text{La seule solution est } f(n) = n.\ }$$

## Going further

L'argument de l'étape 3 est une petite merveille d'économie : on ne calcule rien, on se contente d'encadrer. Trois nombres au moins égaux à $n$ dont la somme vaut $3n$ sont forcément tous égaux à $n$ ; c'est le cas d'égalité d'une inégalité triviale.

Le même raisonnement marche pour toute équation de la forme
$$f^{(k)}(n) + f^{(k-1)}(n) + \cdots + f(n) = k\,n ,$$
où $f^{(j)}$ désigne $f$ appliquée $j$ fois : la seule solution reste l'identité.
