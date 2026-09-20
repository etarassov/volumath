---
id: "5221"
title: "Cinq couples et les poignées de main"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [principe-des-tiroirs, graphe, poignees-de-main, raisonnement-par-elimination]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par_extra.pdf, « More Pigeon-hole problems », problème 8"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par_extra.pdf"
---

## Statement

Mon épouse et moi sommes allés à une soirée où se trouvaient quatre autres couples, soit dix personnes en tout.

En arrivant, les gens se sont serré la main, mais pas tous : personne n'a serré sa propre main, personne n'a serré la main de son conjoint, et deux personnes ne se sont pas serré la main plus d'une fois.

Quand tout le monde a eu fini, j'ai demandé à chacune des neuf autres personnes, y compris à mon épouse, combien de mains elle avait serrées. À ma grande surprise, les neuf réponses étaient **toutes différentes**.

**Combien de mains mon épouse a-t-elle serrées ?**

## Hints

1. Entre quelles valeurs le nombre de mains serrées par une personne peut-il varier ? Combien de personnes cette personne peut-elle serrer au maximum ?
2. Neuf réponses, toutes différentes, prises parmi un ensemble qui compte exactement neuf valeurs : que peut-on en conclure ?
3. Intéressez-vous à la personne qui a répondu $8$. Qui n'a pas serré sa main ?
4. Cette personne a serré la main de tout le monde sauf de son conjoint. Donc tous les autres ont serré au moins une main. Qui est alors la personne qui a répondu $0$ ?
5. Une fois ce couple identifié, mettez-le de côté, retirez $1$ à toutes les réponses restantes, et recommencez le même raisonnement. N'oubliez pas de tenir compte de moi, dont on ne connaît pas la réponse.

## Solution

Appelons $H$ la personne qui pose la question (moi) et $F$ mon épouse. Les neuf autres personnes sont $F$ et les huit membres des quatre autres couples.

### Les réponses possibles

Une personne peut serrer la main d'au plus $8$ personnes : il y a $10$ personnes en tout, mais elle ne serre ni sa propre main, ni celle de son conjoint. Chaque réponse est donc un entier entre $0$ et $8$, ce qui fait $9$ valeurs possibles.

Les neuf réponses recueillies sont deux à deux différentes et il y a exactement neuf valeurs possibles : les réponses sont donc exactement

$$0, \; 1, \; 2, \; 3, \; 4, \; 5, \; 6, \; 7, \; 8 ,$$

chacune donnée par une personne et une seule. Notons $A_k$ la personne qui a répondu $k$.

### Premier tour : le couple (8, 0)

$A_8$ a serré $8$ mains, c'est-à-dire le maximum : elle a serré la main de tout le monde, sauf d'elle-même et de son conjoint.

Donc toute personne autre que $A_8$ et son conjoint a serré au moins une main, celle de $A_8$. La seule personne qui peut avoir répondu $0$ est donc le conjoint de $A_8$.

Comme $A_0$ a bien répondu $0$, on en déduit : **$A_8$ et $A_0$ forment un couple.**

Notons au passage que $H$ lui-même n'est ni $A_8$ ni $A_0$, puisque ces deux personnes font partie des neuf interrogées.

### Deuxième tour : le couple (7, 1)

Retirons de la soirée le couple $\{A_8, A_0\}$. Il reste huit personnes : $H$ et $A_1, A_2, \ldots, A_7$.

Chacune de ces huit personnes a serré la main de $A_8$ (une fois) et n'a pas serré celle de $A_0$. Si l'on ne compte que les poignées de main échangées **à l'intérieur** de ce groupe de huit, chaque réponse diminue donc exactement de $1$ :

$$A_1 \to 0, \quad A_2 \to 1, \quad A_3 \to 2, \quad \ldots, \quad A_7 \to 6 .$$

On est ramené à la même situation, avec quatre couples et un maximum de $6$ poignées de main par personne. Le même raisonnement s'applique : la personne qui atteint le maximum $6$, c'est-à-dire $A_7$, a serré la main de tous sauf de son conjoint, donc son conjoint est la personne qui compte $0$, c'est-à-dire $A_1$.

**$A_7$ et $A_1$ forment un couple.**

### Troisième et quatrième tours

On recommence. Après avoir retiré $\{A_7, A_1\}$, il reste $H, A_2, A_3, A_4, A_5, A_6$, et les comptes internes valent

$$A_2 \to 0, \quad A_3 \to 1, \quad A_4 \to 2, \quad A_5 \to 3, \quad A_6 \to 4 .$$

Le maximum possible est maintenant $4$, atteint par $A_6$, dont le conjoint est $A_2$ : **$A_6$ et $A_2$ forment un couple.**

Un tour de plus donne de la même façon : **$A_5$ et $A_3$ forment un couple.**

### Conclusion

Nous avons identifié quatre couples :

$$\{A_8, A_0\}, \quad \{A_7, A_1\}, \quad \{A_6, A_2\}, \quad \{A_5, A_3\} .$$

Ce sont huit personnes, et ce sont donc les quatre autres couples de la soirée. Les deux personnes restantes, $H$ et son épouse $F$, forment le cinquième couple. Parmi les neuf personnes interrogées, celle qui n'est dans aucun des quatre couples ci-dessus est $A_4$.

$$\text{Mon épouse est } A_4 : \text{ elle a serré } \boxed{4} \text{ mains.}$$

### Une soirée qui marche vraiment

Il reste à vérifier qu'une telle soirée existe. Numérotons les personnes $0, 1, \ldots, 8$ selon leur réponse, plus $H$. On décide que deux personnes se serrent la main selon la règle suivante : $A_k$ serre la main de $A_\ell$ si et seulement si $k + \ell > 8$, et $H$ serre la main de $A_5, A_6, A_7, A_8$.

On vérifie alors que $A_k$ a bien serré $k$ mains, et que $H$ en a serré $4$, comme son épouse $A_4$. Les couples sont bien $\{A_8, A_0\}, \{A_7, A_1\}, \{A_6, A_2\}, \{A_5, A_3\}$ et $\{H, A_4\}$, et aucun conjoint ne s'est serré la main, puisque $k + \ell = 8$ pour chacun de ces couples.

## Going further

Le résultat a quelque chose de troublant : la question ne portait que sur les réponses des autres, et pourtant elle détermine complètement celle de mon épouse, sans qu'on ait besoin de savoir quoi que ce soit sur le déroulement de la soirée. On démontre de la même façon que, avec $n$ couples, l'épouse de celui qui interroge a serré exactement $n - 1$ mains.
