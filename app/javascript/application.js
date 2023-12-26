// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'flowbite';
import "flowbite/dist/flowbite.turbo.js";
import 'flowbite-datepicker';
import 'flowbite/dist/datepicker.turbo.js';
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false