# URL Shortener

URL Shortener is basically for short url. And after 1 month shorted URL will expire.

# Technologies
  - Rails
  - PostGres  
  
Project revisions are managed in **url_shortener** repository on private server with [GIT]( https://github.com/sumitkumarpoint/url_shortener.git ).

### Installation


URL Shortener requires [Ruby](https://www.ruby-lang.org/en/documentation/installation/) v2.6.1  and Rails 6.0.3.2 to run.


Clone the git repository and install packages.
```sh
$ git clone https://github.com/sumitkumarpoint/url_shortener.git
$ cd url_shotener
$ bundle install
```
Setup database.
```sh
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails s
```
