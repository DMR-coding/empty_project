require ["test", "test2", "templates", "i18n!strings/nls/main"], (test, test2,
        templates, strings) ->
    test.exec()
    test2.exec()
    $("body").html templates.render "test"
