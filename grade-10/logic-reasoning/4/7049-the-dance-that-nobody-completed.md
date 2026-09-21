---
id: "7049"
title: "La soirée dansante"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [principe extremal, maximum, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des avancés"
  reference: "stage_junior_2012.pdf, mardi : combinatoire (principe extrémal), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Lors d'une soirée, des garçons et des filles ont dansé. On sait deux choses :

- **aucun garçon n'a dansé avec toutes les filles** ;
- **chaque fille a dansé avec au moins un garçon**.

Montrer qu'on peut alors trouver deux garçons $g$ et $g'$ et deux filles $f$ et $f'$ tels que

- $g$ a dansé avec $f$, mais **pas** avec $f'$ ;
- $g'$ a dansé avec $f'$, mais **pas** avec $f$.

## Hints

1. Il faut construire quatre personnes. Ne les cherche pas au hasard : commence par en choisir
   une de façon **extrême**.
2. Choisis le garçon $g$ qui a dansé avec le **plus grand nombre** de filles.
3. La première hypothèse te donne alors une fille $f'$ qui n'a pas dansé avec $g$. La seconde
   te donne un garçon $g'$ qui a dansé avec $f'$.
4. Il reste à trouver $f$ : une fille qui a dansé avec $g$ mais pas avec $g'$. Suppose qu'une
   telle fille n'existe pas. Combien de filles $g'$ aurait-il alors dansé avec, au minimum ?
5. Compare ce nombre à celui de $g$, et souviens-toi que $g$ était le champion.

## Solution

**Choisir un extrême.**

C'est le cœur de la méthode : au lieu de chercher les quatre personnes au hasard, on en
choisit une qui bat un record.

Parmi tous les garçons, prenons $g$ **celui qui a dansé avec le plus de filles**. Notons $N$
ce nombre de filles. (Un tel garçon existe : il n'y a qu'un nombre fini de garçons, donc un
nombre fini de valeurs, et l'une d'elles est la plus grande.)

**Trouver $f'$ puis $g'$.**

Par la première hypothèse, $g$ n'a pas dansé avec toutes les filles. Il existe donc une fille
$f'$ qui **n'a pas dansé avec $g$**.

Par la seconde hypothèse, $f'$ a dansé avec au moins un garçon. Appelons-le $g'$. Remarquons
tout de suite que $g' \neq g$, puisque $g$ n'a pas dansé avec $f'$.

**Trouver $f$, par l'absurde.**

Il nous manque une fille $f$ qui ait dansé avec $g$ mais pas avec $g'$. Supposons qu'il n'en
existe aucune.

Cela veut dire que **toutes** les filles qui ont dansé avec $g$ ont aussi dansé avec $g'$.
Donc $g'$ a dansé avec au moins ces $N$ filles-là.

Mais $g'$ a aussi dansé avec $f'$, qui n'est pas dans ce groupe puisqu'elle n'a pas dansé avec
$g$. Donc $g'$ a dansé avec au moins $N + 1$ filles.

Cela contredit le fait que $g$ soit le garçon ayant dansé avec le plus de filles.

**Conclusion.**

L'hypothèse était fausse : il existe bien une fille $f$ qui a dansé avec $g$ et pas avec $g'$.
Les quatre personnes $g$, $g'$, $f$, $f'$ conviennent :

- $g$ a dansé avec $f$ (par choix de $f$) et pas avec $f'$ (par choix de $f'$) ;
- $g'$ a dansé avec $f'$ (par choix de $g'$) et pas avec $f$ (par choix de $f$). $\blacksquare$

## Going further

Cet exercice illustre le **principe extrémal** : quand on cherche un objet aux propriétés
compliquées, il est souvent payant de partir d'un objet qui est le plus grand, le plus petit,
le plus long ou le plus proche. Les records ont une vertu : on connaît immédiatement quelque
chose sur tous les autres objets, à savoir qu'ils ne font pas mieux.

Ici, choisir $g$ au hasard aurait été inutile. Le choisir champion donne gratuitement
l'inégalité qui produit la contradiction.

Remarque au passage que les deux hypothèses de l'énoncé ont servi chacune exactement une fois,
et que l'énoncé serait faux si l'on en retirait une. Essaie de construire un contre-exemple
quand on enlève la seconde hypothèse.
