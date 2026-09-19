---
id: "0131"
title: "Vingt-cinq nombres, quatre par quatre"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [nombres-relatifs, somme, raisonnement, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 13, задача 6"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

On écrit $25$ nombres au tableau. Ils peuvent être positifs, négatifs ou nuls, et rien n'oblige à ce qu'ils soient tous différents.

On remarque la chose suivante : si l'on en choisit quatre, n'importe lesquels, leur somme est toujours strictement positive, c'est-à-dire plus grande que $0$.

La somme des $25$ nombres peut-elle être négative ?

## Hints

1. Commence par te demander combien, parmi ces $25$ nombres, peuvent être strictement négatifs.
2. Si quatre des nombres étaient strictement négatifs, que vaudrait la somme de ces quatre-là ? Est-ce compatible avec ce que dit l'énoncé ?
3. Il y a donc au plus trois nombres strictement négatifs. Fabrique un groupe de quatre nombres qui les contient tous. Que sais-tu de la somme de ce groupe ?
4. Il te reste $21$ nombres. Quel est leur signe ? Que se passe-t-il quand on les ajoute à un nombre strictement positif ?

## Solution

**Réponse : non, la somme des $25$ nombres est toujours strictement positive.**

**L'idée : d'abord compter les nombres négatifs, puis les enfermer tous dans un même groupe de quatre.**

**Étape 1. Il y a au plus trois nombres strictement négatifs.**

Raisonnons par l'absurde et supposons qu'il y ait au moins quatre nombres strictement négatifs. Choisissons-en quatre. Leur somme serait la somme de quatre nombres tous plus petits que $0$, donc elle serait strictement négative.

Mais l'énoncé affirme que la somme de quatre nombres quelconques est strictement positive. C'est contradictoire.

Il y a donc **au plus trois nombres strictement négatifs** parmi les $25$.

**Étape 2. Enfermer tous les négatifs dans un groupe de quatre.**

Formons un groupe de quatre nombres qui contient tous les nombres strictement négatifs. C'est possible : il y en a au plus trois, et il reste largement assez d'autres nombres ($25 - 3 = 22$ au moins) pour compléter le groupe jusqu'à quatre.

D'après l'énoncé, la somme de ces quatre nombres est strictement positive. Appelons-la $T$, avec $T > 0$.

**Étape 3. Ajouter tout le reste.**

Il reste $25 - 4 = 21$ nombres. Aucun d'eux n'est strictement négatif, puisque tous les négatifs sont déjà dans le groupe. Ils sont donc tous positifs ou nuls.

La somme des $25$ nombres vaut

$$T + (\text{somme des } 21 \text{ nombres restants}).$$

On ajoute à $T$, qui est strictement positif, une somme de nombres tous positifs ou nuls : le résultat reste strictement positif.

**Conclusion.**

La somme des $25$ nombres est toujours strictement positive. Elle ne peut donc **jamais** être négative.

## Going further

1. Donne un exemple de $25$ nombres qui vérifient bien l'énoncé et parmi lesquels il y a exactement trois nombres négatifs.
2. Reprends le problème en remplaçant « la somme de quatre quelconques » par « la somme de trois quelconques ». La conclusion tient-elle encore ? Et avec cinq ?
3. On sait maintenant seulement que la somme de quatre nombres quelconques est positive **ou nulle**. Peut-on encore affirmer que la somme des $25$ nombres est positive ou nulle ?
