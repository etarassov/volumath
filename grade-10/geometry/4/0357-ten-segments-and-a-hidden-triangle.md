---
id: "0357"
title: "Dix segments, un triangle caché"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [inegalite-triangulaire, raisonnement-par-labsurde, fibonacci, minoration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, второе полугодие, часть II, пособие для преподавателей"
  reference: "AU2.pdf, листок 2, задача 8"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On dispose de dix segments. La longueur de chacun d'eux est un nombre entier de centimètres. Les deux plus courts mesurent $1$ cm chacun, et le plus long mesure $50$ cm.

Montrer que parmi ces dix segments, on peut toujours en choisir trois qui forment un triangle.

*Rappel : trois longueurs forment un triangle exactement lorsque la plus grande est strictement inférieure à la somme des deux autres.*

## Hints

1. On demande de montrer qu'un objet existe, sans dire lequel. C'est la situation typique où l'on raisonne **par l'absurde** : suppose qu'aucun triplet ne forme de triangle, et cherche une contradiction.
2. Range d'abord les longueurs dans l'ordre croissant : $l_1 \le l_2 \le \dots \le l_{10}$. Que valent $l_1$, $l_2$ et $l_{10}$ ?
3. Si les trois segments de longueurs $l_{k-2}$, $l_{k-1}$, $l_k$ ne forment pas de triangle, quelle inégalité obtient-on ? Écris-la pour $k = 3$, puis $k = 4$, etc.
4. Tu obtiens $l_3 \ge 2$, puis $l_4 \ge 3$, puis $l_5 \ge 5$... Continue jusqu'à $l_{10}$ et compare avec $50$. Reconnais-tu la suite de nombres qui apparaît ?

## Solution

**L'idée : on raisonne par l'absurde, et on fait grossir les longueurs de proche en proche.**

Rangeons les dix longueurs dans l'ordre croissant :

$$l_1 \le l_2 \le \dots \le l_{10}.$$

D'après l'énoncé, $l_1 = l_2 = 1$ et $l_{10} = 50$ (en centimètres).

**Supposons qu'aucun triplet ne forme de triangle.**

Prenons trois de ces segments, de longueurs $l_i \le l_j \le l_k$ avec $i < j < k$. Le plus long est $l_k$. Comme ils ne forment pas de triangle, la condition $l_i + l_j > l_k$ est fausse, c'est-à-dire

$$l_i + l_j \le l_k.$$

Appliquons cela aux triplets de segments **voisins**, c'est-à-dire à $l_{k-2}$, $l_{k-1}$, $l_k$ pour chaque $k$ allant de $3$ à $10$ :

$$l_{k-2} + l_{k-1} \le l_k.$$

**On fait grossir les longueurs, une par une.**

On part de $l_1 = l_2 = 1$ et on applique l'inégalité ci-dessus à chaque étape :

$$l_3 \ge l_1 + l_2 = 1 + 1 = 2,$$
$$l_4 \ge l_2 + l_3 \ge 1 + 2 = 3,$$
$$l_5 \ge l_3 + l_4 \ge 2 + 3 = 5,$$
$$l_6 \ge l_4 + l_5 \ge 3 + 5 = 8,$$
$$l_7 \ge l_5 + l_6 \ge 5 + 8 = 13,$$
$$l_8 \ge l_6 + l_7 \ge 8 + 13 = 21,$$
$$l_9 \ge l_7 + l_8 \ge 13 + 21 = 34,$$
$$l_{10} \ge l_8 + l_9 \ge 21 + 34 = 55.$$

Chaque minoration s'appuie sur les deux précédentes, et les nombres obtenus sont

$$1,\ 1,\ 2,\ 3,\ 5,\ 8,\ 13,\ 21,\ 34,\ 55 :$$

ce sont les nombres de **Fibonacci**, où chaque terme est la somme des deux précédents. Interdire les triangles oblige les longueurs à croître au moins aussi vite qu'eux.

**La contradiction.**

On aboutit à $l_{10} \ge 55$, alors que l'énoncé affirme $l_{10} = 50$. C'est impossible.

**Conclusion.** L'hypothèse de départ est donc fausse : parmi ces dix segments, il en existe bien trois qui forment un triangle.

**Deux remarques.**

- On n'a jamais utilisé le fait que les longueurs sont des nombres entiers. Le résultat reste vrai avec des longueurs quelconques.
- Le nombre $50$ n'est pas choisi au hasard : c'est la marche que la suite de Fibonacci saute juste au-dessus.

## Going further

1. Vérifier qu'avec les dix longueurs $1$, $1$, $2$, $3$, $5$, $8$, $13$, $21$, $34$, $55$, aucun triplet ne forme de triangle. En déduire la plus grande valeur que l'on peut écrire à la place de $50$ dans l'énoncé sans que le résultat devienne faux.
2. Est-il vrai que parmi dix segments **quelconques**, on en trouve toujours trois qui forment un triangle ? Chercher un contre-exemple, par exemple avec des puissances de $2$.
