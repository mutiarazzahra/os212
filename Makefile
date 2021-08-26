# REV07 Thu 26 Aug 2021 21:13:00 WIB
# START Thu 26 Aug 2021 20:00:00 WIB

ALL: 000.md

000.md: 000.pmd _config.yml Gemfile _layouts/default.html Makefile index.md about.md tips.md links.md \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 000.pmd > 000.md
	tar cfj ./template.tar.bz2 _config.yml .dojekyll .gitignore .template .shsh Gemfile LICENSE Makefile *.ico *.md *.pmd assets/ _includes/ _layouts/ SandBox/
	zip -r ./template.zip _config.yml .dojekyll .gitignore .template .shsh Gemfile LICENSE Makefile *.ico *.md *.pmd assets/ _includes/ _layouts/ SandBox/

.phony: ALL

