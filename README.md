# Daisy-on-Rails: Ruby on Rails Starter Kit

## Introduction

Daisy-on-Rails is a Ruby on Rails starter kit designed to quickly bootstrap your new app with a modern and efficient stack. This template integrates several key technologies and tools to provide a comprehensive starting point for Rails developers.

## Technology Stack

- **Rails 7.1**: The latest version of the Ruby on Rails framework.
- **Hotwire**: An approach to building modern web applications without much JavaScript.
- **Tailwind CSS**: A utility-first CSS framework for rapid UI development.
- **DaisyUI**: A Tailwind CSS component library for styling and theming.
- **ViewComponent**: Encapsulates the rendering logic of Rails views into reusable objects.
- **Authentication**: Implemented with Authentication-zero.
- **Admin Interface**: Utilizing AVO for easy admin panel creation.
- **Propshaft**: A modern replacement for Sprockets to handle assets.
- **Standard**: Code style enforcement for Ruby and JavaScript.
- **ERB Lint**: Linter for ERB templates.
- **Livereload**: Enables live reloading of web pages as you code.

## UI Components

The template includes default UI components for quick integration:

- Navbar
- Buttons
- Links
- Modals
- Badges
- Dropdowns
- Form fields

## Theme Customization

Easily customize the theme using Daisy UI's theme settings to align with your project's branding and design preferences.

## Generators

This starter kit includes custom generators that use the built-in components, streamlining the development process.

## Goal

The primary goal of Daisy-on-Rails is to offer a starter kit that accelerates the process of getting a new Rails application up and running with a rich set of features and a modern tech stack.

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

4. **Fork the Project**
   If you prefer, you can fork the project to make your own modifications and maintain a link to the original repository.

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
