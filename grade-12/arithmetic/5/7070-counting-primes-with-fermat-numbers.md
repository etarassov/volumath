---
id: "7070"
title: "Compter les nombres premiers avec Fermat"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [nombres de fermat, premiers entre eux, recurrence, nombres premiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, mercredi : arithmétique, matin (Vincent Jugé), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Pour un entier naturel $n$, on pose
$$F_n = 2^{2^n} + 1 .$$

Ces nombres s'appellent les **nombres de Fermat**. Les premiers valent
$$F_0 = 3, \quad F_1 = 5, \quad F_2 = 17, \quad F_3 = 257, \quad F_4 = 65\,537 .$$

Montrer qu'il existe au moins $n+1$ nombres premiers inférieurs ou égaux à $F_n$.

## Hints

1. Il y a $n+1$ nombres de Fermat $F_0, F_1, \ldots, F_n$, et il faut trouver $n+1$ nombres
   premiers. Ce n'est probablement pas un hasard.
2. Chaque $F_i$ admet au moins un diviseur premier. Si ces diviseurs premiers étaient tous
   différents les uns des autres, on aurait gagné. Pourquoi ?
3. Il suffit donc de montrer que les $F_i$ sont **deux à deux premiers entre eux**.
4. Calcule $F_0$, $F_0 F_1$, $F_0 F_1 F_2$ et compare à $F_1$, $F_2$, $F_3$. Que remarques-tu ?
5. Démontre par récurrence que $F_0 F_1 \cdots F_{n-1} = F_n - 2$. Utilise
   $(x-1)(x+1) = x^2 - 1$.

## Solution

### Étape 1 : une identité de produit

Montrons par récurrence sur $n \geq 1$ que
$$F_0 \times F_1 \times \cdots \times F_{n-1} = F_n - 2 .$$

*Initialisation ($n = 1$).* Le membre de gauche vaut $F_0 = 3$, et le membre de droite vaut
$F_1 - 2 = 5 - 2 = 3$. $\checkmark$

*Hérédité.* Supposons la formule vraie au rang $n$. Alors
$$F_0 F_1 \cdots F_{n-1} F_n = (F_n - 2) \times F_n .$$

Or $F_n = 2^{2^n} + 1$, donc $F_n - 2 = 2^{2^n} - 1$. En posant $x = 2^{2^n}$ :
$$(F_n - 2) F_n = (x - 1)(x + 1) = x^2 - 1 = \left(2^{2^n}\right)^2 - 1
= 2^{2 \times 2^n} - 1 = 2^{2^{n+1}} - 1 = F_{n+1} - 2 .$$

La formule est donc vraie au rang $n+1$, ce qui achève la récurrence.

### Étape 2 : les nombres de Fermat sont deux à deux premiers entre eux

Soient $i < j$ deux entiers naturels, et soit $d$ un diviseur commun de $F_i$ et $F_j$.

D'après l'étape 1 appliquée au rang $j$, le nombre $F_i$ est l'un des facteurs du produit
$F_0 F_1 \cdots F_{j-1} = F_j - 2$. Donc $F_i$ divise $F_j - 2$, et par conséquent $d$ divise
$F_j - 2$.

Mais $d$ divise aussi $F_j$. Il divise donc la différence :
$$d \mid F_j - (F_j - 2) = 2 .$$

Donc $d$ vaut $1$ ou $2$. Or tous les $F_n$ sont **impairs** (ce sont des puissances de $2$
augmentées de $1$), donc $d$ ne peut pas valoir $2$.

Ainsi $d = 1$ : les nombres de Fermat sont deux à deux premiers entre eux.

### Étape 3 : conclusion

Pour chaque $i$ entre $0$ et $n$, le nombre $F_i$ vérifie $F_i \geq 3 > 1$, donc il admet au
moins un diviseur premier. Choisissons-en un, et appelons-le $p_i$.

Ces $n+1$ nombres premiers $p_0, p_1, \ldots, p_n$ sont **deux à deux distincts** : si on avait
$p_i = p_j$ avec $i \neq j$, ce nombre premier serait un diviseur commun de $F_i$ et $F_j$, ce
qui contredirait l'étape 2.

Enfin, chaque $p_i$ divise $F_i$, donc $p_i \leq F_i$. Et la suite $(F_k)$ est strictement
croissante, donc $F_i \leq F_n$ pour $i \leq n$.

On a donc exhibé $n+1$ nombres premiers distincts, tous inférieurs ou égaux à $F_n$.
$\blacksquare$

## Going further

Ce raisonnement fournit au passage une **nouvelle démonstration de l'infinité des nombres
premiers**, différente de celle d'Euclide : les $F_n$ étant deux à deux premiers entre eux et
en nombre infini, ils fournissent une infinité de nombres premiers distincts. On l'attribue à
Pólya.

Fermat, lui, avait conjecturé que **tous** les $F_n$ sont premiers. C'est vrai pour
$F_0 = 3$, $F_1 = 5$, $F_2 = 17$, $F_3 = 257$ et $F_4 = 65\,537$. Mais Euler a montré en 1732
que
$$F_5 = 4\,294\,967\,297 = 641 \times 6\,700\,417 .$$

Et depuis, on n'a trouvé **aucun** autre nombre de Fermat premier. On ne sait même pas s'il en
existe une infinité, ni s'il n'y en a qu'un nombre fini.
