---
id: "8237"
title: "Deux mille dix-huit cartes, et une somme paire"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [jeu, parite, strategie-gagnante, appariement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, TD de combinatoire (Savinien Kreczman, Andrei Barbu), section Jeux, exercice 8"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Philippe et Emmanuel ont devant eux $2018$ cartes, numérotées de $1$ à $2018$.

Chacun à son tour, en commençant par Philippe, un joueur prend une des cartes qui restent sur la table et l'ajoute à sa main. On continue jusqu'à ce qu'il n'y ait plus de cartes : chacun en aura donc pris $1009$.

Chaque joueur fait ensuite la somme des numéros des cartes de sa main. **Celui dont la somme est paire gagne.**

Qui a une stratégie gagnante ?

## Hints

1. Seule la **parité** des numéros compte. Recommence l'énoncé dans ta tête en remplaçant chaque carte par son étiquette « paire » ou « impaire ».
2. La somme d'un joueur est paire exactement quand il a pris un nombre **pair** de cartes impaires. Combien y a-t-il de cartes impaires en tout ?
3. Il y a $1009$ cartes impaires, un nombre impair. Si l'un des deux en a un nombre pair, que peut-on dire de l'autre ?
4. Les deux joueurs ne peuvent donc pas gagner ensemble, ni perdre ensemble : il y a exactement un gagnant. Reste à savoir lequel Philippe peut forcer.
5. Idée de Philippe : prendre une carte paire au premier coup, puis **copier la parité** de la carte qu'Emmanuel vient de prendre.
6. Vérifie que cette réponse est toujours possible, en suivant la parité du nombre de cartes paires et impaires restantes après chacun des coups de Philippe.

## Solution

**Réduire à la parité.**

Parmi les nombres de $1$ à $2018$, il y a $1009$ nombres impairs ($1, 3, \ldots, 2017$) et $1009$ nombres pairs ($2, 4, \ldots, 2018$).

La somme des cartes d'un joueur est paire exactement quand il détient un nombre **pair** de cartes impaires (les cartes paires n'influent pas sur la parité de la somme). Seule compte donc la répartition des $1009$ cartes impaires.

**Il y a toujours exactement un gagnant.**

Si Philippe détient $p$ cartes impaires et Emmanuel $q$, alors $p + q = 1009$, qui est impair. Donc $p$ et $q$ sont de parités différentes : exactement l'un des deux a un nombre pair de cartes impaires. Il y a donc toujours un gagnant et un perdant, jamais de match nul.

**La stratégie de Philippe.**

- **Premier coup :** il prend une carte **paire**.
- **Ensuite :** à chaque fois qu'Emmanuel prend une carte, Philippe prend une carte **de la même parité**.

**Pourquoi Philippe n'est-il jamais bloqué ?**

Montrons qu'après chacun de ses coups, les nombres de cartes restantes vérifient :

> le nombre de cartes **paires** restantes est **pair**, et le nombre de cartes **impaires** restantes est **impair**.

*C'est vrai après son premier coup :* il reste $1008$ paires (nombre pair ✓) et $1009$ impaires (nombre impair ✓).

*Cela se conserve :* supposons la propriété vraie, et regardons un tour complet.

- Si Emmanuel prend une carte **paire**, il en reste alors un nombre impair, donc au moins $1$ : Philippe peut en prendre une paire lui aussi. Le compte des paires baisse de $2$, sa parité est inchangée ; celui des impaires ne bouge pas. ✓
- Si Emmanuel prend une carte **impaire**, il en reste alors un nombre pair ; mais comme Emmanuel vient d'en prendre une, il en restait au moins une avant, donc ce nombre pair est au moins... vérifions autrement : le nombre d'impaires restantes après le coup d'Emmanuel est pair, et il faut qu'il soit $\ge 1$ pour que Philippe réponde. Or si ce nombre était $0$, il n'y aurait plus aucune carte impaire, et comme il reste un nombre pair de cartes paires, le nombre total de cartes restantes serait pair. Mais après un coup d'Emmanuel il reste $2018 - (\text{nombre impair de cartes prises})$ cartes, donc un nombre **impair**. Contradiction. Donc il reste au moins une carte impaire, et Philippe peut répondre. ✓

Philippe peut donc appliquer sa stratégie jusqu'au bout.

**Qui gagne ?**

Le tout dernier coup est joué par Emmanuel : Philippe prend les cartes numéros $1, 3, 5, \ldots$ de l'ordre de jeu (les rangs impairs) et Emmanuel les rangs pairs, donc Emmanuel prend la $2018^{\text{e}}$ et dernière carte.

Juste avant ce dernier coup, la propriété ci-dessus est vérifiée : il reste un nombre pair de cartes paires et un nombre impair de cartes impaires, pour un total de $1$ carte. La seule possibilité est donc $0$ carte paire et $1$ carte impaire. **La dernière carte est impaire, et c'est Emmanuel qui la prend.**

Comptons maintenant les cartes impaires de chacun. En dehors de la toute dernière, les cartes impaires ont été prises par paires « Emmanuel puis Philippe » : ils en ont donc le même nombre, disons $k$ chacun. Avec la dernière :

$$2k + 1 = 1009, \qquad \text{donc} \qquad k = 504 .$$

Philippe a $504$ cartes impaires : c'est un nombre pair, sa somme est **paire**. Emmanuel en a $505$ : sa somme est impaire.

$$\boxed{\text{Philippe gagne.}}$$

## Going further

Et si c'était Emmanuel qui commençait ? Et si les cartes allaient de $1$ à $2019$ ? Reprendre l'analyse : le nombre de cartes impaires et la parité du nombre total de cartes sont les deux seules données qui comptent.
