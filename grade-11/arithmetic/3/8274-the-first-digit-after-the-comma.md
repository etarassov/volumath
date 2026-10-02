---
id: "8274"
title: "Le premier chiffre après la virgule"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [racine-carree, encadrement, developpement-decimal, grands-nombres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, La Muraille"
  reference: "PolycopieV1-1.pdf, chapitre IX « La Muraille », exercice 40 (niveau 1). La Muraille ne publie pas de solutions."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soit $n$ un entier plus grand que $10^{2018}$.

Quel est le premier chiffre après la virgule dans l'écriture décimale de

$$\sqrt{n^2 + n + 200} \ ?$$

## Hints

1. Le nombre $n^2 + n + 200$ est à peine plus grand que $n^2$. La racine cherchée est donc un
   tout petit peu plus grande que $n$.
2. Pour connaître le premier chiffre après la virgule, il suffit d'encadrer la racine entre
   $n + \text{0,}d$ et $n + \text{0,}(d+1)$ pour le bon chiffre $d$.
3. Toutes les quantités en jeu étant positives, comparer deux racines revient à comparer leurs
   carrés. Calcule $\left(n + \text{0,5}\right)^2$.
4. Calcule ensuite $\left(n + \text{0,6}\right)^2$ et compare à $n^2 + n + 200$. C'est ici que
   l'hypothèse « $n$ est énorme » sert.

## Solution

**Réponse : le premier chiffre après la virgule est $5$.**

**On devine la réponse.**

$\sqrt{n^2} = n$, et $n^2+n+200$ dépasse à peine $n^2$. La racine vaut donc $n$ plus un petit
quelque chose. Montrons que ce petit quelque chose est compris entre $\text{0,5}$ et
$\text{0,6}$.

**Minoration.**

$$\left(n + \text{0,5}\right)^2 = n^2 + n + \text{0,25} \ < \ n^2 + n + 200 .$$

Les deux membres étant positifs, on en déduit

$$n + \text{0,5} \ < \ \sqrt{n^2+n+200} .$$

**Majoration.**

$$\left(n + \text{0,6}\right)^2 = n^2 + \text{1,2}\,n + \text{0,36} .$$

Comparons avec $n^2 + n + 200$ : la différence vaut

$$\left(n^2 + \text{1,2}\,n + \text{0,36}\right) - \left(n^2 + n + 200\right) = \text{0,2}\,n -
\text{199,64} .$$

Cette différence est strictement positive dès que $n > \dfrac{\text{199,64}}{\text{0,2}} =
\text{998,2}$, donc en particulier pour $n > 10^{2018}$. Ainsi

$$\left(n + \text{0,6}\right)^2 \ > \ n^2+n+200, \qquad \text{donc} \qquad n + \text{0,6} \ > \
\sqrt{n^2+n+200} .$$

**Conclusion.**

$$n + \text{0,5} \ < \ \sqrt{n^2+n+200} \ < \ n + \text{0,6} .$$

La partie entière de la racine est donc $n$, et sa partie décimale est strictement comprise
entre $\text{0,5}$ et $\text{0,6}$ : le premier chiffre après la virgule est

$$\boxed{5} .$$

**Remarque.** L'hypothèse $n > 10^{2018}$ est bien plus forte que nécessaire : il suffisait de
$n \ge 999$. Les énoncés de concours aiment ces bornes gigantesques, qui servent surtout à
décourager la calculatrice.

## Going further

1. À partir de quelle valeur exacte de $n$ la réponse est-elle $5$ ? Que vaut le premier chiffre
   après la virgule pour $n = 10$ ? Pour $n = 100$ ?
2. Quel est le premier chiffre après la virgule de $\sqrt{n^2 + 3n + 7}$ pour $n$ très grand ?
3. Montrer que pour $n$ assez grand, $\sqrt{n^2+n+200}$ n'est jamais un entier.
