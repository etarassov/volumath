---
id: "8411"
title: "Le plus petit nombre de réels possible"
grade: 11
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalite, somme-de-carres, intervalle, minimum, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de lycée, exercice 15 (la solution imprimée écrit 2021 au lieu de 2020 dans la première majoration, simple coquille)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Déterminer le plus petit entier $n$ pour lequel il existe $n$ nombres réels $x_1, x_2, \ldots, x_n$, tous strictement compris entre $-1$ et $1$, vérifiant à la fois

$$x_1 + x_2 + \cdots + x_n = 0 \qquad \text{et} \qquad x_1^2 + x_2^2 + \cdots + x_n^2 = 2020.$$

## Hints

1. Comme pour tout problème de minimum, il y a deux choses à faire, et les deux sont indispensables : donner un exemple qui marche pour une certaine valeur de $n$, et montrer qu'aucune valeur plus petite ne marche.
2. Commence par l'exemple, c'est le plus facile. Si tu prends les réels deux par deux, un nombre et son opposé, la première condition est automatiquement vérifiée. Que devient la seconde ?
3. Pour la borne, une première idée très simple : chaque carré est strictement plus petit que $1$. Que donne-t-elle ?
4. Cette première borne donne $n \geqslant 2021$, mais la vraie réponse est plus grande. Sépare les réels négatifs des réels positifs, et compte-les.
5. Deux majorations à ne pas confondre : si $-1 < u < 0$ alors $u^2 < 1$, mais si $0 < u < 1$ alors $u^2 < u$, ce qui est bien meilleur. Applique chacune au bon groupe, puis sers-toi de ce que la somme totale est nulle.
6. Une fois obtenu « il y a au moins $1011$ réels strictement négatifs », remarque que la famille des opposés vérifie exactement les mêmes hypothèses.

## Solution

La réponse est $n = 2022$.

### Première partie : $2022$ réels suffisent

Posons

$$x = \sqrt{\frac{1010}{1011}}.$$

Comme $0 < \dfrac{1010}{1011} < 1$, on a $0 < x < 1$, donc $x$ et $-x$ appartiennent bien à l'intervalle $]-1, 1[$ (bornes exclues).

Prenons $1011$ réels égaux à $x$ et $1011$ réels égaux à $-x$, soit $2022$ réels en tout.

- Leur somme vaut $1011\,x + 1011\,(-x) = 0$.
- La somme de leurs carrés vaut
$$2022 \, x^2 = 2022 \times \frac{1010}{1011} = 2 \times 1010 = 2020.$$

Les deux conditions sont vérifiées : $n = 2022$ convient.

### Deuxième partie : aucun entier plus petit ne convient

**Réduction au cas sans zéro.** Supposons que $n$ convienne, et supprimons de la liste tous les réels nuls. Cela ne change ni la somme, ni la somme des carrés. Il reste $m$ réels, avec $m \leqslant n$, tous non nuls, vérifiant encore les deux conditions. Il y en a au moins un, puisque la somme des carrés vaut $2020 \neq 0$.

Il suffit donc de montrer que $m \geqslant 2022$ : on aura alors $n \geqslant m \geqslant 2022$.

**Mise en place.** Renumérotons ces $m$ réels de façon que

$$-1 < x_1, \ldots, x_k < 0 \qquad \text{et} \qquad 0 < x_{k+1}, \ldots, x_m < 1.$$

Comme la somme des $m$ réels est nulle et qu'aucun n'est nul, il y a au moins un réel strictement négatif et au moins un réel strictement positif : donc $1 \leqslant k \leqslant m-1$.

Notons

$$S = x_{k+1} + x_{k+2} + \cdots + x_m > 0$$

la somme des réels positifs.

**Première majoration : $S < k$.** La somme totale est nulle, donc

$$x_1 + x_2 + \cdots + x_k = -S.$$

Or chacun des $k$ réels $x_1, \ldots, x_k$ est strictement plus grand que $-1$, donc leur somme est strictement plus grande que $-k$ :

$$-S > -k, \qquad \text{c'est-à-dire} \qquad S < k.$$

**Deuxième majoration : la somme des carrés.** Traitons les deux groupes séparément.

- Pour $i \leqslant k$, on a $-1 < x_i < 0$, donc $x_i^2 < 1$. Ces $k$ termes contribuent pour moins de $k$.
- Pour $i \geqslant k+1$, on a $0 < x_i < 1$. En multipliant cette inégalité par $x_i > 0$ on obtient $x_i^2 < x_i$. Ces termes contribuent donc pour moins de $S$.

En additionnant :

$$2020 = x_1^2 + \cdots + x_m^2 < k + S.$$

**On combine.** Avec $S < k$, il vient

$$2020 < k + S < k + k = 2k,$$

donc $k > 1010$, c'est-à-dire $k \geqslant 1011$ puisque $k$ est un entier.

**Autrement dit :** toute famille de réels non nuls de $]-1,1[$ vérifiant les deux conditions comporte au moins $1011$ termes strictement négatifs.

**On retourne la famille.** Les réels $-x_1, -x_2, \ldots, -x_m$ appartiennent eux aussi à $]-1,1[$, sont non nuls, ont pour somme $0$ et pour somme des carrés $2020$ : ils vérifient exactement les mêmes hypothèses. Or leurs termes strictement négatifs sont exactement les opposés des $x_i$ strictement positifs, et il y en a $m - k$. Le paragraphe précédent donne donc

$$m - k \geqslant 1011.$$

**Conclusion.**

$$m = k + (m-k) \geqslant 1011 + 1011 = 2022.$$

### Réponse

Les deux parties se rejoignent : le plus petit entier cherché est $\boxed{n = 2022}$.

## Going further

Une remarque sur la qualité des majorations. Pour un réel $u$ de $]-1,1[$ on a toujours $u^2 < 1$, et c'est tout ce qu'on peut dire en général. Mais quand $u$ est en plus **positif**, on dispose de bien mieux : $u^2 < u$. Toute la difficulté de l'exercice tient à ce déséquilibre entre les deux groupes, et c'est lui qui fait passer la borne de $2021$ à $2022$.

Remarquons enfin que la construction n'est pas unique : n'importe quelle famille de $1011$ réels positifs et $1011$ réels négatifs, symétrique deux à deux et de somme des carrés $2020$, convient également.
