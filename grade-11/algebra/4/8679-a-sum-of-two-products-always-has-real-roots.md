---
id: "8679"
title: "Une somme de deux produits a toujours des racines réelles"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [trinome, racines-reelles, changement-de-signe, discriminant]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, La Muraille"
  reference: "valbonne-2023.pdf, chapitre « La Muraille », exercice 38 (niveau 1, deux étoiles). La Muraille ne publie pas de corrigés ; solution rédigée ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ des nombres réels vérifiant $a \geqslant b$ et $c \geqslant d$. Montrer que le polynôme

$$P(x) = (x+a)(x+d) + (x+c)(x+b)$$

a toutes ses racines réelles.

## Hints

1. Développe $P$. C'est un trinôme du second degré : quel est son coefficient dominant ?
2. Tu pourrais calculer le discriminant, mais l'expression $(a+b+c+d)^2 - 8(ad+bc)$ n'est pas commode.
3. Une autre idée : un trinôme dont le coefficient dominant est positif a des racines réelles dès qu'il prend **une valeur négative ou nulle** quelque part.
4. Cherche donc un point où $P$ s'annule presque. Regarde ce qui se passe en $x = -a$ : le premier produit disparaît !
5. Calcule $P(-a)$ et $P(-c)$, puis étudie le signe de leur **produit**.

## Solution

### $P$ est un trinôme du second degré

En développant,

$$P(x) = \left(x^2 + (a+d)x + ad\right) + \left(x^2 + (b+c)x + bc\right) = 2x^2 + (a+b+c+d)\,x + (ad + bc) .$$

Son coefficient dominant vaut $2 > 0$ : la parabole est tournée vers le haut.

### Deux valeurs bien choisies

Le premier produit s'annule en $x = -a$, et le second en $x = -c$. Calculons $P$ en ces deux points.

$$P(-a) = (-a+a)(-a+d) + (-a+c)(-a+b) = 0 + (c-a)(b-a) = (c-a)(b-a) .$$

$$P(-c) = (-c+a)(-c+d) + (-c+c)(-c+b) = (a-c)(d-c) + 0 = (a-c)(d-c) .$$

### Le signe du produit

Multiplions ces deux valeurs :

$$P(-a) \times P(-c) = (c-a)(b-a) \times (a-c)(d-c) = [(c-a)(a-c)] \times [(b-a)(d-c)] .$$

Le premier crochet vaut $-(a-c)^2$, qui est **négatif ou nul**.

Le second crochet est un produit de deux facteurs **négatifs ou nuls** : en effet $b - a \leqslant 0$ puisque $a \geqslant b$, et $d - c \leqslant 0$ puisque $c \geqslant d$. Leur produit est donc **positif ou nul**.

Au total,

$$P(-a) \times P(-c) \leqslant 0 .$$

### On conclut

Deux cas.

- **Si $P(-a) \times P(-c) = 0$**, alors $P(-a) = 0$ ou $P(-c) = 0$ : $P$ possède déjà une racine réelle.
- **Si $P(-a) \times P(-c) < 0$**, alors $P(-a)$ et $P(-c)$ sont de signes opposés. Comme $P$ est une fonction polynôme, donc continue, elle s'annule entre $-a$ et $-c$ : $P$ possède une racine réelle.

Dans les deux cas, $P$ a au moins une racine réelle. Or $P$ est un trinôme du second degré à coefficients réels : s'il avait une racine non réelle, il en aurait deux, conjuguées, et aucune réelle. Donc **ses deux racines sont réelles**.

$$\boxed{P \text{ a toutes ses racines réelles.}}$$

## Going further

Cette démonstration est un bon exemple de ce qu'on gagne à **ne pas foncer sur le calcul**. Le discriminant

$$\Delta = (a+b+c+d)^2 - 8(ad+bc)$$

est bien positif ou nul sous les hypothèses, mais le vérifier directement demande une factorisation pénible. En cherchant plutôt **où le polynôme change de signe**, on remplace ce calcul par deux évaluations immédiates.

Retiens le principe général : *un trinôme de coefficient dominant positif qui prend une valeur négative ou nulle a forcément deux racines réelles.*

Pour t'entraîner : que devient l'énoncé si l'on suppose au contraire $a \geqslant b$ et $c \leqslant d$ ? Cherche un contre-exemple.
