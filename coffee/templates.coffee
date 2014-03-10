define ["templates_base", "i18n!strings/nls/main"], (templates_base, strings) ->
    render : (name, options, partials) ->
        templates_base[name].render(
            _.extend strings: strings, options
            partials
        )
