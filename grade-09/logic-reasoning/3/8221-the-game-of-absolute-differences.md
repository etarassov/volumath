---
id: "8221"
title: "Le jeu des différences, de 1 à 2019"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, parite, jeu, somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, entraînement de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », entraînement de fin de parcours, exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On écrit au tableau tous les entiers de $1$ à $2019$.

Maëna et Aline jouent au jeu suivant. Chacune à son tour, la joueuse efface deux nombres du tableau et écrit à la place la **valeur absolue de leur différence**. Par exemple, si elle efface $7$ et $12$, elle écrit $5$.

À chaque coup, il y a donc un nombre de moins au tableau. Au bout de $2018$ coups, il ne reste plus qu'un seul nombre.

Aline gagne si ce dernier nombre est **pair**, sinon c'est Maëna qui gagne.

Qui gagne, et pourquoi ce résultat ne dépend-il pas du tout de la façon dont elles jouent ?

## Hints

1. L'énoncé demande qui gagne « quelle que soit la façon de jouer ». Ce n'est donc pas une question de stratégie : c'est qu'une quantité ne change jamais.
2. Cherche cette quantité du côté de la **somme** de tous les nombres écrits au tableau. Elle change à chaque coup, mais peut-être pas complètement.
3. Compare $a + b$ et $|a - b|$ : ces deux nombres sont différents, mais ont-ils toujours la même parité ?
4. Fais les trois cas : $a$ et $b$ tous deux pairs, tous deux impairs, un de chaque.
5. Si la parité de la somme ne change jamais, il suffit de la calculer au départ. Combien y a-t-il de nombres impairs entre $1$ et $2019$ ?

## Solution

**L'invariant : la parité de la somme.**

Appelons $S$ la somme de tous les nombres actuellement écrits au tableau. Un coup remplace deux nombres $a$ et $b$ par $|a-b|$ : la somme passe donc de $S$ à

$$S - a - b + |a - b| .$$

La question est de savoir si sa **parité** change. Regardons les trois cas.

- *$a$ et $b$ tous deux pairs.* Alors $a + b$ est pair et $|a-b|$ est pair. On retire un nombre pair et on en ajoute un pair : la parité de $S$ ne change pas.
- *$a$ et $b$ tous deux impairs.* Alors $a + b$ est pair et $|a-b|$ est pair (différence de deux impairs). Même conclusion.
- *Un pair et un impair.* Alors $a+b$ est impair et $|a-b|$ est impair. On retire un impair et on en ajoute un : la parité ne change pas non plus.

Dans les trois cas, **la parité de $S$ est inchangée**.

*Une façon plus courte de le dire.* Pour tous entiers $a$ et $b$, les nombres $a+b$ et $a - b$ ont la même parité (leur différence vaut $2b$, qui est pair). Et $|a-b|$ a évidemment la même parité que $a-b$. Donc on retire $a+b$ et on ajoute un nombre de même parité : $S$ garde sa parité.

**La parité de départ.**

Au début, $S$ est la somme de tous les entiers de $1$ à $2019$. Pour savoir si elle est paire, on n'a besoin de compter que les termes impairs : les nombres pairs ne changent rien à la parité d'une somme.

Les impairs entre $1$ et $2019$ sont $1, 3, 5, \ldots, 2019$. Il y en a

$$\frac{2019 + 1}{2} = 1010 .$$

Une somme de $1010$ nombres impairs (donc d'un nombre **pair** de termes impairs) est paire. Donc $S$ est paire au départ.

*Autre façon :* $1 + 2 + \cdots + 2019 = \dfrac{2019 \times 2020}{2} = 2019 \times 1010$, produit d'un nombre par $1010$, donc pair.

**Conclusion.**

La parité de $S$ ne change jamais, et $S$ est paire au départ. À la fin, il ne reste qu'un seul nombre au tableau : $S$ est donc égale à ce nombre, qui est par conséquent **pair**.

$$\boxed{\text{Aline gagne toujours, quelles que soient les décisions des deux joueuses.}}$$

**Remarque.** Le jeu n'en est donc pas vraiment un : l'issue est décidée avant le premier coup. En revanche, le nombre final n'est pas déterminé (on peut arriver à $0$, à $2$, à $1008$...), seule sa parité l'est.

## Going further

1. Avec les entiers de $1$ à $2020$, qui gagne ?
2. Pour les entiers de $1$ à $2019$, montrer qu'on peut effectivement obtenir $0$ comme nombre final, puis qu'on peut obtenir $2$.
