---
id: "0208"
title: "Quel chiffre apparaît le plus souvent ?"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [chiffres, paires, denombrement, echanges]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (7 класс, II полугодие), сост. Е. А. Асташов, Я. А. Верёвкин, А. А. Дейч, С. М. Саулин, А. В. Феклина, МГУ, 2017"
  reference: "Ast2017b.pdf, листок 26, задача 3 (p. 68-69)"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

**a)** On considère tous les **codes** à six chiffres, de $000000$ à $999999$. Un code peut commencer par des zéros, comme $000285$.

Y a-t-il plus de codes contenant au moins un $2$, ou plus de codes contenant au moins un $5$ ?

**b)** On considère maintenant tous les **nombres** à six chiffres, c'est-à-dire de $100000$ à $999999$. Cette fois, le premier chiffre n'est jamais un $0$.

Y a-t-il plus de nombres contenant au moins un $7$, ou plus de nombres contenant au moins un $0$ ?

## Hints

1. Question a) : dans un code, remplace chaque $2$ par un $5$ et chaque $5$ par un $2$. Par exemple $502025$ devient $205052$. Qu'obtient-on ?
2. Question a) : si on refait cet échange une deuxième fois, on retombe sur le code de départ. Que dit cela sur les paires ainsi formées ?
3. Question b) : essaie la même astuce en échangeant les chiffres $0$ et $7$. Applique-la à $712345$. Où est-ce que ça coince ?
4. Question b) : retourne le problème. Au lieu de comparer les nombres qui **contiennent** un $7$ et ceux qui contiennent un $0$, compare ceux qui n'en contiennent **aucun**.
5. Question b) : un nombre sans aucun $7$ devient, après échange, un nombre sans aucun $0$, et ça marche à tous les coups. Et dans l'autre sens ? Regarde $711111$.

## Solution

**a) Les codes qui contiennent un $2$ et ceux qui contiennent un $5$.**

Transformons chaque code en échangeant les chiffres $2$ et $5$ : chaque $2$ devient un $5$, chaque $5$ devient un $2$, les autres chiffres ne bougent pas. Par exemple

$$502025 \longleftrightarrow 205052.$$

Cette transformation donne toujours un code à six chiffres, car tous les assemblages de six chiffres sont autorisés ici, même ceux qui commencent par $0$. Et si on l'applique deux fois de suite, on revient au code de départ : elle range donc tous les codes deux par deux.

Dans chaque paire, un code contient un $2$ exactement lorsque son partenaire contient un $5$. À chaque code contenant au moins un $2$ correspond donc exactement un code contenant au moins un $5$, et réciproquement.

**Il y en a donc autant des deux sortes.**

**b) Les nombres qui contiennent un $7$ et ceux qui contiennent un $0$.**

*Pourquoi la même astuce ne marche pas directement.* Échangeons $0$ et $7$ dans le nombre $712345$ : on obtient $012345$, qui n'est pas un nombre à six chiffres. L'échange abîme les nombres qui commencent par $7$. Il faut donc s'y prendre autrement.

*L'astuce : regarder les nombres qui ne contiennent pas le chiffre.* Comparons plutôt la famille $A$ des nombres **sans aucun $7$** et la famille $B$ des nombres **sans aucun $0$**.

Partons d'un nombre de $A$ et échangeons $0$ et $7$.

- Tous ses $0$ deviennent des $7$, et il n'avait aucun $7$ à transformer en $0$ : le résultat ne contient aucun $0$.
- Son premier chiffre n'était ni $0$ (c'est un nombre à six chiffres) ni $7$ (il est dans $A$), donc il ne change pas et le résultat est bien un nombre à six chiffres.

Chaque nombre de $A$ a donc un partenaire dans $B$, et deux nombres différents donnent deux partenaires différents.

*Mais certains nombres de $B$ n'ont pas de partenaire.* Prenons $711111$ : il ne contient aucun $0$, il est bien dans $B$. Pour retrouver son partenaire, il faudrait lui appliquer l'échange, ce qui donne $011111$ : ce n'est pas un nombre à six chiffres. Aucun nombre de $A$ ne donne $711111$. Il en va de même pour tous les nombres de $B$ qui commencent par $7$, et il y en a beaucoup.

La famille $B$ est donc **strictement plus grande** que la famille $A$ :

$$\text{nombres sans } 0 \;>\; \text{nombres sans } 7.$$

*Conclusion par les contraires.* Les nombres à six chiffres se répartissent en deux paquets de deux façons :

$$\text{tous} = (\text{avec un } 7) + (\text{sans } 7) = (\text{avec un } 0) + (\text{sans } 0).$$

Comme le total est le même des deux côtés et qu'il y a **moins** de nombres sans $7$ que de nombres sans $0$, il y a **plus** de nombres avec un $7$ que de nombres avec un $0$.

**Une deuxième façon de voir le b), en comptant.**

Un nombre sans aucun $0$ : chacun de ses six chiffres est choisi parmi $1, 2, \ldots, 9$, soit $9$ possibilités à chaque fois.

Un nombre sans aucun $7$ : le premier chiffre est choisi parmi $1, \ldots, 9$ privé de $7$, soit $8$ possibilités seulement, et chacun des cinq autres parmi $0, \ldots, 9$ privé de $7$, soit $9$ possibilités.

Le premier chiffre offre $9$ choix dans un cas et $8$ dans l'autre, le reste est identique : il y a donc moins de nombres sans $7$, et on retrouve la même conclusion.

**Conclusion.**

a) Il y a autant de codes contenant un $2$ que de codes contenant un $5$.
b) Il y a strictement plus de nombres à six chiffres contenant un $7$ que de nombres contenant un $0$.

## Going further

1. Combien y a-t-il de nombres à six chiffres sans aucun $0$ ? Sans aucun $7$ ? Calcule ensuite exactement de combien la famille des nombres « avec un $7$ » dépasse celle des nombres « avec un $0$ ».
2. Dans la question b), remplace le $7$ par un $1$. La réponse change-t-elle ?
3. Y a-t-il plus de nombres à six chiffres contenant un $7$ ou contenant un $8$ ?
