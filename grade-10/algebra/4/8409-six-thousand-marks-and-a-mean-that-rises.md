---
id: "8409"
title: "Six mille copies et une moyenne qui monte"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [moyenne, mise-en-equation, inegalite, principe-des-tiroirs, somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de lycée, exercice 13"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Six mille élèves ont passé un examen. Chacun a obtenu une note entière comprise entre $0$ et $8$, bornes comprises.

Vincent décide ensuite de modifier les notes :

- toute note égale à $1$, $2$ ou $3$ devient $0$ ;
- toute note égale à $5$, $6$ ou $7$ devient $8$ ;
- les notes $0$, $4$ et $8$ ne changent pas.

Après cette modification, la moyenne des notes a augmenté de $\dfrac{1}{10}$.

Montrer qu'il existe deux notes $a$ et $b$ telles que, **avant** la modification, le nombre d'élèves ayant obtenu $a$ et le nombre d'élèves ayant obtenu $b$ diffèrent d'au moins $100$.

## Hints

1. Donne un nom à ce que tu veux compter : note $a_k$ le nombre d'élèves ayant obtenu la note $k$ avant la modification, pour $k$ allant de $0$ à $8$.
2. La moyenne, c'est le total des notes divisé par $6000$. Si la moyenne augmente de $\frac{1}{10}$, de combien augmente le total des notes ?
3. Écris le total avant et le total après, puis fais la différence. Beaucoup de termes se simplifient : il ne doit rester que six d'entre eux.
4. Tu obtiens une égalité de la forme $600 = (a_7 - a_1) + 2(a_6 - a_2) + 3(a_5 - a_3)$. Raisonne alors par l'absurde : si ces trois écarts étaient tous petits, combien vaudrait au plus le membre de droite ?

## Solution

**Étape 1. Nommer les effectifs.**

Pour $k$ allant de $0$ à $8$, notons $a_k$ le nombre d'élèves ayant obtenu la note $k$ avant la modification. On a donc

$$a_0 + a_1 + \cdots + a_8 = 6000.$$

Le total des notes avant la modification vaut

$$T_1 = 0 \, a_0 + 1 \, a_1 + 2 \, a_2 + 3 \, a_3 + 4 \, a_4 + 5 \, a_5 + 6 \, a_6 + 7 \, a_7 + 8 \, a_8.$$

**Étape 2. Le total après la modification.**

Après la modification :

- les élèves qui avaient $0$, $1$, $2$ ou $3$ ont maintenant $0$ ;
- ceux qui avaient $4$ ont toujours $4$ ;
- ceux qui avaient $5$, $6$, $7$ ou $8$ ont maintenant $8$.

Le total devient donc

$$T_2 = 4 \, a_4 + 8 \, (a_5 + a_6 + a_7 + a_8).$$

**Étape 3. Traduire « la moyenne augmente de $\frac{1}{10}$ ».**

La moyenne est le total divisé par $6000$. Si elle augmente de $\dfrac{1}{10}$, le total augmente de

$$6000 \times \frac{1}{10} = 600.$$

Autrement dit $T_2 = T_1 + 600$, c'est-à-dire

$$T_2 - T_1 = 600.$$

**Étape 4. Calculer cette différence.**

$$T_2 - T_1 = \big(4a_4 + 8a_5 + 8a_6 + 8a_7 + 8a_8\big) - \big(a_1 + 2a_2 + 3a_3 + 4a_4 + 5a_5 + 6a_6 + 7a_7 + 8a_8\big).$$

Les termes en $a_0$, $a_4$ et $a_8$ disparaissent, et il reste

$$T_2 - T_1 = 3a_5 + 2a_6 + a_7 - 3a_3 - 2a_2 - a_1.$$

En regroupant :

$$(a_7 - a_1) + 2(a_6 - a_2) + 3(a_5 - a_3) = 600. \qquad (\star)$$

**Étape 5. Conclure par l'absurde.**

Supposons que deux effectifs quelconques diffèrent toujours de moins de $100$. Comme les $a_k$ sont des entiers, cela signifie que

$$|a_7 - a_1| \leqslant 99, \qquad |a_6 - a_2| \leqslant 99, \qquad |a_5 - a_3| \leqslant 99.$$

Alors, en majorant chaque terme de $(\star)$ :

$$\big| (a_7 - a_1) + 2(a_6 - a_2) + 3(a_5 - a_3) \big| \leqslant 99 + 2 \times 99 + 3 \times 99 = 6 \times 99 = 594.$$

Mais $(\star)$ affirme que cette quantité vaut $600$, et $600 > 594$. C'est impossible.

**Conclusion.** Notre supposition est fausse : l'un au moins des trois écarts $|a_7 - a_1|$, $|a_6 - a_2|$, $|a_5 - a_3|$ vaut au moins $100$. Il existe donc bien deux notes $a$ et $b$ dont les effectifs diffèrent d'au moins $100$.

## Going further

Attention au piège de lecture : « la moyenne a augmenté de $\frac{1}{10}$ » veut dire qu'elle a gagné 0,1 point, et **non** qu'elle a augmenté de 10 %. C'est l'erreur la plus fréquente sur cet exercice.

Remarquons aussi que la démonstration désigne des paires très précises : les deux notes en question sont forcément $\{1, 7\}$, $\{2, 6\}$ ou $\{3, 5\}$, c'est-à-dire deux notes symétriques par rapport à $4$.
