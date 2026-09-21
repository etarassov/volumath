---
id: "7050"
title: "Partager les potins au téléphone"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [minimum, principe extremal, construction, borne inferieure]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des avancés"
  reference: "stage_junior_2012.pdf, mardi : combinatoire (principe extrémal), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Soit $n \geq 2$. Chacune de $n$ amies connaît un potin, et elle est la seule à le connaître :
il y a donc $n$ potins différents.

Pour tout se raconter, elles se téléphonent deux par deux. Attention à la règle : lors d'un
coup de téléphone, **une seule des deux parle** et raconte tout ce qu'elle sait ; l'autre se
contente d'écouter.

Quel est le **nombre minimal** de coups de téléphone nécessaires pour qu'à la fin, chacune des
$n$ amies connaisse les $n$ potins ?

## Hints

1. Fais le cas $n = 2$, puis $n = 3$, à la main. Combien d'appels te faut-il ?
2. Une question de minimum se traite toujours en deux moitiés : montrer qu'un certain nombre
   d'appels **suffit**, et montrer qu'on ne peut pas faire **mieux**.
3. Pour la construction : choisis une amie $f$ à l'avance. Que se passe-t-il si tout le monde
   lui téléphone, puis qu'elle rappelle tout le monde ?
4. Pour la borne, repère l'instant où la **première** amie sait tout, et coupe la partie en
   deux à cet instant.
5. Deux remarques font tout le travail : un appel a **un seul locuteur**, et un appel a **un
   seul auditeur**.

## Solution

La réponse est $\boxed{2(n-1)}$ coups de téléphone.

**Première moitié : $2(n-1)$ appels suffisent.**

Choisissons une amie $f$ une fois pour toutes.

1. Chacune des $n - 1$ autres amies téléphone à $f$ et lui raconte ce qu'elle sait. Cela fait
   $n - 1$ appels, au bout desquels $f$ connaît les $n$ potins.
2. Puis $f$ rappelle chacune des $n-1$ autres et lui raconte tout. Cela fait $n-1$ appels de
   plus.

À la fin, tout le monde sait tout, et on a passé $2(n-1)$ appels.

**Seconde moitié : on ne peut pas faire mieux.**

Prenons n'importe quelle suite d'appels qui réussit. Repérons la **première** amie à connaître
les $n$ potins, appelons-la $f$, et appelons $T$ l'appel au bout duquel elle vient de tout
apprendre.

Cet instant $T$ coupe la partie en deux, et on va compter séparément de chaque côté.

*Avant $T$ (cet appel compris) : au moins $n-1$ appels.*

Soit $A$ une amie autre que $f$. Son potin est connu de $f$ à l'instant $T$. Pour cela, il a
bien fallu que ce potin sorte de la tête de $A$, c'est-à-dire qu'il y ait eu, au plus tard à
l'instant $T$, un appel **au cours duquel $A$ était celle qui parle**.

Or un appel n'a **qu'un seul locuteur**. À deux amies $A$ différentes correspondent donc deux
appels différents. Comme il y a $n-1$ amies autres que $f$, cela fait au moins $n-1$ appels
jusqu'à $T$ compris.

*Après $T$ : au moins $n-1$ appels.*

À l'instant $T$, $f$ est la première à tout savoir : aucune des $n-1$ autres ne connaît donc
encore les $n$ potins. Chacune d'elles doit donc, plus tard, apprendre quelque chose,
c'est-à-dire **écouter** au moins un appel après $T$.

Or un appel n'a **qu'un seul auditeur**. À deux amies différentes correspondent donc deux
appels différents, et cela fait au moins $n-1$ appels après $T$.

*Total.*

Les appels d'avant $T$ (celui-ci compris) et ceux d'après $T$ sont bien sûr deux paquets
distincts. Le nombre total d'appels est donc au moins
$$(n-1) + (n-1) = 2(n-1) .$$

**Conclusion.** Le minimum vaut exactement $2(n-1)$, et la méthode décrite plus haut
l'atteint.

## Going further

Le ressort de la démonstration est le choix de l'instant $T$ : celui où **la première** amie
devient omnisciente. C'est le principe extrémal, appliqué au temps plutôt qu'à un objet.

Remarque aussi la symétrie parfaite des deux comptages : avant $T$, on compte les locuteurs ;
après $T$, on compte les auditeurs. Chaque moitié utilise exactement l'une des deux moitiés de
la règle du jeu.

Change maintenant la règle : lors d'un appel, les deux amies se racontent **mutuellement**
tout ce qu'elles savent. Le minimum devient $2n - 4$ pour $n \geq 4$, et la démonstration est
nettement plus difficile. Cherche déjà à réaliser les $4$ appels nécessaires pour $n = 4$.
