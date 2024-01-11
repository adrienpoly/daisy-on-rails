# Daisy-on-Rails: Ruby on Rails Starter Kit

## Introduction

Daisy-on-Rails is a Ruby on Rails starter kit designed to quickly bootstrap your new app with a modern and efficient stack. This template integrates several key technologies and tools to provide a comprehensive starting point for Rails developers.

## Technology Stack

- **Rails 7.1**: The latest version of the Ruby on Rails framework.
- **Hotwire**: Turbo 8 with morphing capabilities.
- **Tailwind CSS**: A utility-first CSS framework for rapid UI development.
- **DaisyUI**: A Tailwind CSS component library for styling and theming.
- **ViewComponent**: Encapsulates the rendering logic of Rails views into reusable objects.
- **Authentication**: Implemented with Authentication-zero.
- **Admin Interface**: Utilizing AVO for easy admin panel creation. (WIP)
- **Propshaft**: A modern replacement for Sprockets to handle assets.
- **Sitepress**: Static pages and blog (WIP)

## Development Tools

- **Standard**: Code style enforcement for Ruby and JavaScript.
- **ERB Lint**: Linter for ERB templates.
- **Livereload**: Enables live reloading of web pages as you code.
- **Github Actions**: Continuous integration
- **Kamal**: basic Kamal deploy script (WIP)

![Daisy on Rails template](/docs/assets/daisy-on-rails.png)

## UI Components

The template includes default UI components for quick integration:

- Navbar (WIP)
- Buttons
- Links
- Modals (WIP)
- Badges (WIP)
- Dropdowns
- Form fields (input, teaxt area)

## Custom Form Builder

```erb
<%= form_with(url: sign_in_path, class: "flex flex-col max-w-sm gap-6 w-full") do |form| %>
  <%= form.ui_email_field :email, label: false, placeholder: t("email"), required: true, autofocus: true %>
  <div class="flex flex-col gap-1">
    <%= link_to t("forgot_password"), new_identity_password_reset_path, class: "link link-primary ml-auto" %>
    <%= form.ui_password_field :password, label: false, placeholder: t("password"), required: true, autocomplete: "current-password" %>
  </div>
  <%= form.ui_submit "Se connecter", class: "mt-6", id: :sign_in %>
<% end %>
```

![sign in form](/docs/assets/sign-in-form.png)

## Theme Customization

Easily customize the theme using Daisy UI's theme settings to align with your project's branding and design preferences.

## Generators

This starter kit includes custom generators that use the built-in components, streamlining the development process.

## Goal

The primary goal of Daisy-on-Rails is to offer a starter kit that accelerates the process of getting a new Rails application up and running with a modern tech stack. It will remain a modest template withthe basics.
for more feature rich template check out [Jumpstart](https://jumpstartrails.com/), [Bullet Train](https://bullettrain.co/) or [Business Class](https://businessclasskit.com/)

## Usage

To use this template for your project, follow these steps:

1. **Clone the Repository**

   ```sh
   git clone git@github.com:adrienpoly/daisy-on-rails.git myapp
   cd myapp
   ```

2. **Rename the Origin Remote**

   ```sh
   git remote rename origin daisy-on-rails
   ```

3. **Add Your Repository**

   ```sh
   git remote add origin git@github.com:your-account/your-repo.git
   # Replace with your new Git repository URL
   ```

4. **Rename the Application**

   Look for DaisyOnRails and daisy_on_rails and replace with your app name (e.g. Myapp)

## Initial Setup

Run `bin/setup` to install Ruby and JavaScript dependencies and setup your database.

```bash
bin/setup
```

## Running the Application

To run the application, use the `bin/dev` script.

```bash
bin/dev
```

## Merging Updates

To merge changes, merge from the `daisy-on-rails` remote.

```bash
git fetch daisy-on-rails
git merge daisy-on-rails/main
```

## License

Daisy-on-Rails is released under the [MIT License](https://opensource.org/licenses/MIT).

## Contributing

Bug reports and pull requests are welcome on GitHub at [github.com/adrienpoly/daisy-on-rails](https://github.com/adrienpoly/daisy-on-rails)
