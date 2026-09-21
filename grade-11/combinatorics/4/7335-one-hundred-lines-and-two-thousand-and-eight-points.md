---
id: "7335"
title: "Cent droites et 2008 points"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [droites, points-dintersection, denombrement, construction, directions]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2008"
  reference: "stage_ete_2008.pdf, « Les exercices de la seconde mi-temps », en TD, combinatoire, exercice 81 (la construction publiée n'utilise que 99 droites, voir la solution)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2008.pdf"
---

## Statement

Existe-t-il, dans le plan, $100$ droites deux à deux distinctes qui déterminent **exactement $2008$** points d'intersection distincts ?

## Hints

1. Commence par le maximum : si les $100$ droites sont en « position générale » (jamais deux parallèles, jamais trois concourantes), combien de points obtient-on ?
2. Tu en obtiens beaucoup trop. Pour en avoir moins, il y a deux leviers : rendre des droites parallèles, ou les faire passer par un même point.
3. Prends le premier levier seul. Range les droites par **direction** : disons $a_1$ droites dans la première direction, $a_2$ dans la deuxième, etc. Deux droites se coupent exactement quand elles sont dans deux directions différentes.
4. Si en plus jamais trois droites ne passent par le même point, le nombre de points vaut $\sum_{i < j} a_i a_j$. Relie cette somme à $(a_1 + \cdots + a_k)^2$ et à $a_1^2 + \cdots + a_k^2$.
5. Tu te ramènes à : trouver des entiers $\geqslant 1$ de somme $100$ et de somme des carrés égale à un nombre précis. Commence par une très grosse direction.
6. Reste à vérifier qu'on peut vraiment placer les droites sans créer de point triple par accident.

## Solution

La réponse est **oui**. Construisons une telle famille.

### Étape 1 : compter les points quand on ne fait que des parallèles

Rangeons les $100$ droites par direction. Notons $k$ le nombre de directions utilisées et $a_1, a_2, \ldots, a_k$ le nombre de droites de chaque direction, de sorte que
$$a_1 + a_2 + \cdots + a_k = 100 .$$

Deux droites de la même direction sont parallèles et distinctes : elles ne se coupent pas. Deux droites de directions différentes se coupent en exactement un point.

Supposons de plus que **jamais trois droites ne passent par un même point**. Alors deux points d'intersection différents proviennent de deux paires de droites différentes, et
$$\text{nombre de points} = \sum_{i < j} a_i a_j .$$

Cette somme se calcule avec l'identité du carré d'une somme :
$$\left(\sum_{i} a_i\right)^{2} = \sum_i a_i^2 + 2 \sum_{i<j} a_i a_j ,$$
donc
$$\sum_{i<j} a_i a_j = \frac{100^2 - \left(a_1^2 + \cdots + a_k^2\right)}{2} = \frac{10\,000 - \sum_i a_i^2}{2} .$$

### Étape 2 : ce qu'il faut trouver

On veut que ce nombre vaille $2008$, c'est-à-dire
$$10\,000 - \sum_i a_i^2 = 4016 , \qquad \text{soit} \qquad \sum_i a_i^2 = 5984 .$$

**Le problème est devenu purement arithmétique :** trouver des entiers $a_i \geqslant 1$ de somme $100$ et de somme des carrés $5984$.

Il faut une direction très fournie, car $5984$ est grand. Essayons $a_1 = 77$ :
$$77^2 = 5929, \qquad 5984 - 5929 = 55 ,$$
et il reste $100 - 77 = 23$ droites à répartir, avec une somme des carrés égale à $55$.

Prenons $a_2 = 6$ et $a_3 = 2$ :
$$6^2 + 2^2 = 36 + 4 = 40 , \qquad 55 - 40 = 15 ,$$
et il reste $23 - 6 - 2 = 15$ droites. Quinze droites de carrés valant $1$ chacune donnent bien $15$ : on les met donc **chacune dans sa propre direction**.

Récapitulons les $18$ directions :

| direction | $D_1$ | $D_2$ | $D_3$ | $D_4, \ldots, D_{18}$ |
|---|---|---|---|---|
| nombre de droites | $77$ | $6$ | $2$ | $1$ chacune |

Vérification :
$$77 + 6 + 2 + 15 \times 1 = 100 \quad \checkmark$$
$$77^2 + 6^2 + 2^2 + 15 \times 1^2 = 5929 + 36 + 4 + 15 = 5984 \quad \checkmark$$

Le nombre de points vaut donc
$$\frac{10\,000 - 5984}{2} = \frac{4016}{2} = 2008 . \quad \checkmark$$

### Étape 3 : on place vraiment les droites

Il reste à s'assurer qu'on peut choisir ces $100$ droites sans jamais faire passer trois d'entre elles par un même point.

Choisissons $18$ directions deux à deux différentes, puis plaçons les droites **une par une**, dans l'ordre. Au moment de poser une nouvelle droite $D$, les droites déjà posées ont créé un nombre **fini** de points d'intersection, disons $P_1, \ldots, P_N$.

Dans la direction imposée à $D$, il existe une infinité de droites possibles (toutes les parallèles à cette direction). Or chaque point $P_j$ n'appartient qu'à **une seule** d'entre elles. Il y a donc au plus $N$ droites interdites, et une infinité de choix : on peut toujours en prendre une qui évite tous les $P_j$.

En procédant ainsi jusqu'au bout, aucune droite ne passe par un point déjà construit, donc aucun point n'est traversé par trois droites.

### Conclusion

$$\boxed{\text{Oui : } 77 + 6 + 2 + 15 \text{ droites, en } 18 \text{ directions, donnent exactement } 2008 \text{ points.}}$$

*(La solution imprimée dans le polycopié propose une autre construction, à base de quadrillage et de diagonales, mais elle ne comporte que $99$ droites ; la construction ci-dessus en a bien $100$.)*

## Going further

1. Trouve une **autre** répartition qui marche. *(Il y en a : $77 + 5 + 4 + 14$ et $76 + 14 + 2 + 8$ conviennent aussi. Vérifie-le.)*
2. Avec $100$ droites et cette méthode, quel est le plus petit nombre de points qu'on puisse obtenir sans que deux droites soient confondues ? Et le plus grand ?
3. Le nombre $2008$ est-il atteignable avec $99$ droites ? Il faut alors $\sum a_i^2 = 99^2 - 4016 = 5785$. Cherche.
4. Avec $n$ droites, on ne peut jamais obtenir exactement $2$ points d'intersection, ni $3$, ni aucun nombre entre $2$ et $n - 2$. C'est un résultat difficile, relié au théorème de Sylvester–Gallai. Convaincs-toi au moins du cas $n = 4$ à la main.
