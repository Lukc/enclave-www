#!/usr/bin/env moon

{:render_html} = require "lapis.html"

-- FIXME: XHTML, because it’s better, because.

page = (f) ->
  '<?xml version="1.0" encoding="utf-8"?>\n' ..
  '<?xml-stylesheet href="enclave.css"?>\n' ..
  "<!DOCTYPE HTML>\n" ..
  render_html ->
    html {
      lang: "fr"
      "xml:lang": "fr"
      xmlns: "http://www.w3.org/1999/xhtml"
    }, ->
      head ->
      body ->
        raw render_html f

print page ->
  div ->
      header ->
      section class: "hero is-primary", ->
        div class: "hero-body", ->
          div class: "container", ->
            h1 class: "title is-1", "Projet Enclave (nom temporaire)"

  section class: "section", ->
    div class: "container", ->
      h4 class: "title is-3", "Le projet en bref"

      div class: "content", ->
        p [[
          Contrairement à d'autres projets éco-villages, nous acceptons parfaitement la technologie.
          Le projet se veut écologique, parce que nous pensons cela nécessaire ; préserver la nature c'est préserver l'être humain.
          L'enclave est un projet collectif: nous souhaitons mettre en place un système socialiste, l'argent est partagé et mis en commun.
          Notre environnement devra être passif et autonome, afin de nous simplifier la vie (gain de temps, d'argent, d'énergie).
        ]]

        p [[
          Un de nos objectifs est de montrer qu'un autre mode de vie est possible, montrer un exemple de solution à nos différents problèmes de surpopulation dans les villes,
          d'alimentation via la permaculture,
          et de consommation et de récupération d'énergie…
        ]]

        p [[
          Pour finir, notre projet est fondamentalement démocratique.
          L'ensemble des membres devront vivre ensemble, et prendre des décisions ensemble.
          Les décisions porteront sur l'avenir du projet : les différents achats (matériels et matériaux), l'inclusion ou l'exlusion de membres, les projets collectifs nécessitant un investissement, la gestion financière du projet…
        ]]

  section class: "section", ->
    div class: "container", ->
      h4 class: "title is-3", "Pourquoi"

      div class: "content", ->
        p [[
          Chaque personne a ses raisons propres de venir contribuer à notre projet.
          En voici quelques-unes des différents fondateurs.
        ]]

        p [[
          Tout d'abord, nous partons d'une réflexion commune que le salariat ne nous satisfait pas.
          Le travail tel que nous le connaissons engendre objectivement une certaine frustration (lorsque nous perdons du temps sur des activités inutiles), une fatigue morale (stress, anxiété) et physique (pour les travailleurs manuels principalement, mais aussi lorsque nous manquons d'activité sportive, rester assis toute la journée pose aussi des problèmes).
        ]]

        p [[
          Dans les fondateurs, nous avons des parents qui souhaitent voir leurs enfants grandir.
          L'enclave est un projet qui leur donne un cadre leur permettant d'avoir du temps pour éduquer, enseigner et passer du temps avec leurs enfants.
          L'éducation, aussi bien des enfants que des adultes, est un élément central au projet : vivre à plusieurs implique aussi avoir des cultures et des connaissances différentes, qui peuvent être partagées.
          Nous sommes là pour apprendre, contribuer, partager.
        ]]

        p [[
          Nous pensons également que nous pouvons faire une meilleure société que ce qui nous est proposé actuellement.
          L'adage "métro boulot dodo" est particulièrement vrai et aliénant dans notre monde, mais n'est pas une fatalité.
          Une des idées principales du projet est que nous pouvons consacrer un peu de temps pour nous nourrir et cultiver notre nourriture : il nous faut un cadre le permettant, créons-le.
          Cela nous permettra de manger plus sainement, d'avoir des activités variées, et du temps pour se cultiver.
        ]]

        p [[
          Pour certains, le projet permettra d'adopter un mode de vie un peu plus sain : dormir un peu plus ou au moins à des horaires fixes, et être plus productif.
        ]]

        p [[
          Le projet permet de contribuer à la création d'un monde meilleur, ce qui est une idée partagée par les fondateurs.
          Nous souhaitons donner un exemple d'une vie différente, qui pourrait être adoptée par le plus grand nombre.
        ]]

        p [[
          Enfin, les fondateurs pensent qu'une démocratie est nécessaire.
          En France, la démocratie est souvent mise de côté, les gens sont éloignés des décisions et ne peuvent que très brièvement participer : nous pouvons mieux faire.
          Une idée que nous partagons est que la seule manière de se réapproprier la démocratie est que tout le monde prenne part à toutes les décisions du groupe.
        ]]

  section class: "section", ->
    div class: "container", ->
      h4 class: "title is-3", "Technologie"

      div class: "content", ->
        p [[
          La technologie a pris une grande place dans notre quotidien.
          Que ce soit pour communiquer, s'informer ou se divertir, nous utilisons de l'électronique.
          Tout ceci est du confort auquel nous ne souhaitons pas renoncer.
          Notre projet n'est pas de se séparer de tout ceci, mais uniquement de l'apprécier de manière responsable.

          De plus nous pensons que la communication entre les personnes, telle que permise par Internet, est salutaire.
          Ce serait une erreur de s'en priver.
        ]]

  section class: "section", ->
    div class: "container", ->
      h4 class: "title is-3", "Écologie"

      div class: "content", ->
        p [[
          L'écologie n'est qu'un moyen : protéger l'environnement c'est se protéger nous-mêmes.
          Si notre environnement est menacé, notre nourriture l'est également, et donc par conséquent notre santé.
        ]]

  section class: "section", ->
    div class: "container", ->
      h4 class: "title is-3", "Autonomie"

      div class: "content", ->
        p [[
          L'autonomie (la vie en autarcie ou s'approchant) est un moyen pour ne plus être dépendant du système capitaliste pour les besoins vitaux (se nourrir, se loger).
          Nous pensons que cela est nécessaire pour ne plus être contraint à vivre une vie de salariat, qui force les gens faire un travail aliénant.
        ]]

        p [[
          Nous ne pensons cependant pas que l'argent est un problème en soit, et nous ne souhaitons pas vivre sans argent, mais nous n'en utiliserons pas entre nous.
          De plus, malgré notre autonomie nous conserverons des interactions fortes avec le monde extérieur.
        ]]


  section class: "section", ->
    div class: "container", ->
      h4 class: "title is-3", "Vie en communauté"

      div class: "content", ->
        p [[
          La vie en communauté a plusieurs avantages : réduire des coûts (chauffage, terrain, transports, …) et factoriser le travail (conception de l'habitat par exemple).
          Là où la vie en autarcie serait très contraignante seul (car extrèmement chronophage), elle devient envisageable à plusieurs (surtout si le groupe dépasse un certain seuil) car les tâches sont réparties.
          Seul, la moindre erreur ou le moindre problème peut devenir insurmontable (ex: maladie), le groupe est bien plus résilient, chacun prend soin des autres.
        ]]

  section class: "section", ->
    div class: "container", ->
      h4 class: "title is-3", "Prestige"

      div class: "content", ->

        p [[
          Notre démarche a pour objectif de montrer un exemple.
          Nous souhaions créer un lieu agréable à vivre, présentable au plus grand nombre comme une alternative crédible à nos sociétés.
          ]]

  section class: "section", ->
    div class: "container", ->
      h4 class: "title is-3", "Démocratie"

      div class: "content", ->

        p [[
          La démocratie est un mode de prise de décision prenant en compte les intérêts de chacun.
          Cela respecte les individus, leurs avis et points de vue, avec un rapport de force d'égal-à-égal.
          De plus, la démocratie permet de faire connaître l'avis de chacun, basé sur des connaissances ou des cultures différentes.
          Pour toutes ces raisons, nous pensons que la démocratie est nécessaire au cœur du projet.
        ]]

      section ->
        h2 "Pourquoi une Commune ?"
        p ""
        p ""
        p ""

      section ->
        div ->
          -- Alterner entre image à gauche +e texte à droite et image à droite et texte à gauche ?
          h2 "Technologie"
          p ""
      footer ->


[[

  ## koman

  ### Cohabitation

  Pour la gloire du communisme mondial.

  ### énergie

  - le Soleil et le vent
  - bois (backup)
  - biomasse
  - pas konsomer (kom 1 retard)

  ### eau

  - sources : rivières / puits / pluie

  ### alimentation

  - permaculture, duh
  - p’tet d’autres choses dans l’futur, duh (hydroponie, aquaponie, aéroponie, n-dimensional-ponie)

  ### thermo-control™

  - le soleil est notre ami
  - mais le bois aussi (mais quand même un peu moins)
  - et les serveurs aussi (comme nous ils ont une âme)

  - le sol aussi, mais que quand le soleil nous aime plus

  ### gestion des déchets

  - recyclage lala
  - nettoyer l’eau parce qu’on est des gens propres qui salissons pas l’eau d’Earth-chan

  ### économie™

  - fabriquer des vrais trucs
  - recyclage => matériaux
  - beep boop beep i'm a developer
  - devenir sensei à la place de sensei

  tl;dr les vacances c’est sérieux

  ### Finances

  - l’argent c’est une ressource commune
  - maxer farmer l'argent à plusieurs c facile (ex: investissements comme l'achat de bâtiments ou d'appartements à louer, décidé collectivement)

      = pas de prêt

      = rente, utile pour la collectivité (achats divers) et les individus lorsqu'/s'ils partent (redistribution)

  - acheter du matériel (serveurs, outils, véhicule, …) et des matériaux (si on ne trouve pas en recyclage)
  - impôts/taxes
  - TODO: trouver la forme que cela doit prendre (association, entreprise, groupement d'intérêts, ...)

  ### politicosoviétisme / être de gentils démocrates

  - décisions à l’unanimité, parce que le projet ne doit pas devenir un fardeau pour ses membres
  - les ressources mises en commun ne doivent pas être volées aux individus

  ## Est-ce qu’on est des rebelles ? mais non. Est-ce qu’on est une secte ? baaaka

  on est des gens (presque!!) normaux (ie. deux bras, deux jambes, deux yeux, deux oreilles, deux cerveaux, …)

  ## Rejoindre le projet

  Lire cette page (mdr)
  Envoyer un mail à nous (mdlol)

  période d’essai (mdr de rire)
  nous donner votre fric (lol), présent et futur (ptdr)
  proposez vos idées (projets personnels, comment on pourrait aider, tout ça => peu importe la complexité, on cherche à maxer le prestige)

  Être prêt à poser des briques à partir de ~mai 2020.

  ## personnes recherchées

  Pharmacien / médecin : parce qu'on pourrait se blesser ou être malade, et ne pas dépendre du village d'à côté où il n'y a personne c'est bien™
  Chimiste : parce qu'on va faire des expériences et ce serait bien qu'on soit sûr de pas se faire exploser, et en apprendre plus
  Physicien : pour le programme spacial
  Biologiste : pour faire pousser des plantes trop choupies et totalement comestibles
  Architecte : pour construire des maisons pas retard (passivité, confort)

]]
