help: ## This help page
	@printf "${YELLOW}Usage: ${RESET}\n  make [target] \n\n${YELLOW}Targets:${RESET}\n"
	@IFS=$$'\n' ; \
	for makefile in $(MAKEFILE_LIST) ; do \
        help_lines=(`grep -h "##" $${makefile} | fgrep -v fgrep | sed -e 's/\\$$//' | grep -v 'printf'`) ; \
        if [ ! -z "$${help_lines}" ] ; then \
            FILE_BASENAME=`basename $${makefile} .make` ; \
            echo -e "  ${LIGHTPURPLE}$${FILE_BASENAME} ${RESET}" ; \
        fi ; \
        for help_line in $${help_lines[@]} ; do \
            echo $$help_line | awk -F '##' '{printf "    %-30s %s\n", $$1, $$2}' ; \
        done ; \
		if [ ! -z "$${help_lines}" ] ; then \
			echo "" ; \
		fi ; \
	done
