---
id: "4817"
title: "Le coureur sur le pont de chemin de fer"
grade: 9
theme: algebra
difficulty: 4
duration_min: 35
tags: [vitesse, distance, equation, mise-en-equation, fractions]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Group A, Math Relays"
  reference: "Handout-192-208.pdf, exercice 26 (réponse dans Handout-193-208.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-192-208.pdf"
---

## Statement

Un promeneur s'est engagé sur un pont de chemin de fer. Il en a parcouru les trois huitièmes quand il entend derrière lui le sifflet d'un train qui arrive.

Il peut courir à $12$ km/h. Il se rend compte que, **dans les deux sens**, il quitterait le pont juste à l'instant où le train y arriverait :

- s'il fait demi-tour et court vers l'entrée du pont, il en sort à l'instant précis où le train atteint l'entrée ;
- s'il court vers l'autre bout, il en sort à l'instant précis où le train atteint ce bout.

Le train roule à vitesse constante. À quelle vitesse roule-t-il ?

## Hints

1. Fais un schéma : le pont, le promeneur aux trois huitièmes, le train quelque part derrière l'entrée.
2. Appelle $L$ la longueur du pont et $D$ la distance qui sépare le train de l'entrée du pont au moment du sifflet. Tu n'auras pas besoin de connaître leurs valeurs.
3. Écris les deux situations sous forme d'égalité de **durées** : le promeneur et le train mettent le même temps à arriver au même endroit.
4. Tu obtiens deux équations. Soustrais-les l'une de l'autre : $D$ disparaît, et $L$ se simplifie aussi.

## Solution

**Les notations.** Notons

- $L$ la longueur du pont,
- $D$ la distance entre le train et l'entrée du pont au moment du sifflet,
- $v = 12$ km/h la vitesse du promeneur,
- $u$ la vitesse du train, que l'on cherche.

Le promeneur se trouve à $\dfrac{3L}{8}$ de l'entrée, donc à $L - \dfrac{3L}{8} = \dfrac{5L}{8}$ de l'autre bout.

**Première situation : il fait demi-tour.** Il parcourt $\dfrac{3L}{8}$ pendant que le train parcourt $D$, et les deux arrivent en même temps à l'entrée du pont. Les durées sont égales :
$$\frac{3L}{8v} = \frac{D}{u} . \qquad (1)$$

**Deuxième situation : il continue.** Il parcourt $\dfrac{5L}{8}$ pendant que le train parcourt $D + L$ (il doit atteindre l'entrée, puis traverser tout le pont). Les deux arrivent en même temps à l'autre bout :
$$\frac{5L}{8v} = \frac{D + L}{u} . \qquad (2)$$

**On soustrait.** En retranchant $(1)$ de $(2)$ :
$$\frac{5L}{8v} - \frac{3L}{8v} = \frac{D + L}{u} - \frac{D}{u},$$
c'est-à-dire
$$\frac{2L}{8v} = \frac{L}{u}, \qquad \text{soit} \qquad \frac{L}{4v} = \frac{L}{u} .$$

La longueur $L$ n'est pas nulle, on peut donc simplifier par $L$ :
$$\frac{1}{4v} = \frac{1}{u}, \qquad \text{donc} \qquad u = 4v .$$

**On conclut.**
$$u = 4 \times 12 = 48 .$$

$$\boxed{\text{Le train roule à } 48 \text{ km/h.}}$$

**Vérification.** Prenons $L = 800$ m. Le promeneur est à $300$ m de l'entrée et à $500$ m de l'autre bout. À $12$ km/h, il met $90$ s pour faire $300$ m et $150$ s pour faire $500$ m. Le train à $48$ km/h parcourt $1200$ m en $90$ s : il était donc à $D = 1200$ m de l'entrée. En $150$ s il parcourt $2000$ m, ce qui correspond bien à $D + L = 1200 + 800 = 2000$ m. Tout colle.

**Ce qui est remarquable.** Ni la longueur du pont ni la distance du train n'interviennent dans le résultat : seule compte la position du promeneur sur le pont, ici aux trois huitièmes.

## Going further

1. Refais le calcul si le promeneur se trouve à la fraction $x$ du pont (avec $0 < x < \frac12$) au lieu des trois huitièmes. Exprime la vitesse du train en fonction de $x$ et de $v$. Que se passe-t-il quand $x$ tend vers $\dfrac{1}{2}$ ?
2. Le promeneur court à $12$ km/h et le train roule à $60$ km/h. À quelle fraction du pont le promeneur doit-il se trouver pour que les deux fuites soient aussi serrées l'une que l'autre ?
3. Si le promeneur était aux deux tiers du pont, dans quel sens aurait-il intérêt à courir ? Explique pourquoi la réponse ne dépend ni de la vitesse du train ni de la distance à laquelle il se trouve.
