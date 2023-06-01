<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Metrics ](#-metrics-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#live-demo)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ ](#-faq-)
  - [📝 License ](#-license-)

# 📖 Budget app website <a name="about-project"></a>

Mobile web **Budget** application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## Entity Relationship Diagram

![Entity Relationship Diagram](./repo_images/erd_budget_app.png)

## Project views

Splash screen

![Splash screen](./repo_images/splash_screen.png)

Sign up page

![Sign up page](./repo_images/sign_up_page.png)

Log in page

![Log in page](./repo_images/log_in_page.png)

Home page

![Home page](./repo_images/categories_page.png)

Transactions page

![Transactions page](./repo_images/transactions_page.png)

Add a new category page

![Add a new category page](./repo_images/new_category_page.png)

Add a new transaction page

![Add a new transaction page](./repo_images/new_transaction_page.png)

## Tests running

Rspec tests

![Rspec test](./repo_images/rspec_tests_no_failures.png)

Capybara tests

![Capybara tests](./repo_images/capybara_tests_no_failures.png)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/index.html">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/docs/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **All data is preserved in PostgreSQL**
- **Sign in and Sign up with devise**
- **Manage authorization with CanCanCan**
- **Display all and a single category**
- **Create categories**
- **Display all and a single transaction**
- **Inputs validations in models**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

Video walkthrough of the project:
[https://www.loom.com/share/5288eca2a96e4318b15e30b9a5da4107](https://www.loom.com/share/5288eca2a96e4318b15e30b9a5da4107)

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Git SCM
- Ruby installed
- Rails installed
- PostgreSQL and SQL installed

And in case you want to run capybara tests:

- Chromedriver
- WSL activated
- Ubuntu or any other linux distro shell installed

### Setup

Clone this repository to your desired folder:

```
git clone https://github.com/jorgeabrahan/budget.git
```

Or download the ZIP folder.

### Install

Once you've cloned the repository simply run:

```
bundle install
rails db:create
rails db:migrate
```

If it doesn't work because the server got disconnected you might need to change the credentials for your own psql credentials in the database.yml file.

### Usage

To run the project, if you are on the blog folder path on your terminal you can execute the following command:

```
rails server
```

### Run tests

To start tests run:

```
rspec spec # for rspec tests
rails test:system # for capybara tests
```

### Deployment

- Render
  [https://budget-u0h2.onrender.com](https://budget-u0h2.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Jorge Abrahan**

- GitHub: [@jorgeabrahan](https://github.com/jorgeabrahan)
- LinkedIn: [Jorge Abrahan](https://www.linkedin.com/in/jorge-siguenza/?locale=en_US)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Deploy application in Render**
- [ ] **Improve cyclomathic complexity in some methods**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project you can just cheer me up with a comment 🙂!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Design guidelines for the project: [https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=)

Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

Credit to the author following the [Creative Commons license of the design](https://creativecommons.org/licenses/by-nc/4.0/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>

- **What is this project main purpose?**

  - To practice working with Ruby on Rails, PostgreSQL and interpret entity relationship diagrams, UML class diagrams and build UIs in ruby based on design guidelines.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
