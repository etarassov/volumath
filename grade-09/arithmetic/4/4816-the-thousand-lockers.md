---
id: "4816"
title: "Les mille casiers"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [diviseurs, carre-parfait, parite, denombrement]
adapted_from: null
see_also: ["0303", "5916"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Math Relays"
  reference: "Handout-192-208.pdf, exercice 22 (réponse dans Handout-193-208.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-192-208.pdf"
---

## Statement

Un collège possède $1000$ casiers alignés, numérotés de $1$ à $1000$, et $1000$ élèves. Au départ, tous les casiers sont **fermés**.

Les élèves passent l'un après l'autre :

- le $1^{\text{er}}$ élève ouvre tous les casiers ;
- le $2^{\text{e}}$ élève change l'état d'un casier sur deux : les casiers $2$, $4$, $6$, ... ;
- le $3^{\text{e}}$ élève change l'état d'un casier sur trois : les casiers $3$, $6$, $9$, ... ;
- et ainsi de suite : le $k$-ième élève change l'état des casiers dont le numéro est un multiple de $k$.

« Changer l'état » veut dire : ouvrir le casier s'il est fermé, le fermer s'il est ouvert.

Après le passage du $1000^{\text{e}}$ élève, combien de casiers sont ouverts ?

## Hints

1. Prends un casier précis, par exemple le numéro $12$, et fais la liste des élèves qui le touchent. Quel est le lien entre ces numéros d'élèves et le nombre $12$ ?
2. Un casier est touché par l'élève $k$ exactement quand $k$ divise son numéro. Le casier finit donc ouvert si et seulement si son numéro a un nombre **impair** de diviseurs.
3. Les diviseurs vont par paires : si $d$ divise $n$, alors $\dfrac{n}{d}$ aussi. Une paire compte pour deux diviseurs... sauf dans un cas. Lequel ?
4. Fais la liste des nombres de $1$ à $20$ qui ont un nombre impair de diviseurs. Que remarques-tu ?

## Solution

**Qui touche quel casier ?** L'élève numéro $k$ change l'état des casiers dont le numéro est un multiple de $k$. Autrement dit, le casier numéro $n$ est touché exactement par les élèves dont le numéro **divise** $n$.

Le casier $12$, par exemple, est touché par les élèves $1$, $2$, $3$, $4$, $6$ et $12$ : six élèves.

**Ouvert ou fermé ?** Le casier part fermé et change d'état à chaque passage. Après un nombre pair de changements il est de nouveau fermé, après un nombre impair il est ouvert. Donc :

> le casier $n$ finit ouvert si et seulement si $n$ a un nombre **impair** de diviseurs.

Le casier $12$ a six diviseurs, un nombre pair : il finit fermé.

**Quels nombres ont un nombre impair de diviseurs ?** Rangeons les diviseurs de $n$ par paires : à chaque diviseur $d$ on associe son partenaire $\dfrac{n}{d}$, qui est aussi un diviseur puisque $n = d \times \dfrac{n}{d}$. Et le partenaire du partenaire est $d$ lui-même, donc ce rangement découpe bien les diviseurs en paires.

Par exemple pour $n = 12$ : $\{1 \,;\, 12\}$, $\{2 \,;\, 6\}$, $\{3 \,;\, 4\}$. Trois paires, donc six diviseurs.

Une paire contient deux diviseurs différents, **sauf** quand $d$ est son propre partenaire, c'est-à-dire quand
$$d = \frac{n}{d}, \qquad \text{soit} \qquad d^2 = n .$$

Cela n'arrive que si $n$ est un carré parfait, et dans ce cas il y a exactement un diviseur solitaire, à savoir $d = \sqrt{n}$.

Par exemple pour $n = 16$ : $\{1 \,;\, 16\}$, $\{2 \,;\, 8\}$, et $4$ tout seul. Cinq diviseurs, nombre impair.

**Conclusion partielle :** le nombre de diviseurs de $n$ est impair si et seulement si $n$ est un carré parfait.

**On compte.** Il reste à compter les carrés parfaits entre $1$ et $1000$ :
$$1^2 = 1, \quad 2^2 = 4, \quad 3^2 = 9, \quad \ldots, \quad 31^2 = 961, \quad 32^2 = 1024 .$$
Comme $961 \leqslant 1000 < 1024$, les carrés parfaits qui conviennent sont $1^2, 2^2, \ldots, 31^2$.

$$\boxed{31 \text{ casiers restent ouverts : les casiers } 1, 4, 9, 16, \ldots, 961.}$$

## Going further

1. Combien de casiers sont ouverts si le collège en compte $10\,000$ ? Et $n$ en général ?
2. Et si le premier élève ne passait pas, c'est-à-dire si l'on commençait au deuxième ? Quels casiers seraient alors ouverts ?
3. Quel est le casier ouvert le plus proche du numéro $500$ ? Et combien de casiers séparent deux casiers ouverts consécutifs, quand on avance dans la rangée ?
