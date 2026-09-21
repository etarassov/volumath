---
id: "7530"
title: "Soixante-dix employés et leurs langues"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [tiroirs, sous-ensembles, inclusion, coefficients-binomiaux, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 45 (une étoile ; solution p. 244, résolue par Florent Noisette et Marc Ganet)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Une entreprise internationale emploie $70$ personnes. Pour deux employés quelconques $X$ et $Y$, il existe toujours

- une langue parlée par $X$ et pas par $Y$, **et**
- une langue parlée par $Y$ et pas par $X$.

Quel est le nombre minimal de langues parlées en tout dans l'entreprise ?

## Hints

1. Reformule la condition en termes d'ensembles : si $L(X)$ désigne l'ensemble des langues parlées par $X$, que dit-elle sur $L(X)$ et $L(Y)$ ?
2. La condition signifie exactement qu'aucun des deux ensembles n'est inclus dans l'autre. En particulier ils ne sont jamais égaux.
3. Pour la construction, cherche à donner à chaque employé le même nombre de langues. Deux ensembles de même taille et différents ne peuvent pas s'inclure l'un l'autre. Combien y a-t-il de parties à $4$ éléments dans un ensemble à $8$ éléments ?
4. Pour l'impossibilité avec $7$ langues, code chaque employé par une suite de $7$ symboles $0$ ou $1$. Combien de codes y a-t-il ?
5. Regroupe ces codes par paires : deux codes dans la même paire s'ils ne diffèrent que par le dernier symbole. Combien de paires ? Et combien d'employés ?

## Solution

**Réponse : $8$ langues.**

**Étape 0. Reformulation.**

Notons $L(X)$ l'ensemble des langues parlées par l'employé $X$. La condition de l'énoncé dit exactement :

$$\text{pour } X \neq Y, \qquad L(X) \not\subseteq L(Y) \quad \text{et} \quad L(Y) \not\subseteq L(X).$$

Autrement dit : aucun ensemble de langues n'est inclus dans un autre. En particulier, deux employés n'ont jamais exactement les mêmes langues.

**Étape 1. Huit langues suffisent.**

Prenons $8$ langues et attribuons à chaque employé un ensemble de **exactement $4$** de ces langues, deux employés recevant toujours des ensembles différents. C'est possible, car le nombre de parties à $4$ éléments dans un ensemble à $8$ éléments vaut

$$\binom{8}{4} = \frac{8 \times 7 \times 6 \times 5}{4 \times 3 \times 2 \times 1} = 70,$$

soit exactement le nombre d'employés.

La condition est alors vérifiée : si $L(X) \subseteq L(Y)$ avec $|L(X)| = |L(Y)| = 4$, alors $L(X) = L(Y)$, ce qui est exclu. Donc aucune inclusion n'a lieu, ni dans un sens ni dans l'autre.

**Étape 2. Sept langues ne suffisent pas.**

Supposons par l'absurde qu'il n'y ait que $7$ langues, numérotées de $1$ à $7$.

Codons chaque employé $X$ par une suite de sept symboles $0$ ou $1$ : le $i$-ième symbole vaut $1$ si $X$ parle la langue $i$, et $0$ sinon. Il y a $2^7 = 128$ codes possibles.

Groupons ces $128$ codes en paires : deux codes forment une paire lorsqu'ils ont les **six premiers symboles identiques** et diffèrent par le septième. Chaque choix des six premiers symboles donne une paire, donc il y a

$$2^6 = 64 \text{ paires},$$

et elles recouvrent bien les $128$ codes.

Il y a $70$ employés et seulement $64$ paires. D'après le principe des tiroirs, deux employés $X$ et $Y$ ont leurs codes dans la même paire. Deux cas :

- leurs codes sont identiques : alors $L(X) = L(Y)$, ce qui contredit la condition ;
- leurs codes sont les deux éléments de la paire : ils coïncident partout sauf sur la langue $7$. Celui dont le septième symbole est $0$ a donc son ensemble de langues **inclus** dans celui de l'autre, ce qui contredit encore la condition.

Dans les deux cas c'est absurde : $7$ langues ne suffisent pas. Et le même raisonnement écarte tout nombre de langues inférieur à $7$, puisque avec moins de langues on aurait encore moins de codes disponibles.

**Conclusion.** Le nombre minimal de langues est $8$.

## Going further

Une famille d'ensembles dont aucun n'est inclus dans un autre s'appelle une **antichaîne**. Le théorème de Sperner dit que la plus grande antichaîne de parties d'un ensemble à $N$ éléments a exactement $\binom{N}{\lfloor N/2 \rfloor}$ éléments, et qu'elle est obtenue en prenant toutes les parties de taille $\lfloor N/2\rfloor$.

Pour $N = 7$ cela donne $\binom{7}{3} = 35$, ce qui est bien moins que $70$ ; pour $N = 8$ cela donne $\binom{8}{4} = 70$, pile ce qu'il faut. Le nombre $70$ de l'énoncé a donc été choisi pour tomber exactement sur le seuil.

L'argument des paires de l'étape 2 est une version économique du théorème de Sperner, qui suffit ici parce que $2^6 = 64 < 70$. Il ne suffirait plus pour $50$ employés, où il faudrait vraiment le théorème complet : $\binom73 = 35 < 50$, donc $7$ langues ne suffisent toujours pas, mais l'argument des paires, qui n'exclut que les effectifs supérieurs à $64$, ne le voit pas.
