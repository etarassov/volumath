---
id: "7826"
title: "Des mots en x, y et t"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, mots, transformations, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de mi-parcours du vendredi 21 août, groupe B, exercice 1. Les mêmes règles, avec les questions xy et xt, xytx et txyt, xxyy et xyyyyx, figurent aussi dans Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Invariants », exercice 7."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On considère les mots écrits uniquement avec les lettres $x$, $y$ et $t$.

On s'autorise à remplacer, à l'intérieur d'un mot, un groupe de lettres par un autre selon les
trois règles suivantes, utilisables dans les **deux sens** :

$$\text{(i)}\ \ xy \longleftrightarrow yyx \qquad
  \text{(ii)}\ \ xt \longleftrightarrow ttx \qquad
  \text{(iii)}\ \ yt \longleftrightarrow ty$$

Par exemple, $xtxyy$ peut devenir $ttxxyy$ en appliquant la règle (ii) aux deux premières
lettres.

En utilisant ces opérations autant de fois qu'on veut, peut-on passer :

**a)** du mot $xy$ au mot $xt$ ?

**b)** du mot $xytx$ au mot $txyt$ ?

**c)** du mot $xtxyy$ au mot $ttxyyyyx$ ?

## Hints

1. Pour les questions a) et b), la réponse est non. Pour le prouver, cherche une quantité qui
   ne change jamais quand on applique une règle : un *invariant*.
2. Pour a) : regarde ce qui arrive aux lettres $t$. Peuvent-elles apparaître de nulle part ?
   Peuvent-elles disparaître complètement ?
3. Pour b) : la lettre $t$ est présente des deux côtés, donc l'invariant de a) ne sert à rien.
   Regarde plutôt la lettre $x$ : compte-la dans chacune des trois règles.
4. Pour c) : ici il faut construire une suite de transformations. Commence par la règle (ii)
   pour fabriquer le $tt$ du début, puis fais grandir la queue de $y$ avec la règle (i).

## Solution

### a) De $xy$ à $xt$ : impossible

**L'invariant : « le mot contient-il au moins un $t$ ? »**

Regardons les trois règles.

- La règle (i), $xy \leftrightarrow yyx$, ne fait intervenir aucun $t$ : elle ne change pas le
  nombre de $t$ du mot.
- La règle (ii), $xt \leftrightarrow ttx$, change le nombre de $t$ (de $1$ à $2$, ou de $2$ à
  $1$), mais dans les deux sens il reste au moins un $t$ là où il y en avait au moins un.
- La règle (iii), $yt \leftrightarrow ty$, déplace un $t$ sans en créer ni en détruire.

Aucune règle ne peut donc faire apparaître un $t$ dans un mot qui n'en contient pas, ni
supprimer tous les $t$ d'un mot qui en contient.

Or $xy$ ne contient aucun $t$, tandis que $xt$ en contient un. **Le passage est impossible.**

### b) De $xytx$ à $txyt$ : impossible

**L'invariant : le nombre de lettres $x$.**

- Règle (i) : $xy$ contient un $x$, $yyx$ aussi. Inchangé.
- Règle (ii) : $xt$ contient un $x$, $ttx$ aussi. Inchangé.
- Règle (iii) : $yt$ et $ty$ n'en contiennent aucun. Inchangé.

Le nombre de $x$ ne change donc jamais.

Or $xytx$ contient **deux** $x$, tandis que $txyt$ n'en contient qu'**un**. **Le passage est
impossible.**

### c) De $xtxyy$ à $ttxyyyyx$ : possible

Il suffit d'exhiber une suite de coups. On souligne à chaque étape le groupe que l'on
transforme.

1. $\underline{xt}xyy \longrightarrow tt\,xxyy$  &nbsp;&nbsp; (règle (ii), sens $xt \to ttx$)
2. $ttx\underline{xy}y \longrightarrow ttx\,yyx\,y$ &nbsp;&nbsp; (règle (i), sens $xy \to yyx$,
   appliquée au deuxième $x$ suivi du premier $y$)
3. $ttxyy\underline{xy} \longrightarrow ttxyy\,yyx$ &nbsp;&nbsp; (règle (i) à nouveau)

On obtient $ttxyyyyx$, qui est bien le mot voulu. **Le passage est possible.**

*Contrôle.* Les deux invariants trouvés plus haut sont bien respectés : $xtxyy$ et $ttxyyyyx$
contiennent tous les deux au moins un $t$, et tous les deux exactement deux $x$. C'était
nécessaire ; ici c'était aussi suffisant, mais un invariant ne garantit jamais cela à lui seul.
