# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "rich_text"

pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin "pdf2image", to: "https://ga.jspm.io/npm:pdf2image@1.2.3/index.js"
pin "child_process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.24/nodelibs/browser/child_process.js"
pin "util", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.24/nodelibs/browser/util.js"
pin "vm", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0-beta.24/nodelibs/browser/vm.js"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "md5", to: "https://ga.jspm.io/npm:md5@2.3.0/md5.js"
pin "charenc", to: "https://ga.jspm.io/npm:charenc@0.0.2/charenc.js"
pin "crypt", to: "https://ga.jspm.io/npm:crypt@0.0.2/crypt.js"
pin "is-buffer", to: "https://ga.jspm.io/npm:is-buffer@1.1.6/index.js"
pin "vue", to: "https://ga.jspm.io/npm:vue@3.2.36/dist/vue.runtime.esm-bundler.js"
pin "@vue/reactivity", to: "https://ga.jspm.io/npm:@vue/reactivity@3.2.36/dist/reactivity.esm-bundler.js"
pin "@vue/runtime-core", to: "https://ga.jspm.io/npm:@vue/runtime-core@3.2.36/dist/runtime-core.esm-bundler.js"
pin "@vue/runtime-dom", to: "https://ga.jspm.io/npm:@vue/runtime-dom@3.2.36/dist/runtime-dom.esm-bundler.js"
pin "@vue/shared", to: "https://ga.jspm.io/npm:@vue/shared@3.2.36/dist/shared.esm-bundler.js"
