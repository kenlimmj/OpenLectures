# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg|hbs|handlebars))).*}) { |m| "/assets/#{m[3]}" }

  watch(%r{^(public/|app/assets).+\.(css|js|html)$})
  watch(%r{^(app/assets/.+\.css)\.s[ac]ss$}) { |m| m[1] }
  watch(%r{^(app/assets/.+\.css)\.styl$}) { |m| m[1] }
  watch(%r{^(app/assets/.+\.js)\.coffee$}) { |m| m[1] }
  watch(%r{^config/locales/.+\.yml$})
end

guard :minitest do
  watch(%r{^test/(.*)\/?test_(.*)\.rb})
  watch(%r{^lib/(.*/)?([^/]+)\.rb})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r{^test/test_helper\.rb})      { 'test' }

  watch(%r{^app/(.+)\.rb})                               { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^app/controllers/application_controller\.rb}) { 'test/controllers' }
  watch(%r{^app/controllers/(.+)_controller\.rb})        { |m| "test/integration/#{m[1]}_test.rb" }
  watch(%r{^app/views/(.+)_mailer/.+})                   { |m| "test/mailers/#{m[1]}_mailer_test.rb" }
  watch(%r{^lib/(.+)\.rb})                               { |m| "test/lib/#{m[1]}_test.rb" }
  watch(%r{^test/.+_test\.rb})
  watch(%r{^test/test_helper\.rb}) { 'test' }
end

guard 'rails', server: :unicorn do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end

