# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
# pin "flowbite", to: "https://ga.jspm.io/npm:flowbite@2.2.1/lib/esm/index.js"
pin "flowbite-datepicker", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/datepicker.turbo.min.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.turbo.min.js"
