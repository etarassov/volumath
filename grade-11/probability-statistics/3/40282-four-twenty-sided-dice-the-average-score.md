---
id: "40282"
title: "Quatre dés à vingt faces : la probabilité de marquer et le score moyen"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 40
tags: [probabilite, des, denombrement, evenement-contraire, variable-aleatoire, esperance, equiprobabilite]
adapted_from: null
see_also: ["40283"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2009, mathématiques, série S"
  reference: "cg-2009-s-sujet.pdf, exercice II « Jouons aux dés », questions 1 à 4. Le modèle (dés distingués, 20⁴ résultats équiprobables) et la règle sur l'espérance d'une somme sont précisés dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2009.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2009-s-sujet.pdf"
---

## Statement

Je joue avec $4$ dés à $20$ faces. Chacun de ces dés a la forme d'un icosaèdre et ses faces sont numérotées de $1$ à $20$. Quand on le lance, chaque face apparaît sur le dessus avec la même probabilité $\frac{1}{20}$. On distingue les quatre dés (premier, deuxième, troisième, quatrième) : les $20^4$ résultats possibles d'un lancer sont équiprobables.

Quand, parmi les quatre dés, un nombre apparaît au moins deux fois, je marque le nombre de points correspondant à ce nombre. Ainsi :

- avec la combinaison 3 - 4 - 12 - 16, je ne marque rien ;
- avec la combinaison 2 - 8 - 11 - 11, je marque 11 points ;
- avec la combinaison 4 - 9 - 9 - 9, je marque 9 points ;
- avec la combinaison 7 - 7 - 14 - 14, je marque 21 points ;
- avec la combinaison 2 - 2 - 2 - 2, je marque 2 points.

On note $G$ le nombre de points marqués.

1. Quelle est la probabilité que je ne marque rien ?
2. Soit $a$ un entier entre $1$ et $20$. Pour $k = 0, 1, 2, 3, 4$, déterminer la probabilité que exactement $k$ des quatre dés montrent le nombre $a$.
3. Pour tout $a$ entre $1$ et $20$, on note $X_a$ la variable aléatoire qui vaut $1$ si au moins deux des quatre dés montrent $a$, et $0$ sinon.

   a) Donner la loi de $X_a$.

   b) Exprimer le gain $G$ à l'aide des variables $X_1, X_2, \ldots, X_{20}$.

   c) Combien de points puis-je espérer marquer en moyenne ? On pourra utiliser le fait que l'espérance d'une somme de variables aléatoires est la somme de leurs espérances.

4. Quelle est la probabilité que je marque exactement $8$ points ?

## Hints

1. **Question 1.** Ne rien marquer, c'est obtenir quatre nombres tous différents. Combien de choix pour le premier dé, puis pour le deuxième, et ainsi de suite ?
2. **Question 2.** Pour $k = 2$ : de combien de façons peut-on choisir les deux dés qui montrent $a$ ? Que peuvent montrer les deux autres ?
3. **Question 3.** b) Chaque nombre $a$ rapporte $a$ points ou rien. De quoi cela dépend-il ?
4. **Question 4.** Des dés qui montrent $8$ ne sont pas la seule façon de marquer $8$ points.
5. **Question 4.** On peut aussi marquer $8$ points avec deux paires de nombres différents dont la somme fait $8$. La paire de $4$ ne marche pas : pourquoi ?

## Solution

Il y a $20^4 = 160\,000$ résultats équiprobables. Une probabilité s'obtient en divisant le nombre de résultats favorables par $160\,000$.

**1.** Je ne marque rien exactement quand les quatre dés montrent quatre nombres différents. Il y a $20$ choix pour le premier dé, puis $19$ pour le deuxième (tout sauf le premier nombre), $18$ pour le troisième et $17$ pour le quatrième, soit $20 \times 19 \times 18 \times 17 = 116\,280$ résultats.

**Conclusion :** la probabilité de ne rien marquer est $\frac{116\,280}{160\,000} = \frac{2907}{4000} \approx \text{0,727}$.

**2.** Pour obtenir exactement $k$ fois le nombre $a$, on choisit d'abord les $k$ dés qui montrent $a$, puis on choisit pour chacun des $4 - k$ autres dés un nombre différent de $a$ ($19$ choix chacun).

Le nombre de façons de choisir les $k$ dés parmi les quatre vaut $1$ pour $k = 0$, $4$ pour $k = 1$, $6$ pour $k = 2$ (les paires de dés 12, 13, 14, 23, 24, 34), $4$ pour $k = 3$ (on choisit le dé qui ne montre pas $a$) et $1$ pour $k = 4$. On obtient :

| $k$ | nombre de résultats | probabilité |
|---|---|---|
| $0$ | $19^4 = 130\,321$ | $\frac{130\,321}{160\,000} \approx \text{0,8145}$ |
| $1$ | $4 \times 19^3 = 27\,436$ | $\frac{27\,436}{160\,000} \approx \text{0,1715}$ |
| $2$ | $6 \times 19^2 = 2166$ | $\frac{2166}{160\,000} \approx \text{0,0135}$ |
| $3$ | $4 \times 19 = 76$ | $\frac{76}{160\,000} \approx \text{0,0005}$ |
| $4$ | $1$ | $\frac{1}{160\,000}$ |

On vérifie que le total des résultats vaut bien $130\,321 + 27\,436 + 2166 + 76 + 1 = 160\,000$.

**3.** a) $X_a$ vaut $1$ quand $a$ apparaît $2$, $3$ ou $4$ fois. D'après la question 2,
$$P(X_a = 1) = \frac{2166 + 76 + 1}{160\,000} = \frac{2243}{160\,000}, \qquad P(X_a = 0) = \frac{157\,757}{160\,000}.$$
C'est la même loi pour tous les $a$.

b) Le nombre $a$ rapporte $a$ points s'il apparaît au moins deux fois, c'est-à-dire si $X_a = 1$, et rien sinon. Il rapporte donc $a X_a$ points, et
$$G = 1 \times X_1 + 2 \times X_2 + \cdots + 20 \times X_{20}.$$
On le vérifie sur les exemples : pour 7 - 7 - 14 - 14, seuls $X_7$ et $X_{14}$ valent $1$, et $G = 7 + 14 = 21$ ; pour 2 - 2 - 2 - 2, seul $X_2$ vaut $1$ et $G = 2$.

c) L'espérance de $X_a$ est $E(X_a) = 1 \times \frac{2243}{160\,000} + 0 = \frac{2243}{160\,000}$.

L'espérance d'une somme est la somme des espérances. Ici on peut le voir directement : l'espérance de $G$ est la moyenne de $G$ sur les $160\,000$ résultats équiprobables, et la moyenne d'une somme est la somme des moyennes. Donc
$$E(G) = \sum_{a=1}^{20} a\,E(X_a) = (1 + 2 + \cdots + 20) \times \frac{2243}{160\,000} = \frac{210 \times 2243}{160\,000} = \frac{47\,103}{16\,000}.$$

**Conclusion :** je peux espérer marquer en moyenne $\frac{47\,103}{16\,000} \approx \text{2,94}$ points par lancer.

**4.** Je marque exactement $8$ points dans deux situations qui ne se recouvrent pas.

*Premier cas : le $8$ apparaît au moins deux fois, et aucun autre nombre n'apparaît deux fois.*

- Le $8$ apparaît exactement deux fois : $6$ choix pour les deux dés qui montrent $8$, puis les deux autres dés montrent deux nombres différents entre eux et différents de $8$ : $19 \times 18 = 342$ choix. Cela fait $6 \times 342 = 2052$ résultats. (Si les deux autres dés montraient le même nombre, je marquerais plus de $8$ points.)
- Le $8$ apparaît exactement trois fois : $4 \times 19 = 76$ résultats.
- Le $8$ apparaît quatre fois : $1$ résultat.

*Second cas : le $8$ n'apparaît pas deux fois, et les $8$ points viennent de deux nombres différents qui apparaissent chacun deux fois.* Avec quatre dés, cela veut dire deux paires $u, u, v, v$ avec $u + v = 8$ et $u \neq v$ : les paires $\{1, 7\}$, $\{2, 6\}$ et $\{3, 5\}$. La paire $\{4, 4\}$ ne convient pas : quatre $4$ ne rapportent que $4$ points. Pour chaque paire, il y a $6$ façons de placer les deux $u$ parmi les quatre dés, et les deux $v$ vont sur les dés restants. Cela fait $3 \times 6 = 18$ résultats.

Au total, $2052 + 76 + 1 + 18 = 2147$ résultats.

**Conclusion :** la probabilité de marquer exactement $8$ points est $\frac{2147}{160\,000} \approx \text{0,0134}$.

**Bilan.** Près de trois fois sur quatre, on ne marque rien. Écrire le score comme une somme $G = \sum a X_a$ de variables qui ne valent que $0$ ou $1$ permet de calculer son espérance sans connaître sa loi : environ $\text{2,94}$ points par lancer.

## Going further

- Calculer de la même façon la probabilité de marquer exactement $20$ points. Pourquoi est-elle plus grande que celle de marquer $8$ points ? Parmi les scores non nuls, lesquels sont les plus probables ? *(Réponse : $P(G = 20) = \frac{2183}{160000}$ contre $P(G = 8) = \frac{2147}{160000}$, car $20$ s'obtient aussi avec deux paires de neuf façons, de $1 + 19$ à $9 + 11$, contre trois pour $8$. Les scores non nuls les plus probables sont $19$ et $20$, à égalité.)*
- Dans la suite du sujet, on avait le droit de relancer certains dés pour améliorer son score : voir l'exercice 40283.
