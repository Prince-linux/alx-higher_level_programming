# Web jQuery

# Learning Objectives

* How to select HTML elements with jQuery
* What are differences between `ID`, `class` and `tag name` selectors
* How to modify an HTML element style
* How to get and update an HTML element content
* How to modify the DOM
* How to make a `GET` request with jQuery Ajax
* How to make a `POST` request with jQuery Ajax
* How to listen/bind to DOM events
* How to listen/bind to user events

# Tasks

## No jQuery

Write a Javascript script that updates the text color of the HTML tag `HEADER` to red (`#FF0000`):

* You must use `document.querySelector` to select the HTML tag
* You can’t use the jQuery API

Please test with this HTML file in your browser:

**Solution:** [0-script.js](https://github.com/monoprosito/holbertonschool-higher_level_programming/blob/master/0x15-javascript-web_jquery/0-script.js)

```
$ amonkeyprogrammer@ubuntu:~/0x15$ cat 0-main.html 
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Holberton School</title>
  </head>
  <body>
    <header> 
      First HTML page
    </header>
    <footer>
      Holberton School - 2017
    </footer>
    <script type="text/javascript" src="0-script.js"></script>
  </body>
</html>
$ amonkeyprogrammer@ubuntu:~/0x15$
```

## With jQuery

Write a Javascript script that updates the text color of the HTML tag `HEADER` to red (`#FF0000`):

* You can’t use `document.querySelector` to select the HTML tag
* You must use the jQuery API

Please test with this HTML file in your browser:

