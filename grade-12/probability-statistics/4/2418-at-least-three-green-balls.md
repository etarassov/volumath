---
id: "2418"
title: "Au moins trois boules vertes"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite-conditionnelle, denombrement, coefficient-binomial, tirage-sans-remise]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Conditional Probability"
  reference: "Handout-498-578.pdf, exercice 2a et 2b (réponses dans Handout-499-578.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-498-578.pdf"
---

## Statement

Une urne contient $15$ boules : $5$ vertes, $6$ rouges et $4$ jaunes. On en tire $4$, sans remise.

1. Un joueur tire les quatre boules d'un coup et regarde le résultat. On lui annonce qu'il y a **au moins deux** boules vertes. Quelle est alors la probabilité qu'il y en ait au moins trois ?
2. Un autre joueur tire les quatre boules **une par une**. Les deux premières sont vertes. Quelle est alors la probabilité qu'il obtienne au moins trois boules vertes en tout ?
3. Les deux réponses sont très différentes. Expliquer pourquoi.

## Hints

1. Pour la question 1, note $V_k$ l'événement « le tirage contient exactement $k$ boules vertes » et calcule le nombre de tirages réalisant $V_2$, $V_3$, $V_4$.
2. Comme tous les tirages de $4$ boules parmi $15$ sont équiprobables, tu peux travailler uniquement avec des nombres de tirages, sans jamais diviser par $\binom{15}{4}$.
3. Pour la question 2, oublie complètement les deux boules déjà sorties : il reste une urne de $13$ boules, dont $3$ vertes, et deux tirages à faire. Que faut-il pour atteindre trois vertes au total ?
4. Pour la question 3, demande-toi dans chaque cas si l'expérience est terminée ou non au moment où l'on reçoit l'information.

## Solution

### 1. Sachant qu'il y a au moins deux vertes

Un tirage est un choix de $4$ boules parmi $15$ ; il y a $\binom{15}{4} = 1365$ tirages, tous équiprobables.

Notons $V_k$ l'événement « le tirage contient exactement $k$ boules vertes ». Pour réaliser $V_k$, on choisit $k$ boules parmi les $5$ vertes et $4-k$ parmi les $10$ autres :

$$\#V_2 = \binom{5}{2}\binom{10}{2} = 10 \times 45 = 450 , \qquad \#V_3 = \binom{5}{3}\binom{10}{1} = 10 \times 10 = 100 , \qquad \#V_4 = \binom{5}{4}\binom{10}{0} = 5 .$$

L'événement « au moins trois vertes » est inclus dans « au moins deux vertes », donc

$$P(\ge 3 \text{ vertes} \mid\ \ge 2 \text{ vertes}) = \frac{\#V_3 + \#V_4}{\#V_2 + \#V_3 + \#V_4} = \frac{100 + 5}{450 + 100 + 5} = \frac{105}{555} = \frac{7}{37} \approx \text{0,189} .$$

*(Les nombres de tirages suffisent : en divisant numérateur et dénominateur par $1365$ on retrouverait exactement le quotient des probabilités.)*

### 2. Sachant que les deux premières boules tirées sont vertes

Les deux premières boules sont sorties et sont vertes. Il reste dans l'urne $13$ boules, dont $3$ vertes seulement, et il reste deux boules à tirer.

Obtenir au moins trois vertes en tout revient à obtenir **au moins une verte** parmi les deux boules qui restent à tirer. Passons par l'événement contraire : aucune verte, c'est-à-dire deux boules choisies parmi les $10$ non vertes.

$$P(\text{aucune verte dans les deux dernières}) = \frac{\binom{10}{2}}{\binom{13}{2}} = \frac{45}{78} = \frac{15}{26} .$$

D'où

$$P(\ge 3 \text{ vertes} \mid \text{les deux premières sont vertes}) = 1 - \frac{15}{26} = \frac{11}{26} \approx \text{0,423} .$$

### 3. Pourquoi un tel écart

Les deux informations se ressemblent, mais elles n'arrivent pas au même moment.

*Dans la question 2*, l'expérience n'est pas finie : deux vertes sont déjà acquises et **il reste deux tirages** pour en trouver une troisième. Il y a encore deux occasions, et la probabilité est forte.

*Dans la question 1*, l'expérience est terminée. « Au moins deux vertes » regroupe trois situations : exactement deux, exactement trois, exactement quatre. Or la première est de très loin la plus fréquente : $450$ tirages contre $105$. Apprendre qu'il y a au moins deux vertes, c'est donc surtout apprendre qu'il y en a probablement exactement deux, auquel cas il est trop tard pour en avoir trois.

Autrement dit, l'événement de la question 2 est **plus précis** : il dit non seulement combien de vertes on a déjà, mais aussi qu'il reste des tirages à venir. C'est un bon rappel qu'en probabilité conditionnelle, il faut conditionner par l'information réellement reçue, et non par un résumé approximatif de cette information.

## Going further

1. Calculer $P(\ge 2 \text{ vertes})$ et $P(\ge 3 \text{ vertes})$ sans conditionnement, puis vérifier le résultat de la question 1 par la formule $P(C \mid D) = \dfrac{P(C)}{P(D)}$, valable lorsque $C \subset D$.
2. Question 2, mais avec « les deux premières boules sont vertes » remplacé par « la première boule est verte ».
3. Reprendre les deux questions si les tirages se font **avec** remise. Les deux réponses coïncident-elles alors ?
