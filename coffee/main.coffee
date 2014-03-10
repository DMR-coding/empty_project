require ["test", "test2", "templates", "i18n!strings/nls/main"], (test, test2,
        templates, strings) ->
    test.exec()
    test2.exec()
    $("body").text(templates["test"].render())
    $("body").text(strings.string2)
