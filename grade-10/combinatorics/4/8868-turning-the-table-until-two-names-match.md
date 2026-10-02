---
id: "8868"
title: "Tourner la table jusqu'à deux noms justes"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [double-comptage, principe-des-tiroirs, rotation, table-ronde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe B, « Combinatoire : Double comptage » (Noé)"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Combinatoire : Double comptage », exercice 12, p. 245"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Autour d'une table ronde, $12$ chaises sont disposées régulièrement. Devant chaque chaise, sur le plateau tournant de la table, on a posé un carton portant un nom : les $12$ cartons portent les $12$ noms des invités, chacun une seule fois.

Les $12$ invités s'assoient, et on constate qu'**aucun** d'entre eux ne se trouve devant son propre carton.

On peut faire tourner le plateau d'un cran, puis d'un autre cran, etc. Les invités ne bougent pas, seuls les cartons tournent.

Montrer qu'il existe une position du plateau pour laquelle **au moins deux** invités se retrouvent devant leur propre carton.

## Hints

1. Combien y a-t-il de positions différentes du plateau, en comptant la position de départ ?
2. Fixe un invité et fais tourner le plateau d'un tour complet. Devant combien de positions se retrouve-t-il face à son propre carton ?
3. Compte de deux façons le nombre total de couples (position du plateau, invité placé devant son propre carton).
4. Tu connais ce total, et tu sais qu'une des positions n'en contient aucun. Combien reste-t-il de positions pour les loger ?

## Solution

### Les positions et les coïncidences

Le plateau a $12$ positions possibles : la position de départ, et les $11$ positions obtenues en tournant d'un cran, de deux crans, …, de onze crans. Tourner de douze crans ramène à la position de départ.

Appelons **coïncidence** un couple (position du plateau, invité) tel que, dans cette position, cet invité soit devant son propre carton. Notons $T$ le nombre total de coïncidences.

### Premier comptage : invité par invité

Fixons un invité. Son carton part d'une certaine chaise et, quand le plateau fait un tour complet, ce carton passe devant **chacune** des $12$ chaises exactement une fois. En particulier, il passe devant la chaise de cet invité pour exactement une position du plateau.

Chaque invité fournit donc exactement une coïncidence, et il y a $12$ invités :
$$T = 12 .$$

### Second comptage : position par position

Répartissons maintenant ces $12$ coïncidences selon la position du plateau.

La position de départ n'en contient **aucune**, puisque personne n'est devant son propre carton. Les $12$ coïncidences se répartissent donc entre les $11$ autres positions.

### Le principe des tiroirs

On range $12$ objets (les coïncidences) dans $11$ tiroirs (les positions restantes). Comme
$$12 > 11 ,$$
un tiroir contient au moins deux objets : il existe une position du plateau pour laquelle au moins deux invités sont devant leur propre carton.

### Conclusion

Il est donc toujours possible de tourner le plateau de façon qu'au moins deux invités retrouvent leur carton, et c'est vrai quelle que soit la disposition de départ, du moment que personne n'y est bien placé.

### Là où l'hypothèse sert

Sans l'hypothèse « personne n'est bien placé au départ », la conclusion tombe. Si chacun était déjà devant son propre carton, les $12$ coïncidences seraient toutes concentrées sur la position de départ, et **aucune** autre position n'en aurait. L'énoncé serait alors faux pour les onze autres positions, et la seule position gagnante serait celle de départ.

## Going further

1. Refaire le raisonnement avec $n$ chaises au lieu de $12$. Quelle conclusion obtient-on ?
2. Si l'on sait seulement qu'**au plus une** personne est bien placée au départ, peut-on encore garantir une position à deux coïncidences au moins ?
3. Peut-on garantir une position avec au moins **trois** coïncidences ? Chercher une disposition de $12$ cartons qui l'interdise.
