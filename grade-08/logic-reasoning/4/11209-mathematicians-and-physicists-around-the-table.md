---
id: "11209"
title: "Mathématiciens et physiciens autour de la table"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [menteurs, table-ronde, disjonction-de-cas, logique]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2013-2014-envoi-2.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2013-2014-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-2.pdf"
---

## Statement

Un congrès réunit $2\,014$ scientifiques. Chacun est soit mathématicien, soit physicien. Les
physiciens mentent toujours. Les mathématiciens disent toujours la vérité, sauf quand ils se
trompent.

Au dîner de clôture, les $2\,014$ scientifiques sont assis autour d'une grande table ronde, et
chacun déclare : « Je suis assis entre un mathématicien et un physicien. »

On sait qu'**exactement un** mathématicien, un peu distrait, s'est trompé. Tous les autres
mathématiciens ont dit vrai.

Combien y a-t-il de physiciens au congrès ?

## Hints

1. Un physicien ment. Que peut-on dire de ses deux voisins ? Deux physiciens peuvent-ils être
   assis côte à côte ?
2. Un mathématicien qui dit vrai a un voisin mathématicien et un voisin physicien. Entre deux
   physiciens, on trouve donc des groupes de mathématiciens assis côte à côte. Quelle taille
   ont ces groupes ?
3. Appelle Thomas le mathématicien distrait. Ses deux voisins sont du même métier. Sépare les
   deux cas, et compte les scientifiques dans chacun.

## Solution

Appelons Thomas le mathématicien qui s'est trompé.

**Étape 1. Deux physiciens ne sont jamais voisins.**

Un physicien ment : il n'est pas assis entre un mathématicien et un physicien, donc ses deux
voisins font le même métier.

Supposons que deux physiciens soient voisins. Chacun a un voisin physicien, donc ses deux voisins
sont physiciens. Le voisin suivant est donc physicien aussi, et ainsi de suite tout autour de la
table : tout le monde serait physicien. C'est impossible, puisque Thomas est mathématicien.

Chaque physicien est donc assis **entre deux mathématiciens**.

**Étape 2. Des groupes de mathématiciens.**

Autour de la table, les physiciens sont isolés, et entre deux physiciens consécutifs se trouve
un groupe de mathématiciens assis côte à côte. Il y a au moins un physicien, sinon tous les
mathématiciens, assis entre deux mathématiciens, se seraient trompés. Il y a donc autant de
groupes que de physiciens.

Un mathématicien autre que Thomas dit vrai : il a un voisin mathématicien et un voisin
physicien. Dans un groupe sans Thomas, chaque mathématicien est donc au bord du groupe, et a
exactement un voisin dans le groupe : le groupe compte **exactement deux** mathématiciens.

**Étape 3. Le groupe de Thomas.**

Thomas s'est trompé, donc ses deux voisins font le même métier.

- **Si ses deux voisins sont physiciens**, Thomas forme un groupe à lui tout seul. Avec $k$ autres
  groupes de deux, il y a $1 + 2k$ mathématiciens et $k + 1$ physiciens, soit $3k + 2$
  scientifiques. Or $2\,014 = 3 \times 671 + 1$ : ce n'est pas de la forme $3k + 2$. Ce cas est
  impossible.
- **Si ses deux voisins sont mathématiciens**, chacun d'eux dit vrai et a donc un physicien de
  l'autre côté. Le groupe de Thomas compte exactement trois mathématiciens. Avec $k$ autres
  groupes de deux, il y a $3 + 2k$ mathématiciens et $k + 1$ physiciens, soit $3k + 4$
  scientifiques.

**Étape 4. Le compte.**

On a donc $3k + 4 = 2\,014$, d'où $3k = 2\,010$ et $k = 670$. Le nombre de physiciens est
$k + 1 = 671$.

Cette situation existe bien : autour de la table, on place le groupe de trois, puis un physicien,
puis $670$ fois « deux mathématiciens, un physicien ». Tout le monde dit alors ce qu'il doit dire.

**Conclusion : il y a $671$ physiciens au congrès.**
