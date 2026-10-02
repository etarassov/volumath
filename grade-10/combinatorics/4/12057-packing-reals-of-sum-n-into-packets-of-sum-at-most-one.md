---
id: "12057"
title: "Ranger des réels de somme n dans des paquets de somme au plus 1"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [paquets, regroupement, tri, principe-extremal, exemple-extremal, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de sélection pour l'OIM 2014, premier jour (13 mai 2014)"
  reference: "2017-10_ofm-2013-2014-test-mai-1.pdf, exercice 1 (c'est le problème C1 de la liste courte de l'OIM 2013) ; corrigé 2017-10_ofm-2013-2014-test-mai-corrige.pdf, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-mai-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-mai-1.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On dispose de $d$ nombres réels $a_1, a_2, \ldots, a_d$, tous compris entre $0$ et $1$ (au sens large), dont la somme vaut $n$. On veut les répartir en $k$ paquets, certains paquets pouvant rester vides, de sorte que dans chaque paquet la somme des nombres soit au plus $1$.

Trouver le plus petit entier $k$ pour lequel c'est possible **quels que soient** $d$ et les nombres $a_1, \ldots, a_d$.

## Hints

1. Commencez par $n = 1$ et $n = 2$. Pour $n = 2$, trois nombres égaux à $2/3$ demandent combien de paquets ?
2. Si tous les nombres sont strictement plus grands que $1/2$, combien un paquet peut-il en contenir ?
3. Dans l'autre sens, mettez d'abord chaque nombre dans son propre paquet. Tant qu'il y a beaucoup de paquets, peut-on en fusionner deux ?
4. Rangez les sommes des paquets dans l'ordre croissant, $\alpha_1 \leqslant \alpha_2 \leqslant \cdots \leqslant \alpha_k$, et regroupez-les deux par deux. Si $k \geqslant 2n$, que peut-on dire de $\alpha_1 + \alpha_2$ ?

## Solution

Nous allons montrer que la réponse est $k = 2n - 1$.

**Étape 1 : il faut au moins $2n - 1$ paquets.** Prenons $d = 2n - 1$ nombres tous égaux à $n/(2n - 1)$. Leur somme vaut bien $n$. Chacun est au plus égal à $1$, car $n \leqslant 2n - 1$, et chacun est strictement plus grand que $1/2$, car $2n > 2n - 1$.

La somme de deux de ces nombres dépasse donc strictement $1$ : un paquet en contient au plus un. Il faut donc au moins $2n - 1$ paquets pour les ranger. Ainsi, aucun $k$ plus petit que $2n - 1$ ne convient.

**Étape 2 : $2n - 1$ paquets suffisent toujours.** Prenons des nombres $a_1, \ldots, a_d$ quelconques comme dans l'énoncé. Mettons d'abord chaque nombre dans son propre paquet. On obtient $d$ paquets, et chaque paquet a une somme au plus égale à $1$, puisque chaque $a_i$ est au plus $1$.

Supposons qu'à un moment donné on ait $k$ paquets, tous de somme au plus $1$, avec $k \geqslant 2n$. Notons $\alpha_1 \leqslant \alpha_2 \leqslant \cdots \leqslant \alpha_k$ les sommes des paquets, rangées dans l'ordre croissant. Leur total est la somme de tous les nombres, c'est-à-dire $n$.

Regroupons ces sommes deux par deux : $(\alpha_1 + \alpha_2)$, $(\alpha_3 + \alpha_4)$, et ainsi de suite. Comme $k \geqslant 2n$, on peut former au moins $n$ couples complets, sans toucher aux autres sommes, qui sont positives ou nulles. Chaque couple a une somme au moins égale à $\alpha_1 + \alpha_2$, puisque les $\alpha_i$ sont rangés dans l'ordre croissant. Donc

$$n = \alpha_1 + \alpha_2 + \cdots + \alpha_k \geqslant n\,(\alpha_1 + \alpha_2) ,$$

et par conséquent $\alpha_1 + \alpha_2 \leqslant 1$.

On peut donc fusionner les deux paquets de plus petites sommes en un seul paquet, dont la somme $\alpha_1 + \alpha_2$ est encore au plus $1$. Le nombre de paquets diminue de $1$.

On recommence tant qu'il reste au moins $2n$ paquets. Le nombre de paquets diminue à chaque fois, donc on finit par obtenir au plus $2n - 1$ paquets, tous de somme au plus $1$. S'il y en a moins de $2n - 1$, on ajoute des paquets vides.

**Conclusion.** Le plus petit entier $k$ qui convient est $k = 2n - 1$.

## Going further

1. Pour $n = 3$, donner cinq nombres compris entre $0$ et $1$, de somme $3$, que l'on ne peut pas ranger en $4$ paquets de somme au plus $1$.
2. Dans l'étape 2, on fusionne deux paquets tant qu'il en reste au moins $2n$. Montrer sur un exemple qu'avec $2n - 1$ paquets, il n'est pas toujours possible d'en fusionner deux.
