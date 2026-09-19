---
id: "1202"
title: "Le dé à N faces lancé N fois"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 35
tags: [probabilite, independance, limite, logarithme, nombre-e]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, «Irrational Numbers Part II: The Number e»"
  reference: "Handout-4425-4240.pdf, problèmes 2 et 13 (réponses dans Handout-4426-4240.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4425-4240.pdf"
---

## Statement

Alice et Bruno jouent au jeu suivant. Bruno choisit un entier $N \geqslant 2$, puis lance $N$ fois un dé équilibré à $N$ faces, numérotées de $1$ à $N$. Alice gagne si le $1$ sort au moins une fois ; sinon, c'est Bruno qui gagne.

1. Calculer la probabilité $q_N$ que Bruno gagne, en fonction de $N$. Donner sa valeur exacte pour $N = 5$.
2. Calculer $q_{10}$, $q_{15}$ et $q_{20}$ à la calculatrice, à $10^{-4}$ près.
3. Bruno aimerait choisir $N$ pour maximiser ses chances. Montrer que c'est peine perdue : déterminer la limite de $q_N$ quand $N$ tend vers $+\infty$.
4. Bruno a-t-il, pour un certain $N$, plus d'une chance sur trois de gagner ?

## Hints

1. Les $N$ lancers sont indépendants. Quelle est la probabilité que le $1$ ne sorte pas à un lancer donné ?
2. Pour la limite, il est difficile de travailler directement sur $\left(1 - \frac{1}{N}\right)^{N}$ : passer au logarithme népérien transforme l'exposant en facteur.
3. On obtient $\ln q_N = N \ln\!\left(1 - \dfrac{1}{N}\right)$. Poser $h = \dfrac{1}{N}$, qui tend vers $0$.
4. On sait que $\displaystyle\lim_{h \to 0} \frac{\ln(1+h)}{h} = 1$ : c'est le nombre dérivé de $x \mapsto \ln(1+x)$ en $0$.
5. Pour la dernière question, étudier le sens de variation de la suite $(q_N)$ à la calculatrice, puis comparer sa limite à $\frac{1}{3}$.

## Solution

**1. La probabilité que Bruno gagne.**

À chaque lancer, le dé donne un résultat parmi $N$, tous équiprobables. La probabilité de **ne pas** obtenir $1$ à un lancer donné vaut donc

$$1 - \frac{1}{N} = \frac{N-1}{N}.$$

Les $N$ lancers sont indépendants, et Bruno gagne exactement lorsque le $1$ n'apparaît à aucun des $N$ lancers. Donc

$$q_N = \left(1 - \frac{1}{N}\right)^{\!N}.$$

Pour $N = 5$ :

$$q_5 = \left(\frac{4}{5}\right)^{\!5} = \frac{1024}{3125} = \text{0,32768}.$$

**2. Quelques valeurs.**

$$q_{10} = \left(\frac{9}{10}\right)^{\!10} \approx \text{0,3487}, \qquad q_{15} = \left(\frac{14}{15}\right)^{\!15} \approx \text{0,3553}, \qquad q_{20} = \left(\frac{19}{20}\right)^{\!20} \approx \text{0,3585}.$$

La probabilité augmente, mais très lentement.

**3. La limite.**

Comme $q_N > 0$, on peut passer au logarithme népérien :

$$\ln q_N = N \ln\!\left(1 - \frac{1}{N}\right).$$

Posons $h = -\dfrac{1}{N}$. Quand $N \to +\infty$, $h \to 0$ et $N = -\dfrac{1}{h}$, donc

$$\ln q_N = -\frac{\ln(1+h)}{h}.$$

Or la fonction $f : x \mapsto \ln(1+x)$ est dérivable en $0$, avec $f(0) = 0$ et $f'(0) = 1$. Par définition du nombre dérivé,

$$\lim_{h \to 0} \frac{\ln(1+h)}{h} = \lim_{h \to 0} \frac{f(h) - f(0)}{h - 0} = f'(0) = 1.$$

Donc $\ln q_N \to -1$, puis, par continuité de l'exponentielle,

$$\lim_{N \to +\infty} q_N = e^{-1} = \frac{1}{e} \approx \text{0,3679}.$$

**4. Plus d'une chance sur trois ?**

Oui. Déjà $q_{10} \approx \text{0,3487} > \dfrac{1}{3} \approx \text{0,3333}$.

En revanche Bruno ne dépassera jamais $\dfrac{1}{e} \approx \text{0,368}$ : on peut vérifier (par exemple en étudiant $N \mapsto N\ln\left(1-\frac1N\right)$) que la suite $(q_N)$ est croissante et majorée par sa limite $\dfrac{1}{e}$. Quel que soit le dé choisi, Bruno perd plus souvent qu'il ne gagne.

**Conclusion.** $q_N = \left(1 - \dfrac{1}{N}\right)^{N}$, qui vaut $\dfrac{1024}{3125}$ pour $N = 5$ et tend vers $\dfrac{1}{e} \approx \text{0,368}$ quand $N$ grandit. Bruno a un peu plus d'une chance sur trois de gagner, jamais davantage.

## Going further

1. Alice propose une variante : le dé a $N$ faces mais on le lance $2N$ fois. Quelle est alors la limite de la probabilité que le $1$ ne sorte jamais ?
2. Montrer plus généralement que $\left(1 + \dfrac{x}{N}\right)^{N}$ tend vers $e^{x}$ quand $N \to +\infty$, pour tout réel $x$.
