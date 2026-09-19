---
id: "4821"
title: "Un nombre moins son miroir"
grade: 8
theme: algebra
difficulty: 3
duration_min: 25
tags: [chiffres, ecriture-decimale, multiples-de-9, mise-en-equation]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Math Relays"
  reference: "Handout-192-208.pdf, exercice 8 (réponse dans Handout-193-208.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-192-208.pdf"
---

## Statement

On prend un nombre de deux chiffres, et on lui retranche le nombre obtenu en écrivant ses deux chiffres à l'envers. Par exemple, avec $52$ on calcule $52 - 25 = 27$.

Pour un certain nombre de départ, la différence obtenue est elle aussi un nombre de deux chiffres, et **son chiffre des unités est $3$**.

Quel est le chiffre des dizaines de cette différence ?

## Hints

1. Appelle $a$ le chiffre des dizaines et $b$ le chiffre des unités du nombre de départ. Comment s'écrit ce nombre avec $a$ et $b$ ? Et son miroir ?
2. Calcule la différence et simplifie. Tu devrais obtenir un multiple d'un nombre bien connu.
3. Fais la liste de tous les multiples de $9$ qui ont deux chiffres.
4. Dans cette liste, combien s'écrivent avec un $3$ en chiffre des unités ?

## Solution

**On écrit le nombre avec ses chiffres.** Notons $a$ le chiffre des dizaines et $b$ le chiffre des unités du nombre de départ. Alors

- le nombre de départ vaut $10a + b$,
- son miroir vaut $10b + a$.

**On calcule la différence.**
$$(10a + b) - (10b + a) = 10a + b - 10b - a = 9a - 9b = 9(a - b) .$$

**Ce qu'on vient d'apprendre.** La différence est toujours un **multiple de $9$**. Cela ne dépend pas du tout des chiffres choisis : c'est vrai pour $52 - 25 = 27 = 9 \times 3$, pour $81 - 18 = 63 = 9 \times 7$, et ainsi de suite.

**On cherche parmi les multiples de $9$.** La différence doit être un nombre de deux chiffres. Les multiples de $9$ à deux chiffres sont
$$18, \quad 27, \quad 36, \quad 45, \quad 54, \quad 63, \quad 72, \quad 81, \quad 90 .$$

Parmi eux, un seul se termine par $3$ : c'est $63$.

**Conclusion.** La différence vaut donc $63$, et
$$\boxed{\text{le chiffre des dizaines de la différence est } 6 .}$$

**Un exemple pour vérifier.** Il faut $9(a - b) = 63$, c'est-à-dire $a - b = 7$. Par exemple $a = 9$ et $b = 2$ donnent $92 - 29 = 63$, et $a = 8$, $b = 1$ donnent $81 - 18 = 63$. Les deux marchent bien.

## Going further

1. Que se passe-t-il si la différence est nulle ? Quels sont les nombres de départ concernés ?
2. Démontre que la différence entre un nombre de **trois** chiffres et son miroir est toujours un multiple de $99$.
3. Prends un nombre de deux chiffres dont les chiffres diffèrent d'au moins $2$, retranche son miroir, puis additionne le résultat et le miroir de ce résultat. On tombe toujours sur le même nombre. Lequel, et pourquoi ?
