# 🌐 Analyse de l'Énergie Nucléaire Mondiale (1960-2024)

[![Quarto](https://img.shields.io/badge/Quarto-1.4+-blue.svg)](https://quarto.org)
[![WebR](https://img.shields.io/badge/WebR-Enabled-green.svg)](https://docs.r-wasm.org/webr/latest/)
[![R](https://img.shields.io/badge/R-4.3+-276DC3.svg)](https://www.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> Portfolio de Data Science : Analyse approfondie des tendances mondiales de l'énergie nucléaire sur 60+ ans, combinant production énergétique, indicateurs économiques et commerce international.

---

## 📑 Table des Matières

- [À propos](#-à-propos)
- [Démo en Ligne](#-démo-en-ligne)
- [Caractéristiques](#-caractéristiques)
- [Architecture](#-architecture-du-projet)
- [Installation](#-installation)
- [Utilisation](#-utilisation)
- [Sources de Données](#-sources-de-données)
- [Pipeline d'Analyse](#-pipeline-danalyse)
- [Technologies](#-technologies-utilisées)
- [Résultats Clés](#-résultats-clés)
- [Visualisations](#-visualisations-principales)
- [Compétences](#-compétences-démontrées)
- [Déploiement](#-déploiement)
- [Contribution](#-contribution)
- [Licence](#-licence)
- [Contact](#-contact)

---

## 🎯 À propos

### Contexte du Projet

Ce projet de Data Science explore **60 ans d'histoire de l'énergie nucléaire mondiale** (1960-2024) à travers l'analyse de **5 datasets majeurs** totalisant plus de **150 000 observations**. L'objectif est de comprendre les dynamiques temporelles, géographiques et économiques qui ont façonné le secteur nucléaire mondial.

### Objectifs de Recherche

1. **Tendances temporelles** : Comment la production nucléaire a-t-elle évolué depuis 1960 ?
2. **Corrélations économiques** : Quelle relation entre PIB et adoption du nucléaire ?
3. **Mix énergétique** : Quelle place occupe le nucléaire face aux autres sources d'énergie ?
4. **Investissements** : Comment évoluent les investissements nucléaires vs renouvelables ?
5. **Commerce international** : Quels sont les principaux flux commerciaux nucléaires ?

### Pourquoi ce Projet ?

- ⚛️ **Pertinence** : Débat actuel sur la transition énergétique et le rôle du nucléaire
- 📊 **Complexité** : Fusion de 5 sources hétérogènes nécessitant un pipeline ETL robuste
- 🌍 **Impact** : Enjeux géopolitiques, climatiques et économiques majeurs
- 💡 **Innovation** : Utilisation de WebR pour une analyse 100% reproductible dans le navigateur

---

## 🌐 Démo en Ligne

**🔗 [Voir le site web interactif](https://wiem-hemdi.github.io/Nuclear_R_DS/)**


**Captures d'écran :**

| Page d'accueil | Analyse Interactive | Résultats |
|----------------|---------------------|-----------|
| ![Accueil](images/screenshot-home.png) | ![Pipeline](images/screenshot-analysis.png) | ![Résultats](images/screenshot-results.png) |

---

## ✨ Caractéristiques

### Fonctionnalités Principales

✅ **Pipeline ETL Complet**
- Import automatisé de 5 datasets
- Nettoyage avec gestion avancée des valeurs manquantes
- Fusion multi-sources par clés composées (Country + Year)
- Validation de la cohérence des données

✅ **Analyses Multidimensionnelles**
- Séries temporelles (1960-2024)
- Analyses géographiques (200+ pays)
- Corrélations économiques (PIB vs production)
- Flux commerciaux internationaux

✅ **Visualisations Interactives**
- 15+ graphiques ggplot2 de qualité publication
- Graphiques interactifs avec Plotly
- Tableaux dynamiques avec DT
- Cartes de flux commerciaux

✅ **Reproductibilité Maximale**
- Code Quarto entièrement documenté
- Exécution WebR côté client (pas de serveur R)
- Environnement standardisé et isolé
- Partage facile via HTML statique

### Points Forts Techniques

🚀 **Performance** : WebR permet l'exécution R dans le navigateur  
📱 **Responsive** : Design adapté mobile/tablette/desktop  
🔒 **Sécurité** : Aucun serveur backend, isolation totale  
♻️ **Reproductibilité** : Résultats identiques à chaque exécution  
📚 **Documentation** : Code commenté + README complet  

---

## 🏗️ Architecture du Projet

### Structure des Dossiers

```
projet-nucleaire/
│
├── 📄 _quarto.yml                    # Configuration Quarto (navigation, thème)
├── 📄 index.qmd                      # Page d'accueil du portfolio
├── 📄 presentation.qmd               # Présentation du projet + architecture
├── 📄 resultats.qmd                  # Synthèse des résultats et conclusions
├── 📄 styles.css                     # Styles CSS personnalisés (optionnel)
├── 📄 README.md                      # Ce fichier
├── 📄 LICENSE                        # Licence MIT
├── 📄 .gitignore                     # Fichiers à ignorer par Git
│
├── 📂 data/                          # 📥 Données brutes (5 CSV)
│   ├── global-nuclear-energy-generation.csv      # Production nucléaire (Our World in Data)
│   ├── all_energy_statistics.csv                 # Statistiques énergétiques (ONU)
│   ├── Countries-GDP-1960-2020.csv               # PIB des pays (Banque Mondiale)
│   ├── W_E_I_World.csv                           # Investissements énergétiques (AIE)
│   └── NUCLEAR_TRADE_ATLAS_DATA_2024.csv         # Commerce nucléaire (UN Comtrade)
│
├── 📂 pipeline/                      # 🔄 Pipeline d'analyse en 3 étapes
│   ├── 01_import.qmd                 # Étape 1 : Import et exploration initiale
│   ├── 02_nettoyage.qmd              # Étape 2 : Nettoyage, transformation, fusion
│   └── 03_analyse.qmd                # Étape 3 : Analyses approfondies + visualisations
│
├── 📂 outputs/                       # 📤 Sorties générées par le pipeline
│   ├── clean_data/                   # Données nettoyées (7 CSV)
│   │   ├── nuclear_production_clean.csv
│   │   ├── energy_stats_clean.csv
│   │   ├── gdp_clean.csv
│   │   ├── merged_final.csv
│   │   ├── wei_clean.csv
│   │   ├── nuclear_trade_clean.csv
│   │   └── merged_nuclear_energy.csv
│   ├── plots/                        # Graphiques exportés (PNG/SVG)
│   └── tables/                       # Tableaux exportés (CSV/Excel)
│
├── 📂 images/                        # 🖼️ Images et diagrammes
│   ├── architecture_pipeline.png
│   ├── screenshot-home.png
│   ├── screenshot-analysis.png
│   └── screenshot-results.png
│
└── 📂 _site/                         # 🌐 Site web généré (non versionné)
    ├── index.html
    ├── presentation.html
    ├── resultats.html
    └── pipeline/
        ├── 01_import.html
        ├── 02_nettoyage.html
        └── 03_analyse.html
```

### Diagramme de l'Architecture

```
┌──────────────────────────────────────────────────────────────────────┐
│                    SOURCES DE DONNÉES                                │
│  🌍 Our World in Data │ 🏢 ONU │ 🏦 Banque Mondiale │ AIE │ Kaggle  │
└────────────────────┬─────────────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│              ÉTAPE 1 : IMPORT (01_import.qmd)               │
│  • Chargement des 5 CSV                                     │
│  • Vérification de l'intégrité                              │
│  • Exploration initiale (dimensions, types, aperçu)         │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│           ÉTAPE 2 : NETTOYAGE (02_nettoyage.qmd)            │
│  • Suppression des doublons (distinct)                      │
│  • Gestion des valeurs manquantes (NA)                      │
│  • Transformation de formats (pivot_longer/wider)           │
│  • Standardisation des colonnes (rename)                    │
│  • Filtrage (exclusion des régions, conservation pays)      │
│  • Fusion multi-sources (inner_join Country+Year)           │
│  ➡️ Outputs : 7 CSV nettoyés dans outputs/clean_data/       │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│            ÉTAPE 3 : ANALYSE (03_analyse.qmd)               │
│  📊 Analyses Temporelles                                    │
│     → Évolution production mondiale 1960-2024               │
│     → Taux de croissance par décennie                       │
│  🌍 Analyses Géographiques                                  │
│     → Top 10 producteurs + répartition régionale            │
│  💰 Analyses Économiques                                     │
│     → Corrélation PIB vs production nucléaire (R²)          │
│  💵 Analyses Investissements                                 │
│     → Nucléaire vs Renouvelables vs Fossiles               │
│  🔄 Analyses Commerciales                                    │
│     → Flux import/export + relations bilatérales           │
│  ➡️ Outputs : 15+ graphiques + 10+ tableaux                 │
└────────────────────┬────────────────────────────────────────┘
                     │
                     ▼
┌─────────────────────────────────────────────────────────────┐
│         RÉSULTATS ET VISUALISATIONS (resultats.qmd)         │
│  • Synthèse des 6 résultats clés                            │
│  • Scénarios de projection 2025-2050                        │
│  • Recommandations stratégiques                             │
└─────────────────────────────────────────────────────────────┘
```

---

## 🚀 Installation

### Prérequis

Assurez-vous d'avoir installé :

- **R** ≥ 4.3.0 ([télécharger](https://cran.r-project.org/))
- **RStudio** (recommandé) ([télécharger](https://posit.co/download/rstudio-desktop/))
- **Quarto CLI** ≥ 1.4.0 ([télécharger](https://quarto.org/docs/get-started/))
- **Git** ([télécharger](https://git-scm.com/downloads))

### Étape 1 : Cloner le Repository

```bash
# HTTPS
git clone https://github.com/wiem-hemdi/Nuclear_R_DS.git

# SSH (si vous avez configuré une clé SSH)
git clone git@github.com:wiem-hemdi/Nuclear_R_DS.git

# Entrer dans le dossier
cd Nuclear_R_DS
```

### Étape 2 : Installer les Packages R

**Option A : Automatique (recommandé)**

```r
# Dans la console R ou RStudio
install.packages(c(
  "readr",      # Import CSV rapide
  "dplyr",      # Manipulation de données
  "tidyr",      # Restructuration (pivot)
  "ggplot2",    # Graphiques statiques
  "plotly",     # Graphiques interactifs
  "knitr",      # Rendu de tableaux
  "DT",         # Tableaux interactifs
  "stringr",    # Manipulation de texte
  "scales"      # Formatage des échelles
))
```

**Option B : Depuis un fichier `requirements.R`**

```r
# Créer requirements.R avec :
packages <- c("readr", "dplyr", "tidyr", "ggplot2", "plotly", 
              "knitr", "DT", "stringr", "scales")
install.packages(setdiff(packages, rownames(installed.packages())))

# Puis exécuter :
source("requirements.R")
```

### Étape 3 : Télécharger les Données

Téléchargez les 5 fichiers CSV et placez-les dans le dossier `data/` :

1. **global-nuclear-energy-generation.csv**
   - Source : [Our World in Data - kaggle](https://www.kaggle.com/datasets/jorgesandoval/global-nuclear-energy-generation)
   - Clic droit > Download CSV

2. **all_energy_statistics.csv**
   - Source : [UN Energy Statistics Database - Kaggle](https://www.kaggle.com/datasets/unitednations/international-energy-statistics)
   - Télécharger le dataset complet

3. **Countries-GDP-1960-2020.csv**
   - Source : [World Bank Open Data](https://data.worldbank.org/indicator/NY.GDP.MKTP.CD)
   - Format : CSV, toutes les années

4. **W_E_I_World.csv**
   - Source : [IEA World Energy Investment](https://www.iea.org/data-and-statistics/data-product/world-energy-investment-2023-datafile)
   - Télécharger le fichier Excel > Exporter en CSV

5. **NUCLEAR_TRADE_ATLAS_DATA_2024.csv**
   - Source : [UN Comtrade](https://comtradeplus.un.org/)
   - Filtres : HS Code 84 (Nuclear reactors), Years 2000-2024
---

## 💻 Utilisation

### Générer le Site Web

**Option : Ligne de commande**

```bash
# À la racine du projet
quarto render

# Le site est généré dans _site/
# Ouvrir _site/index.html dans un navigateur
```
### Exécuter le Pipeline Manuellement

Si vous voulez exécuter les étapes séparément :

```r
# Dans R ou RStudio

# Étape 1 : Import
quarto::quarto_render("pipeline/01_import.qmd")

# Étape 2 : Nettoyage
quarto::quarto_render("pipeline/02_nettoyage.qmd")

# Étape 3 : Analyse
quarto::quarto_render("pipeline/03_analyse.qmd")
```

### Navigation dans le Site

Une fois généré, le site web contient :

- **🏠 Accueil** (`index.html`) : Présentation personnelle + aperçu du projet
- **🎯 Présentation** (`presentation.html`) : Architecture, méthodologie, technologies
- **📊 Pipeline** :
  - **Import** (`pipeline/01_import.html`) : Chargement et exploration
  - **Nettoyage** (`pipeline/02_nettoyage.html`) : Préparation et fusion
  - **Analyse** (`pipeline/03_analyse.html`) : Analyses et visualisations
- **📈 Résultats** (`resultats.html`) : Synthèse et conclusions

---

## 📊 Sources de Données

### Vue d'Ensemble

| # | Dataset | Description | Source | Période | Obs. | Variables |
|---|---------|-------------|--------|---------|------|-----------|
| 1 | **global-nuclear-energy-generation.csv** | Production nucléaire annuelle (TWh) | Our World in Data | 1965-2022 | 6,842 | 3 |
| 2 | **all_energy_statistics.csv** | Statistiques énergétiques complètes | UN Energy Statistics | 1990-2020 | 87,453 | 8 |
| 3 | **Countries-GDP-1960-2020.csv** | PIB des pays (USD courants) | Banque Mondiale | 1960-2020 | 16,226 | 62 |
| 4 | **W_E_I_World.csv** | Investissements énergétiques mondiaux | Agence Internationale Énergie | 2015-2023 | 135 | 15 |
| 5 | **NUCLEAR_TRADE_ATLAS_DATA_2024.csv** | Flux commerciaux nucléaires | UN Comtrade | 2000-2024 | 42,187 | 12 |

**Total : 152,843 observations**

### Détails par Dataset

#### 1. Production Nucléaire Mondiale

**Fichier** : `global-nuclear-energy-generation.csv`  
**Source** : Our World in Data (compilation de BP Statistical Review, IEA, IAEA)  
**URL** : https://ourworldindata.org/nuclear-energy

**Variables** :
- `Entity` (Country) : Nom du pays/région
- `Code` : Code ISO-3 du pays
- `Year` : Année (1965-2022)
- `Electricity from nuclear (TWh)` : Production en térawattheures

**Couverture** : 200+ pays et régions

---

#### 2. Statistiques Énergétiques

**Fichier** : `all_energy_statistics.csv`  
**Source** : UN Energy Statistics Database  
**URL** : https://unstats.un.org/unsd/energystats/

**Variables** :
- `country_or_area` : Nom du pays
- `year` : Année (1990-2020)
- `category` : Type d'énergie (nuclear_electricity, hydro, solar, wind, coal, gas...)
- `quantity` : Quantité produite/consommée
- `unit` : Unité de mesure (GWh, TJ...)
- `transaction` : Type de flux (production, importation, consommation...)
- `commodity_transaction` : Détail du produit
- `quantity_footnotes` : Notes méthodologiques

**Catégories** : 50+ types d'énergie

---

#### 3. PIB des Pays

**Fichier** : `Countries-GDP-1960-2020.csv`  
**Source** : Banque Mondiale - World Development Indicators  
**URL** : https://data.worldbank.org/indicator/NY.GDP.MKTP.CD

**Variables** :
- `Country Name` : Nom du pays
- `Country Code` : Code ISO-3
- `1960` à `2020` : PIB annuel en USD courants (62 colonnes)

**Format original** : Large (une colonne par année)  
**Format après nettoyage** : Long (une ligne par pays-année)

**Couverture** : 266 pays/régions/agrégats

---

#### 4. Investissements Énergétiques Mondiaux

**Fichier** : `W_E_I_World.csv`  
**Source** : IEA - World Energy Investment  
**URL** : https://www.iea.org/reports/world-energy-investment

**Variables** (après transformation) :
- `Year` : Année (2015-2023)
- `Nuclear` : Investissements nucléaires (Mrd USD)
- `Renewables` : Investissements renouvelables
- `Fossil-fuels` : Investissements fossiles
- `Total-Billion-USD-2023-MER` : Investissements totaux
- + 10 autres catégories détaillées

**Format original** : Catégories en lignes, années en colonnes  
**Format après nettoyage** : Années en lignes, catégories en colonnes

---

#### 5. Commerce Nucléaire International

**Fichier** : `NUCLEAR_TRADE_ATLAS_DATA_2024.csv`  
**Source** : UN Comtrade Database  
**URL** : https://comtradeplus.un.org/

**Variables** :
- `REPORTER` : Pays déclarant
- `PARTNER` : Pays partenaire
- `FLOW` : Import ou Export
- `PERIOD` : Date (format YYYYMMDD)
- `VALUE USD` : Valeur en dollars US
- `NETWEIGHT KG` : Poids net en kg
- `QUANTITY` : Quantité (unité variable)
- `NUCLEAR COMMODITY` : Type de produit nucléaire

**Codes HS** : 8401 (réacteurs nucléaires), 2844 (éléments radioactifs)

**Couverture** : 150+ pays, 2000-2024

---

**Outputs** :
- 7 fichiers CSV nettoyés dans `outputs/clean_data/`
- Rapport de validation (NA, doublons, cohérence des clés)

---
