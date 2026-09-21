---
id: "7428"
title: "Une somme alternée plus petite que 2/5"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [somme-alternee, regroupement, majoration, fractions]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 44 (aucune solution n'est publiée dans le polycopié)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On pose
$$S = \frac{1}{2} - \frac{1}{3} + \frac{1}{4} - \frac{1}{5} + \frac{1}{6} - \dots
- \frac{1}{999} + \frac{1}{1000}.$$

Les signes alternent : les fractions de dénominateur pair sont précédées d'un $+$, celles de
dénominateur impair d'un $-$. Le dernier terme est $+\dfrac{1}{1000}$.

Montrer que $S < \dfrac{2}{5}$.

## Hints

1. Il est hors de question de calculer $S$ exactement. Il faut le **majorer**, c'est-à-dire
   trouver un nombre plus grand que $S$ et plus petit que $\tfrac{2}{5}$.
2. Mets le premier terme à part et regroupe tout le reste par paires :
   $$S = \frac{1}{2} - \left(\frac{1}{3} - \frac{1}{4}\right) - \left(\frac{1}{5} - \frac{1}{6}\right) - \dots$$
   Vérifie que le découpage tombe juste et que chaque parenthèse est positive.
3. Tu n'as pas besoin de toutes les parenthèses : il suffit d'en garder assez pour descendre sous
   $\tfrac{2}{5}$. Essaie avec les deux premières.

## Solution

**On regroupe par paires, à partir du deuxième terme.**

Les termes de $S$, à partir du deuxième, se regroupent deux par deux :
$$S = \frac{1}{2}
- \left(\frac{1}{3} - \frac{1}{4}\right)
- \left(\frac{1}{5} - \frac{1}{6}\right)
- \dots
- \left(\frac{1}{999} - \frac{1}{1000}\right).$$

Vérifions que ce découpage est correct. Après le terme $\tfrac{1}{2}$, il reste les termes de
dénominateur $3$ à $1000$, soit $998$ termes, c'est-à-dire $499$ paires. Chaque paire est de la
forme
$$-\frac{1}{2k+1} + \frac{1}{2k+2} = -\left(\frac{1}{2k+1} - \frac{1}{2k+2}\right),$$
avec $k$ allant de $1$ à $499$. Les signes sont bien ceux de l'énoncé.

**Chaque parenthèse est positive.**

Pour tout entier $m \geq 1$,
$$\frac{1}{m} - \frac{1}{m+1} = \frac{(m+1) - m}{m(m+1)} = \frac{1}{m(m+1)} > 0.$$

Donc $S$ est égal à $\dfrac{1}{2}$ **moins** une somme de nombres tous strictement positifs.

**On ne garde que les deux premières parenthèses.**

Comme toutes les parenthèses sont positives, retirer seulement les deux premières donne déjà une
majoration :
$$S \leq \frac{1}{2} - \left(\frac{1}{3} - \frac{1}{4}\right) - \left(\frac{1}{5} - \frac{1}{6}\right).$$

Or
$$\frac{1}{3} - \frac{1}{4} = \frac{1}{12}, \qquad \frac{1}{5} - \frac{1}{6} = \frac{1}{30}.$$

Donc
$$S \leq \frac{1}{2} - \frac{1}{12} - \frac{1}{30}.$$

**Le calcul.**

Mettons tout au dénominateur $60$ :
$$\frac{1}{2} = \frac{30}{60}, \qquad \frac{1}{12} = \frac{5}{60}, \qquad \frac{1}{30} = \frac{2}{60},$$
d'où
$$S \leq \frac{30 - 5 - 2}{60} = \frac{23}{60}.$$

**La comparaison.**

Comparons $\dfrac{23}{60}$ et $\dfrac{2}{5} = \dfrac{24}{60}$. On a bien
$$\frac{23}{60} < \frac{24}{60} = \frac{2}{5}.$$

**Conclusion.**
$$S \leq \frac{23}{60} < \frac{2}{5}.$$

*Remarque.* L'inégalité est en fait large : en gardant toutes les parenthèses, on montrerait que
$S$ vaut environ $\text{0,307}$, alors que $\tfrac{2}{5} = \text{0,4}$. Deux parenthèses suffisent
largement.

## Going further

Montrer aussi que $S > \dfrac{1}{4}$. Regroupe cette fois les termes par paires **en partant du
début** : $\left(\tfrac{1}{2} - \tfrac{1}{3}\right) + \left(\tfrac{1}{4} - \tfrac{1}{5}\right) +
\dots$, puis garde assez de parenthèses pour dépasser $\tfrac{1}{4}$ (quatre suffisent).
