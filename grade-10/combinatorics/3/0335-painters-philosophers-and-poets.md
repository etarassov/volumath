---
id: "0335"
title: "Peintres, philosophes et poètes"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [ensembles, intersection, maximum, denombrement]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 15, задача 8"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Une usine emploie $40$ ouvriers. Chacun d'eux est peintre, ou philosophe, ou poète, et rien n'interdit à un même ouvrier d'être plusieurs de ces trois choses à la fois.

On compte en tout, parmi ces $40$ ouvriers, $28$ peintres, $27$ philosophes et $11$ poètes.

Quel est le plus grand nombre d'ouvriers qui peuvent être **à la fois peintres et philosophes** ?

## Hints

1. Note $x$ le nombre d'ouvriers qui sont à la fois peintres et philosophes. Combien y a-t-il d'ouvriers qui sont peintres ou philosophes (ou les deux) ?
2. Attention au piège du double comptage : en additionnant $28$ et $27$, chaque ouvrier qui est les deux est compté deux fois.
3. Tout ouvrier est peintre, philosophe ou poète. Les $40$ ouvriers sont donc tous soit dans le groupe « peintre ou philosophe », soit parmi les $11$ poètes. Qu'est-ce que cela impose ?
4. Tu obtiens une inégalité qui majore $x$. Il reste à construire une situation où cette valeur est réellement atteinte.

## Solution

**L'idée : d'un côté une majoration, de l'autre un exemple.**

Notons $x$ le nombre d'ouvriers qui sont à la fois peintres et philosophes. C'est ce nombre qu'il faut rendre le plus grand possible.

**Étape 1. On majore $x$.**

Comptons d'abord les ouvriers qui sont peintres **ou** philosophes (au moins l'un des deux).

Si l'on additionne simplement $28$ peintres et $27$ philosophes, on obtient $55$ ; mais chaque ouvrier qui est les deux a été compté deux fois. Il faut donc le retirer une fois :
$$\text{nombre d'ouvriers peintres ou philosophes} = 28 + 27 - x = 55 - x .$$

Maintenant, l'énoncé dit que chaque ouvrier est peintre, philosophe ou poète. Donc chacun des $40$ ouvriers appartient au groupe « peintre ou philosophe », ou bien fait partie des $11$ poètes (ou les deux). En comptant les deux groupes, on obtient au moins $40$, et peut-être davantage si certains ouvriers sont dans les deux groupes :
$$40 \;\leqslant\; (55 - x) + 11 \;=\; 66 - x .$$

D'où
$$x \leqslant 66 - 40 = 26 .$$

Il ne peut donc pas y avoir plus de $26$ ouvriers à la fois peintres et philosophes.

*Autre façon de dire la même chose : s'il y en avait $27$, alors le groupe « peintre ou philosophe » ne compterait que $55 - 27 = 28$ ouvriers ; avec les $11$ poètes, on n'atteindrait au mieux que $28 + 11 = 39$ ouvriers, alors qu'il y en a $40$.*

**Étape 2. La valeur $26$ est réellement possible.**

Il reste à décrire une usine qui respecte tous les chiffres de l'énoncé avec $x = 26$.

Répartissons les $40$ ouvriers en quatre groupes :

- $26$ ouvriers qui sont **peintres et philosophes** ;
- $2$ ouvriers qui sont **peintres seulement** ;
- $1$ ouvrier qui est **philosophe seulement** ;
- $11$ ouvriers qui sont **poètes seulement**.

Vérifions tous les comptes :

- nombre d'ouvriers : $26 + 2 + 1 + 11 = 40$ ;
- peintres : $26 + 2 = 28$ ;
- philosophes : $26 + 1 = 27$ ;
- poètes : $11$ ;
- chaque ouvrier est bien peintre, philosophe ou poète.

Tout est conforme à l'énoncé, et il y a bien $26$ ouvriers à la fois peintres et philosophes.

**Réponse : au plus $26$ ouvriers peuvent être à la fois peintres et philosophes, et ce nombre est atteignable. Le plus grand nombre cherché est donc $26$.**

## Going further

1. Quel est au contraire le plus **petit** nombre d'ouvriers qui peuvent être à la fois peintres et philosophes ?
2. Avec les mêmes chiffres, quel est le plus grand nombre d'ouvriers qui peuvent être peintres, philosophes et poètes en même temps ?
3. Reprends la question de départ en remplaçant $11$ poètes par $3$ poètes. La réponse change-t-elle ? Que se passe-t-il si le nombre de poètes devient très petit ?
