---
id: "7116"
title: "Compter deux fois la même chose"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 25
tags: [double comptage, moyenne, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Avancés : combinatoire », mercredi après-midi et jeudi (Jean-Louis Tu), exercices 3 et 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

**1. Au restaurant.** Cent clients ont déjeuné dans un restaurant dont la carte comporte
trente plats. Chaque plat a été commandé dix fois en moyenne.

Combien de plats chaque client a-t-il commandés en moyenne ?

**2. Au comité.** Dans un comité de $360$ personnes, chaque membre appartient à exactement
trois sous-comités, et chaque sous-comité compte exactement six membres.

Combien y a-t-il de sous-comités ?

## Hints

1. Dans les deux questions, il y a deux sortes d'objets : des clients et des plats, ou bien
   des membres et des sous-comités.
2. Ne compte ni les uns ni les autres. Compte les **couples** : un client avec un plat qu'il
   a commandé, un membre avec un sous-comité auquel il appartient.
3. Compte ces couples d'abord en regroupant par plat (ou par sous-comité), puis en
   regroupant par client (ou par membre). Tu obtiendras deux écritures du même nombre.

## Solution

Le même principe résout les deux questions : on compte **une seule quantité de deux façons
différentes**, et on égale les deux résultats.

**1. Au restaurant.**

Considérons tous les couples $(c, p)$ formés d'un client $c$ et d'un plat $p$ que ce client
a commandé. Appelons $N$ le nombre de ces couples.

*Premier comptage, plat par plat.* Chaque plat apparaît dans autant de couples qu'il a été
commandé de fois. Comme il y a $30$ plats commandés $10$ fois en moyenne, la somme de ces
nombres vaut

$$N = 30 \times 10 = 300 .$$

*Deuxième comptage, client par client.* Chaque client apparaît dans autant de couples qu'il
a commandé de plats. La somme de ces nombres vaut aussi $N = 300$.

Le nombre moyen de plats par client est donc

$$\frac{300}{100} = 3 .$$

**Chaque client a commandé trois plats en moyenne.**

**2. Au comité.**

Notons $k$ le nombre de sous-comités, et considérons les couples $(m, s)$ formés d'un membre
$m$ et d'un sous-comité $s$ auquel il appartient. Appelons $N$ le nombre de ces couples.

*Premier comptage, membre par membre.* Chaque membre appartient à exactement trois
sous-comités, donc apparaît dans exactement trois couples. Comme il y a $360$ membres :

$$N = 360 \times 3 = 1080 .$$

*Deuxième comptage, sous-comité par sous-comité.* Chaque sous-comité compte exactement six
membres, donc apparaît dans exactement six couples. Comme il y a $k$ sous-comités :

$$N = 6k .$$

En égalant :

$$6k = 1080, \qquad \text{donc} \qquad k = 180 .$$

**Il y a $\boxed{180}$ sous-comités.**

## Going further

Cette technique s'appelle le **double comptage**. Elle se résume en une phrase : on choisit
un ensemble d'objets bien adapté, on le compte de deux manières, et l'égalité des deux
résultats donne la réponse.

Le point délicat est toujours le même, et c'est le seul : trouver **quoi** compter. Ici ce
n'était ni les clients ni les plats, mais les couples formés d'un client et d'un plat.

Un dernier exemple pour s'entraîner. Dans un établissement scolaire, il y a $m$ professeurs
et $n$ élèves. Chaque professeur a exactement $k$ élèves, et chaque élève a exactement
$\ell$ professeurs. Quelle relation lie $m$, $n$, $k$ et $\ell$ ? (Réponse : en comptant les
couples (élève, professeur de cet élève) de deux façons, on trouve $mk = n\ell$.)
