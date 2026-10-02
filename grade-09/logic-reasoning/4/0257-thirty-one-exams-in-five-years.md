---
id: "0257"
title: "Trente et un examens en cinq années"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [encadrement, entiers, disjonction-de-cas, suite-croissante]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, первое полугодие (Е. А. Асташов, Д. А. Удимов)"
  reference: "AU.pdf, листок 2, задача 7"
  url: "https://mmmf.msu.ru/for_schools/AU.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Pendant ses cinq années d'études supérieures, un étudiant a passé 31 examens en tout.
Chaque année, il a passé strictement plus d'examens que l'année précédente. En cinquième
année, il en a passé exactement trois fois plus qu'en première année.

Combien d'examens a-t-il passés en quatrième année ?

## Hints

1. Note $a_1, a_2, a_3, a_4, a_5$ les nombres d'examens des cinq années. Traduis en formules les trois renseignements de l'énoncé.
2. Les cinq nombres sont des entiers strictement croissants. Donc $a_2 \ge a_1 + 1$, $a_3 \ge a_1 + 2$, $a_4 \ge a_1 + 3$. Ajoute tout cela et utilise que le total vaut 31 pour majorer $a_1$.
3. Entre $a_1$ et $a_5 = 3a_1$ il doit y avoir la place pour trois entiers différents. Qu'est-ce que cela impose à $a_1$ ?
4. Il ne reste que deux valeurs possibles pour $a_1$. Élimine la plus petite en calculant le total qu'elle donne.
5. Dans le dernier cas, tu connais $a_1$ et $a_5$, donc tu connais $a_2 + a_3 + a_4$. Demande-toi quelle serait la plus grande valeur possible de cette somme si $a_4$ valait au plus 7.

## Solution

**L'idée : encadrer le nombre d'examens de la première année par les deux côtés, puis
examiner les rares cas qui restent.**

Notons $a_1, a_2, a_3, a_4, a_5$ les nombres d'examens passés en première, deuxième, ...,
cinquième année. Ce sont des entiers, et l'énoncé donne :
$$a_1 < a_2 < a_3 < a_4 < a_5, \qquad a_1 + a_2 + a_3 + a_4 + a_5 = 31, \qquad a_5 = 3a_1 .$$

**Étape 1. Minorer $a_1$ : il faut de la place entre $a_1$ et $a_5$.**

Entre $a_1$ et $a_5$ doivent tenir trois entiers différents $a_2 < a_3 < a_4$. Comme ce sont
des entiers, cela oblige $a_5$ à dépasser $a_1$ d'au moins 4 :
$$a_5 \ge a_1 + 4 .$$
Or $a_5 = 3a_1$, donc $3a_1 \ge a_1 + 4$, c'est-à-dire $2a_1 \ge 4$ et
$$a_1 \ge 2 .$$

**Étape 2. Majorer $a_1$ : le total ne fait que 31.**

Comme les nombres croissent strictement d'une année sur l'autre et qu'ils sont entiers,
$$a_2 \ge a_1 + 1, \qquad a_3 \ge a_1 + 2, \qquad a_4 \ge a_1 + 3 .$$
En ajoutant les cinq nombres, et en se souvenant que $a_5 = 3a_1$ :
$$31 = a_1 + a_2 + a_3 + a_4 + a_5 \ \ge\ a_1 + (a_1+1) + (a_1+2) + (a_1+3) + 3a_1 = 7a_1 + 6 .$$
Donc $7a_1 \le 25$, c'est-à-dire
$$a_1 \le 3 .$$

Il ne reste donc que deux possibilités : $a_1 = 2$ ou $a_1 = 3$.

**Étape 3. Éliminer le cas $a_1 = 2$.**

Si $a_1 = 2$, alors $a_5 = 6$. Les trois entiers $a_2 < a_3 < a_4$ doivent être strictement
compris entre 2 et 6 : ce sont forcément 3, 4 et 5. Le total vaut alors
$$2 + 3 + 4 + 5 + 6 = 20 \ne 31 .$$
Ce cas est impossible.

**Étape 4. Le cas $a_1 = 3$.**

Alors $a_5 = 9$, et
$$a_2 + a_3 + a_4 = 31 - 3 - 9 = 19 ,$$
avec $3 < a_2 < a_3 < a_4 < 9$, donc $a_2, a_3, a_4$ sont trois entiers différents choisis
parmi $4, 5, 6, 7, 8$.

Supposons que $a_4 \le 7$. Alors $a_3 \le 6$ et $a_2 \le 5$, donc
$$a_2 + a_3 + a_4 \le 5 + 6 + 7 = 18 < 19 .$$
C'est impossible. Donc $a_4 = 8$.

**Vérification.** Avec $a_4 = 8$, il reste $a_2 + a_3 = 19 - 8 = 11$ avec $3 < a_2 < a_3 < 8$.
Deux répartitions conviennent :
$$3,\ 4,\ 7,\ 8,\ 9 \qquad\text{et}\qquad 3,\ 5,\ 6,\ 8,\ 9 .$$
Les deux sont bien strictement croissantes, de somme 31, avec la cinquième année triple de
la première. Et dans les deux cas, la quatrième année compte 8 examens.

**Conclusion.** L'étudiant a passé **8 examens en quatrième année**. Fait remarquable : le
nombre d'examens des deuxième et troisième années n'est pas déterminé par l'énoncé, alors
que celui de la quatrième année l'est.

## Going further

1. Vérifie que les deux répartitions trouvées ci-dessus conviennent vraiment, et explique
   pourquoi cela n'empêche pas la réponse d'être unique.
2. Reprends l'exercice avec un total de 30 examens au lieu de 31. Le nombre d'examens de la
   quatrième année est-il encore déterminé ?
3. Quels totaux d'examens (à la place de 31) rendent le problème impossible ?
