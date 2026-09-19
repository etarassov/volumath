---
id: "2226"
title: "Les deux épées magiques"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, divisibilite, reste, raisonnement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Invariants II"
  reference: "Handout-623-735.pdf, exercice 8 (réponses dans Handout-624-735.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-623-735.pdf"
---

## Statement

Un prince affronte un dragon qui possède $100$ têtes. Il dispose de deux épées magiques.

- La **première épée** tranche d'un coup $21$ têtes.
- La **seconde épée** tranche d'un coup $4$ têtes, mais aussitôt après, il repousse au dragon $1985$ nouvelles têtes.

Le prince peut utiliser les deux épées autant de fois qu'il veut, et dans l'ordre qu'il veut. Il ne peut évidemment se servir d'une épée que si le dragon a au moins autant de têtes qu'elle en tranche : si le dragon n'a que trois têtes, aucune des deux épées ne peut servir.

Le prince peut-il venir à bout du dragon, c'est-à-dire lui laisser exactement $0$ tête ?

## Hints

1. Les nombres $21$, $4$ et $1985$ ont l'air choisis au hasard. Ils ne le sont pas. Cherche un nombre qui divise $21$.
2. Combien de têtes le dragon perd-il, au total, quand le prince se sert de la seconde épée ? Attention, c'est un gain, pas une perte.
3. Calcule $1985 - 4$. Ce nombre a-t-il un rapport avec $21$ ?
4. Si les deux coups font varier le nombre de têtes par un multiple de $7$, que peut-on dire du reste de ce nombre dans la division par $7$ ?

## Solution

**Ce que fait chaque coup.**

Notons $T$ le nombre de têtes du dragon à un instant donné.

- *Premier coup d'épée.* $T$ diminue de $21$.
- *Second coup d'épée.* $T$ diminue de $4$, puis augmente de $1985$ : au total, $T$ **augmente** de

$$1985 - 4 = 1981 .$$

**Les deux nombres clés sont des multiples de 7.**

$$21 = 7 \times 3 \qquad \text{et} \qquad 1981 = 7 \times 283 .$$

(Pour vérifier le second : $7 \times 280 = 1960$, et $1981 - 1960 = 21 = 7 \times 3$, donc $1981 = 7 \times 283$.)

**L'invariant.**

Chacun des deux coups modifie le nombre de têtes d'un **multiple de $7$**. Le reste de $T$ dans la division par $7$ ne change donc jamais, quels que soient les coups portés et leur ordre.

**On calcule ce reste.**

Au départ, le dragon a $100$ têtes, et

$$100 = 7 \times 14 + 2 .$$

Le reste vaut $2$. Il vaudra donc $2$ pour toujours : à chaque instant de la bataille, le nombre de têtes du dragon laisse le reste $2$ dans la division par $7$.

**La conclusion.**

Pour que le dragon soit vaincu, il faudrait arriver à $T = 0$. Or $0 = 7 \times 0 + 0$ laisse le reste $0$, et non $2$.

**Conclusion.** Non, le prince ne peut pas venir à bout du dragon. Le nombre de têtes ne sera jamais nul : il laissera toujours le reste $2$ dans la division par $7$, et vaudra donc toujours $2$, $9$, $16$, $23$, … Le prince peut au mieux réduire le dragon à $2$ têtes, et il devra alors s'arrêter, puisque aucune de ses deux épées ne tranche moins de $4$ têtes.

**Ce qu'il faut retenir.** Les nombres bizarres d'un énoncé sont souvent un déguisement. Ici, $21$ et $1985 - 4$ sont tous les deux des multiples de $7$ : c'est la seule chose qui compte, et elle condamne le prince dès la première ligne.

## Going further

1. Avec combien de têtes au départ le prince pourrait-il vaincre le dragon ? Donner la condition sur le nombre de têtes de départ.
2. Le dragon a $105$ têtes. Le prince peut-il gagner ? Attention : le reste ne suffit plus, il faut aussi vérifier qu'il existe vraiment une suite de coups.
3. On remplace la seconde épée par une épée qui tranche $4$ têtes et en fait repousser $1984$. Le prince peut-il maintenant vaincre le dragon de $100$ têtes ?
