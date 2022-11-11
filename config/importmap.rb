# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.1.1/dist/stimulus.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "stimulus-password-visibility", to: "https://ga.jspm.io/npm:stimulus-password-visibility@2.0.0/dist/stimulus-password-visibility.es.js"
pin "stimulus-scroll-progress", to: "https://ga.jspm.io/npm:stimulus-scroll-progress@4.0.0/dist/stimulus-scroll-progress.es.js"
pin "lodash", to: "https://ga.jspm.io/npm:lodash@4.17.21/lodash.js"
pin "stimulus-character-counter", to: "https://ga.jspm.io/npm:stimulus-character-counter@4.1.0/dist/stimulus-character-counter.es.js"
