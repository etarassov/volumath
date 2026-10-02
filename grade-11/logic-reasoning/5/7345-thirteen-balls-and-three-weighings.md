---
id: "7345"
title: "Treize boules et trois pesées"
grade: 11
theme: logic-reasoning
difficulty: 5
duration_min: 60
tags: [pesees, balance, encadrement, strategie, verification]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint-Malo 2007"
  reference: "stage_ete_2007.pdf, « Les exercices du groupe C », en TD, exercice 39 ; repris dans stage_ete_2008.pdf, seconde mi-temps, exercice 15"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

On a $13$ boules d'aspect identique, dont les masses sont $1$ kg, $2$ kg, …, $13$ kg. À l'usine, on a collé sur chaque boule une étiquette portant sa masse : les étiquettes vont donc elles aussi de $1$ à $13$, une par boule.

On veut **vérifier que toutes les étiquettes ont été collées correctement**, c'est-à-dire qu'aucune paire n'a été échangée.

Pour cela on dispose d'une balance à deux plateaux. Elle n'indique aucune masse : elle dit seulement si le plateau gauche pèse **moins**, **autant** ou **plus** que le plateau droit.

**Montrer qu'il suffit de trois pesées.**

## Hints

1. Il ne s'agit pas de retrouver les masses, seulement de **vérifier**. Il suffit donc de trouver trois pesées telles que : si tout est correct, les trois sont en équilibre ; et si quelque chose est faux, au moins une penche.
2. Pour dire « boule portant l'étiquette $k$ », disons simplement « boule $k$ ». Attention : on ne sait pas encore si la boule $k$ pèse $k$ kg.
3. Le mécanisme à exploiter : si l'on met à gauche des boules **censées être les plus légères** et à droite des boules **censées être les plus lourdes**, avec des totaux annoncés égaux, alors le plateau gauche ne peut que peser au moins ce total, et le droit au plus ce total.
4. Première pesée : $1+2+\cdots+8 = 36$ et $11+12+13 = 36$. Que dit l'équilibre ?
5. Une fois les boules réparties en trois paquets certains, recommence à l'intérieur : $1+2+3+9 = 15 = 7+8$.
6. Troisième pesée : prends dans chaque paquet la boule censée être la plus légère d'un côté, la plus lourde de l'autre, et égalise les totaux annoncés.

## Solution

Pour alléger, appelons **boule $k$** la boule portant l'étiquette $k$. Ce qu'on veut vérifier, c'est que la boule $k$ pèse bien $k$ kg pour tout $k$.

L'outil est toujours le même :

> **Observation.** Si l'on prend $m$ boules quelconques, leur masse totale est au moins $1 + 2 + \cdots + m$, et cette valeur n'est atteinte que si ce sont exactement les $m$ boules les plus légères. De même, la masse totale de $m$ boules est au plus $13 + 12 + \cdots + (14-m)$, avec égalité seulement pour les $m$ plus lourdes.

C'est immédiat : les masses sont $13$ nombres distincts pris dans $\{1, \ldots, 13\}$.

### Première pesée

$$\text{gauche : } 1, 2, 3, 4, 5, 6, 7, 8 \qquad \text{contre} \qquad \text{droite : } 11, 12, 13 .$$

Les totaux annoncés sont $1+2+\cdots+8 = 36$ et $11+12+13 = 36$.

Par l'observation, la masse réelle du plateau gauche est $\geqslant 36$, et celle du plateau droit est $\leqslant 36$. Si la balance est en **équilibre**, les deux masses sont égales, donc toutes les deux valent exactement $36$, et les deux cas d'égalité sont atteints :

- les boules $1$ à $8$ sont **exactement** les huit plus légères, donc pèsent $1, \ldots, 8$ dans un certain ordre ;
- les boules $11, 12, 13$ sont **exactement** les trois plus lourdes, donc pèsent $11, 12, 13$ dans un certain ordre ;
- par élimination, les boules $9$ et $10$ pèsent $9$ et $10$ dans un certain ordre.

Nous connaissons donc de façon certaine trois paquets :
$$\underbrace{1, \ldots, 8}_{\text{masses } 1 \text{ à } 8} \quad \underbrace{9, 10}_{\text{masses } 9, 10} \quad \underbrace{11, 12, 13}_{\text{masses } 11 \text{ à } 13} .$$

Si la balance **penche**, une étiquette est fausse, et la vérification s'arrête là.

### Deuxième pesée

$$\text{gauche : } 1, 2, 3, 9 \qquad \text{contre} \qquad \text{droite : } 7, 8 .$$

Totaux annoncés : $1+2+3+9 = 15$ et $7+8 = 15$.

Reprenons le même raisonnement, **à l'intérieur des paquets déjà certains**.

- À gauche : trois boules du premier paquet (masses dans $\{1, \ldots, 8\}$), donc de masse totale $\geqslant 1+2+3 = 6$ ; plus la boule $9$, de masse $9$ ou $10$, donc $\geqslant 9$. Total gauche $\geqslant 15$.
- À droite : deux boules du premier paquet, de masse totale $\leqslant 7+8 = 15$.

L'équilibre force donc les deux plateaux à peser exactement $15$, et chaque égalité à être atteinte :

- les boules $1, 2, 3$ sont les trois plus légères du premier paquet : elles pèsent $1, 2, 3$ dans un certain ordre ;
- la boule $9$ pèse $9$ kg, donc la boule $10$ pèse $10$ kg : **ces deux-là sont vérifiées** ;
- les boules $7, 8$ sont les deux plus lourdes du premier paquet : elles pèsent $7, 8$ dans un certain ordre ;
- il reste les boules $4, 5, 6$, qui pèsent donc $4, 5, 6$ dans un certain ordre.

Les paquets certains sont maintenant :
$$\{1,2,3\}, \quad \{4,5,6\}, \quad \{7,8\}, \quad \{9\}, \quad \{10\}, \quad \{11,12,13\} .$$

### Troisième pesée

$$\text{gauche : } 1, 4, 7, 9, 11 \qquad \text{contre} \qquad \text{droite : } 3, 6, 10, 13 .$$

Totaux annoncés : $1+4+7+9+11 = 32$ et $3+6+10+13 = 32$.

À gauche, on a pris dans chaque paquet la boule censée y être **la plus légère** ; à droite, celle censée être **la plus lourde**. Donc :

- masse gauche $\geqslant 1 + 4 + 7 + 9 + 11 = 32$ ;
- masse droite $\leqslant 3 + 6 + 10 + 13 = 32$.

L'équilibre force encore les deux égalités, ce qui donne d'un coup :
$$\text{boule } 1 \to 1 \text{ kg}, \quad 4 \to 4, \quad 7 \to 7, \quad 11 \to 11, \quad 3 \to 3, \quad 6 \to 6, \quad 13 \to 13 .$$

Et le reste suit par élimination à l'intérieur des paquets :

- dans $\{1,2,3\}$, les boules $1$ et $3$ sont correctes, donc la boule $2$ aussi ;
- dans $\{4,5,6\}$, les boules $4$ et $6$ sont correctes, donc la boule $5$ aussi ;
- dans $\{7,8\}$, la boule $7$ est correcte, donc la boule $8$ aussi ;
- dans $\{11,12,13\}$, les boules $11$ et $13$ sont correctes, donc la boule $12$ aussi ;
- les boules $9$ et $10$ étaient déjà vérifiées.

### Conclusion

$$\boxed{\text{Si les trois pesées sont en équilibre, toutes les étiquettes sont correctes ; sinon, l'une au moins est fausse.}}$$

Trois pesées suffisent donc pour vérifier les treize étiquettes.

### Ce qui fait marcher la méthode

À aucun moment on ne cherche à peser quoi que ce soit. À chaque pesée, on organise un affrontement entre **un minimum possible et un maximum possible qui coïncident**. L'équilibre est alors le seul résultat compatible avec les deux bornes, et il force simultanément tous les cas d'égalité — c'est-à-dire beaucoup d'informations d'un seul coup.

## Going further

1. Où intervient précisément l'hypothèse que les masses sont exactement $1, 2, \ldots, 13$, et pas seulement treize masses distinctes ?
2. Refais la deuxième pesée avec $1, 2, 3, 10$ contre $7, 8$ : le raisonnement tient-il encore ?
3. Dans chacune des trois pesées, les deux totaux **annoncés** sont égaux ($36$ et $36$, $15$ et $15$, $32$ et $32$). Explique pourquoi c'est indispensable.
4. La méthode dit si une étiquette est fausse, mais pas laquelle. Pourrait-on, avec trois pesées, **localiser** l'erreur ? Compare le nombre de résultats possibles de trois pesées, chacune à trois issues, au nombre de façons de permuter treize étiquettes.
