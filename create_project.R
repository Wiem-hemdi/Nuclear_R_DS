# create_project.R - Version corrigée et complète

cat("🚀 Création du projet Quarto - Analyse Nucléaire\n")
cat("==================================================\n\n")

# ==================== 1. CRÉATION DES DOSSIERS ====================
dirs <- c(
  "data",
  "scripts",
  "pipeline",
  "images",
  "outputs/plots",
  "outputs/tables"
)

cat("📁 Création des dossiers...\n")
for (d in dirs) {
  if (!dir.exists(d)) {
    dir.create(d, recursive = TRUE, showWarnings = FALSE)
    cat("  ✅ Créé :", d, "\n")
  } else {
    cat("  ℹ️ Existe déjà :", d, "\n")
  }
}

# ==================== 2. CRÉATION _quarto.yml ====================
cat("\n📋 Création du fichier de configuration _quarto.yml...\n")

quarto_yml_content <- 'project:
  type: website
  output-dir: _site

website:
  title: "Analyse Nucléaire - Portfolio Étudiant"
  navbar:
    left:
      - href: index.qmd
        text: "🏠 Accueil"
      - href: presentation.qmd
        text: "🎯 Présentation"
      - menu: "📊 Pipeline"
        items:
          - href: pipeline/01_import.qmd
            text: "1. Import Données"
          - href: pipeline/02_nettoyage.qmd
            text: "2. Nettoyage"
          - href: pipeline/03_analyse.qmd
            text: "3. Analyse"

format:
  html:
    theme: cosmo
    css: styles.css
    toc: true
    toc-depth: 3'

writeLines(quarto_yml_content, "_quarto.yml")
cat("✅ _quarto.yml créé\n")

# ==================== 3. CREATION DES FICHIERS QMD ====================

create_qmd <- function(file, title, subtitle="") {
  content <- paste0(
    "---\n",
    "title: \"", title, "\"\n",
    ifelse(subtitle != "", paste0("subtitle: \"", subtitle, "\"\n"), ""),
    "format:\n  html:\n    theme: cosmo\n    css: styles.css\n---\n\n",
    "# À compléter\n"
  )
  writeLines(content, file)
  cat("✅ Créé :", file, "\n")
}

cat("\n📄 Création des fichiers Quarto...\n")
create_qmd("index.qmd", "Portfolio - Analyse Nucléaire Mondiale", "Étudiant en Data Science")
create_qmd("presentation.qmd", "Présentation du Projet")
create_qmd("pipeline/01_import.qmd", "1. Import des données")
create_qmd("pipeline/02_nettoyage.qmd", "2. Nettoyage des données")
create_qmd("pipeline/03_analyse.qmd", "3. Analyse des données")

cat("\n🎉 Projet Quarto prêt !\n")
cat("Pour générer le site, exécutez : quarto render\n")
